/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleGrowingPrimeBandIdentity
import Mathlib

/-!
# Quantitative tolerance for negative complete Liouville prime-band covariance

The scalar theorem below has the *same complete covariance* and residual
observation as the growing-band source. It establishes an analytic implication,
NOT any arithmetic hypothesis for actual Liouville coefficients. In particular,
the Cauchy--Schwarz premise and negative-covariance allowance are explicit.

This is an additive source proof candidate, not a compiled/kernal-audited fact.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvillePrimeBandCovarianceTolerance

/-- Quantitative transfer, with no sign-by-sign or per-prime absolute value
replacement of the actual complete signed covariance. The coefficient W
is strictly positive and the tolerated negative fraction eta is strictly
below one. The bound is exactly (1-eta)^(-2). -/
theorem scalar_negative_covariance_transfer
    (W H C R B η : ℝ)
    (hW : 0 < W) (hH : 0 ≤ H) (hB : 0 ≤ B)
    (hη : 0 ≤ η) (hηlt : η < 1)
    (hcov : -(η * W * H) ≤ C)
    (hCS : (W * H + C) ^ 2 ≤ H * R)
    (hres : R ≤ W ^ 2 * B) :
    H ≤ B / (1 - η) ^ 2 := by
  have hgap : 0 < 1 - η := sub_pos.mpr hηlt
  by_cases hzero : H = 0
  · subst H
    exact div_nonneg hB (le_of_lt (pow_pos hgap 2))
  · have hpos : 0 < H := lt_of_le_of_ne hH (Ne.symm hzero)
    let a : ℝ := (1 - η) * W
    have ha : 0 < a := mul_pos hgap hW
    have hnonneg : 0 ≤ a * H := mul_nonneg (le_of_lt ha) hH
    have hlow : a * H ≤ W * H + C := by
      dsimp [a]
      nlinarith [hcov]
    have hsq : (a * H) ^ 2 ≤ (W * H + C) ^ 2 := by
      have hm : 0 ≤ ((W * H + C) - a * H) *
          ((W * H + C) + a * H) :=
        mul_nonneg (sub_nonneg.mpr hlow)
          (add_nonneg (le_trans hnonneg hlow) hnonneg)
      nlinarith [hm]
    have hmain : (a * H) ^ 2 ≤ H * (W ^ 2 * B) :=
      le_trans hsq (le_trans hCS (mul_le_mul_of_nonneg_left hres hH))
    have hcancel : a ^ 2 * H ≤ W ^ 2 * B := by
      apply (mul_le_mul_right hpos).mp
      nlinarith [hmain]
    have hnormalized : (1 - η) ^ 2 * H ≤ B := by
      apply (mul_le_mul_right (pow_pos hW 2)).mp
      dsimp [a] at hcancel
      nlinarith [hcancel]
    apply (le_div_iff₀ (pow_pos hgap 2)).mpr
    nlinarith [hnormalized]

end GRWTSK.NumberTheory.LiouvillePrimeBandCovarianceTolerance
