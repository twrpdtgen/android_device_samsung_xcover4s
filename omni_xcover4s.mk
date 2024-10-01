#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from xcover4s device
$(call inherit-product, device/samsung/xcover4s/device.mk)

PRODUCT_DEVICE := xcover4s
PRODUCT_NAME := omni_xcover4s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G398FN
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xcover4sxx-user 11 RP1A.200720.012 G398FNXXSJCWF1 release-keys"

BUILD_FINGERPRINT := samsung/xcover4sxx/xcover4s:11/RP1A.200720.012/G398FNXXSJCWF1:user/release-keys
