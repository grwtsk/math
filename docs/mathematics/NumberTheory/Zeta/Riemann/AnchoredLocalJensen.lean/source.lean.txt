/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount
import GRWTSK.NumberTheory.Zeta.Riemann.RightHalfPlaneModulus

set_option autoImplicit false

/-!
# Jensen band counts with derived uniform anchor floors

Both maintained centers have Re=2. Their 1/4 floors are supplied by the actual
zeta series, so no center floor is an application premise below. All-point
outer-circle ceilings remain explicit. Neither these conditional counts nor
the finite principal sum bound controls the full logarithmic derivative.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.AnchoredLocalJensen

open Metric
open scoped BigOperators
open CanonicalZeroDivisor SeparatedContourHeights LocalJensenCount RightHalfPlaneModulus

noncomputable section

/-- The floor has no lower-stage restriction; disk analyticity still has one. -/
theorem upper_center_floor (N : ℕ) : (1 / 4 : ℝ) ≤ ‖riemannZeta (upperCenter N)‖ :=
  one_quarter_le_norm_zeta _ (by rw [upperCenter_re])

theorem lower_center_floor (N : ℕ) : (1 / 4 : ℝ) ≤ ‖riemannZeta (lowerCenter N)‖ :=
  one_quarter_le_norm_zeta _ (by rw [lowerCenter_re])

/-- A common outer-circle ceiling is the sole remaining modulus supplier. -/
theorem bandMass_le_of_circle_bound (N : ℕ) (hN : 2 ≤ N) (M : ℝ) (hM : 1 ≤ M)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M) :
    (bandMass N : ℝ) ≤ 2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ) := by
  have hb := bandMass_le_of_modulus_bounds N hN M (1 / 4) hM (by norm_num)
    (upper_center_floor N) (lower_center_floor N) hp hm
  have he : M / (1 / 4 : ℝ) = 4 * M := by ring
  simpa only [he] using hb

/-- Logarithmic exponents no longer include an unproved center-floor exponent. -/
theorem bandMass_le_of_exp_circle_bound (N : ℕ) (hN : 2 ≤ N) (A : ℝ) (hA : 0 ≤ A)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A) :
    (bandMass N : ℝ) ≤ 2 * (A + Real.log 4) / Real.log (6 / 5 : ℝ) := by
  have hb := bandMass_le_of_circle_bound N hN (Real.exp A)
    (by simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hA) hp hm
  rw [Real.log_mul (by norm_num) (Real.exp_ne_zero A), Real.log_exp] at hb
  simpa only [add_comm] using hb

/-- Conditional on all-point polynomial circle growth; the growth premise is not proved here. -/
theorem bandMass_le_of_polynomial_circle_bound (N : ℕ) (hN : 2 ≤ N)
    (C : ℝ) (hC : 1 ≤ C) (d : ℕ)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ),
      ‖riemannZeta z‖ ≤ C * ((N : ℝ) + 2) ^ d)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ),
      ‖riemannZeta z‖ ≤ C * ((N : ℝ) + 2) ^ d) :
    (bandMass N : ℝ) ≤
      2 * (Real.log (4 * C) + (d : ℝ) * Real.log ((N : ℝ) + 2)) / Real.log (6 / 5 : ℝ) := by
  have hC0 : 0 < C := lt_of_lt_of_le zero_lt_one hC
  have hbase : (1 : ℝ) ≤ (N : ℝ) + 2 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hpow : (1 : ℝ) ≤ ((N : ℝ) + 2) ^ d := one_le_pow₀ hbase
  have hM : (1 : ℝ) ≤ C * ((N : ℝ) + 2) ^ d := by
    simpa only [one_mul] using mul_le_mul hC hpow zero_le_one hC0.le
  have hb := bandMass_le_of_circle_bound N hN (C * ((N : ℝ) + 2) ^ d) hM hp hm
  have he : Real.log (4 * (C * ((N : ℝ) + 2) ^ d)) =
      Real.log (4 * C) + (d : ℝ) * Real.log ((N : ℝ) + 2) := by
    rw [← mul_assoc, Real.log_mul (by positivity) (by positivity), Real.log_pow]
  simpa only [he] using hb

/-- The maintained selection receives the count estimate without a new zero family. -/
theorem clearance_of_circle_bound (N : ℕ) (hN : 2 ≤ N) (M : ℝ) (hM : 1 ≤ M)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M) :
    1 / (4 * (2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ) + 1)) ≤ heightClearance N :=
  clearance_of_mass_bound N _ (bandMass_le_of_circle_bound N hN M hM hp hm)

/-- This is the finite local principal sum, not the full logarithmic derivative. -/
theorem local_principal_of_circle_bound (N : ℕ) (hN : 2 ≤ N) (M : ℝ) (hM : 1 ≤ M)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (σ y : ℝ) (hy : |y| = separatedHeight N) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤
        4 * (2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ) + 1) *
          (2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ)) :=
  local_principal_of_mass_bound N σ y _ hy (bandMass_le_of_circle_bound N hN M hM hp hm)

end
end GRWTSK.RiemannHypothesis.AnchoredLocalJensen
