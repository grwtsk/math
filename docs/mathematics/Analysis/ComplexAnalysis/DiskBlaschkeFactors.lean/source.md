# Complete source: GRWTSK.Analysis.Complex.DiskBlaschkeFactors

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8720ed03876e35ab5cb829948fbb0881db8a642a` · SHA-256 `4f83a2da7eb15267a5fea70122dd614cced65e4241be930bdf972645f23a149b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Disk-normalized zero factors and their full logarithmic derivatives

The boundary normalization is essential: removing raw polynomial factors does
not preserve a boundary modulus ceiling. This file retains the extra analytic
term in the logarithmic derivative. It does not construct a zero-removed zeta
quotient or an analytic logarithm of it.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.DiskBlaschkeFactors

open scoped ComplexConjugate

noncomputable section

/-- A radius-R Blaschke factor, with no arbitrary unimodular phase. -/
def factor (R : ℝ) (a z : ℂ) : ℂ :=
  (R : ℂ) * (z - a) / ((R : ℂ) ^ 2 - conj a * z)

/-- The exact norm-square identity simultaneously fixes the boundary normalization. -/
theorem denominator_norm_identity (R : ℝ) (a z : ℂ) :
    ‖(R : ℂ) ^ 2 - conj a * z‖ ^ 2 - R ^ 2 * ‖z - a‖ ^ 2 =
      (R ^ 2 - ‖a‖ ^ 2) * (R ^ 2 - ‖z‖ ^ 2) := by
  simp only [Complex.sq_norm]
  simp only [Complex.normSq_apply, pow_two,
    Complex.sub_re, Complex.sub_im, Complex.mul_re, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.conj_re, Complex.conj_im]
  ring

/-- The reflected pole is outside the closed disk when the zero is strictly inside. -/
theorem denominator_ne_zero (R : ℝ) (hR : 0 < R) (a z : ℂ)
    (ha : ‖a‖ < R) (hz : ‖z‖ ≤ R) : (R : ℂ) ^ 2 - conj a * z ≠ 0 := by
  have hp : ‖a‖ * ‖z‖ < R ^ 2 := by
    calc
      _ ≤ ‖a‖ * R := mul_le_mul_of_nonneg_left hz (norm_nonneg _)
      _ < _ := by nlinarith
  intro he
  have hn := congrArg norm (sub_eq_zero.mp he)
  simp only [norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hR,
    norm_mul, Complex.norm_conj] at hn
  linarith

theorem differentiableAt_factor (R : ℝ) (a z : ℂ)
    (hd : (R : ℂ) ^ 2 - conj a * z ≠ 0) :
    DifferentiableAt ℂ (factor R a) z := by
  unfold factor
  fun_prop (disch := assumption)

theorem factor_ne_zero (R : ℝ) (hR : R ≠ 0) (a z : ℂ)
    (ha : z ≠ a) (hd : (R : ℂ) ^ 2 - conj a * z ≠ 0) : factor R a z ≠ 0 :=
  div_ne_zero (mul_ne_zero (by exact_mod_cast hR) (sub_ne_zero.mpr ha)) hd

/-- Unit boundary modulus is proved, not postulated as metadata. -/
theorem norm_factor_on_boundary (R : ℝ) (hR : 0 < R) (a z : ℂ)
    (ha : ‖a‖ < R) (hz : ‖z‖ = R) : ‖factor R a z‖ = 1 := by
  have hd := denominator_ne_zero R hR a z ha hz.le
  have hn := denominator_norm_identity R a z
  rw [hz] at hn
  have he : ‖(R : ℂ) ^ 2 - conj a * z‖ = R * ‖z - a‖ := by
    nlinarith [norm_nonneg ((R : ℂ) ^ 2 - conj a * z),
      norm_nonneg (z - a), mul_nonneg hR.le (norm_nonneg (z - a))]
  rw [factor, norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos hR, ← he]
  exact div_self (norm_ne_zero_iff.mpr hd)

/-- Interior factors do not increase the center modulus. -/
theorem factor_at_zero (R : ℝ) (hR : R ≠ 0) (a : ℂ) :
    factor R a 0 = -a / (R : ℂ) := by
  unfold factor
  have hr : (R : ℂ) ≠ 0 := by exact_mod_cast hR
  field_simp [hr]; ring

/-- Away from its zero the factor has BOTH a principal and an analytic term. -/
theorem logDeriv_factor (R : ℝ) (hR : R ≠ 0) (a z : ℂ)
    (ha : z ≠ a) (hd : (R : ℂ) ^ 2 - conj a * z ≠ 0) :
    logDeriv (factor R a) z = (z - a)⁻¹ + conj a / ((R : ℂ) ^ 2 - conj a * z) := by
  have hr : (R : ℂ) ≠ 0 := by exact_mod_cast hR
  have dn : HasDerivAt (fun w : ℂ => (R : ℂ) * (w - a)) (R : ℂ) z := by
    simpa using ((hasDerivAt_id z).sub_const a).const_mul (R : ℂ)
  have dd : HasDerivAt (fun w : ℂ => (R : ℂ) ^ 2 - conj a * w) (-conj a) z := by
    simpa using ((hasDerivAt_id z).const_mul (conj a)).const_sub ((R : ℂ) ^ 2)
  have he := logDeriv_div (f := fun w : ℂ => (R : ℂ) * (w - a)) (g := fun w : ℂ => (R : ℂ) ^ 2 - conj a * w) z (mul_ne_zero hr (sub_ne_zero.mpr ha)) hd
    dn.differentiableAt dd.differentiableAt
  change logDeriv (factor R a) z = _ at he
  rw [he, logDeriv_apply, logDeriv_apply, dn.deriv, dd.deriv]
  field_simp [hr, sub_ne_zero.mpr ha, hd]; ring

/-- Fixed nested radii leave a rational positive denominator margin. -/
theorem denominator_three_lower (a z : ℂ) (ha : ‖a‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4) :
    (45 / 16 : ℝ) ≤ ‖(3 : ℂ) ^ 2 - conj a * z‖ := by
  have hp : ‖conj a * z‖ ≤ (99 / 16 : ℝ) := by
    rw [norm_mul, Complex.norm_conj]
    nlinarith [mul_le_mul ha hz (norm_nonneg z) (by norm_num : (0 : ℝ) ≤ 11 / 4)]
  have ht := norm_sub_norm_le ((3 : ℂ) ^ 2) (conj a * z)
  norm_num only [norm_pow, Complex.norm_ofNat] at ht
  linarith

/-- The regular denominator contribution is bounded separately from the nearby pole. -/
theorem norm_regular_term_le_one (a z : ℂ) (ha : ‖a‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4) :
    ‖conj a / ((3 : ℂ) ^ 2 - conj a * z)‖ ≤ 1 := by
  have hd := denominator_three_lower a z ha hz
  rw [norm_div, Complex.norm_conj]
  exact (div_le_one (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 45 / 16) hd)).mpr
    (ha.trans ((by norm_num : (11 / 4 : ℝ) ≤ 45 / 16).trans hd))

/-- Separation is from the actual complex zero, not its rounded height record. -/
theorem norm_logDeriv_factor_le (a z : ℂ) (δ : ℝ) (hδ : 0 < δ)
    (ha : ‖a‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4) (hsep : δ ≤ ‖z - a‖) :
    ‖logDeriv (factor 3 a) z‖ ≤ 1 / δ + 1 := by
  have hza : z ≠ a := by intro he; simp [he] at hsep; linarith
  have hd : (3 : ℂ) ^ 2 - conj a * z ≠ 0 :=
    denominator_ne_zero 3 (by norm_num) a z (by linarith) (by linarith)
  rw [logDeriv_factor 3 (by norm_num) a z hza hd]
  calc
    _ ≤ ‖(z - a)⁻¹‖ + ‖conj a / ((3 : ℂ) ^ 2 - conj a * z)‖ := norm_add_le _ _
    _ ≤ 1 / δ + 1 := add_le_add
      (by simpa only [norm_inv, norm_div, norm_one, inv_eq_one_div] using
        div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1) hδ hsep)
      (norm_regular_term_le_one a z ha hz)

end
end GRWTSK.Analysis.Complex.DiskBlaschkeFactors
```
