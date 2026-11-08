/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Off-diagonal signs of the pole-inclusive Weil form

The source is Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, equations (3.7), (3.10), (3.11), (3.19).
In logarithmic coordinates, away from the diagonal and prime-power shifts,
the FULL form has kernel

  B(r) = exp(r/2) + exp(-r/2) - exp(r/2)/(exp(r)-exp(-r)).

The pole terms are retained. This is not the pole-cancelled test space.
Writing q = exp(r/2) gives a rational function whose sign is the sign of
p(q^2), p(x) = x^3-x-1. The unique root rho > 1 therefore gives the
ordinary positivity-preserving-semigroup threshold 2 log(lambda) = log(rho).

The accompanying analytical note proves that threshold, a small-window
simple-even ground-state theorem, and an obstruction to smooth pointwise
phase gauges. THIS FILE formalizes only the scalar identities, sign witnesses,
real sign-gauge obstruction and two-coordinate modulus obstruction used there.
It does not formalize the closed Weil form, its operator, semigroup, root
existence, spectral theorem, RH, or Dirichlet GRH.

Verification at publication: elaboration NOT_RUN; kernel check NOT_RUN;
transitive axiom audit NOT_RUN. No compiler was available. These are candidate
proof scripts, not a claim of checked Lean. No dependency pins or root imports
are changed. Novelty is not established by these declarations.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OffDiagonal

/-- The sign polynomial after the substitution x = exp(r). -/
def signPolynomial (x : ℝ) : ℝ := x ^ 3 - x - 1

/-- The continuous off-diagonal kernel, with q = exp(r/2). -/
def scaleKernel (q : ℝ) : ℝ :=
  q + q⁻¹ - q / (q ^ 2 - (q⁻¹) ^ 2)

/-- The pole-inclusive kernel at positive logarithmic separation r. -/
def logKernel (r : ℝ) : ℝ :=
  Real.exp (r / 2) + Real.exp (-r / 2) -
    Real.exp (r / 2) / (Real.exp r - Real.exp (-r))

theorem logKernel_eq_scaleKernel (r : ℝ) :
    logKernel r = scaleKernel (Real.exp (r / 2)) := by
  have hhalf : Real.exp r = Real.exp (r / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1 <;> ring
  have hneg : Real.exp (-r / 2) = (Real.exp (r / 2))⁻¹ := by
    rw [show -r / 2 = -(r / 2) by ring, Real.exp_neg]
  have hnegfull : Real.exp (-r) = ((Real.exp (r / 2))⁻¹) ^ 2 := by
    rw [Real.exp_neg, hhalf, inv_pow]
  unfold logKernel scaleKernel
  rw [hneg, hhalf, hnegfull]

theorem signPolynomial_sub (x y : ℝ) :
    signPolynomial y - signPolynomial x =
      (y - x) * (y ^ 2 + x * y + x ^ 2 - 1) := by
  unfold signPolynomial
  ring

/-- Strict increase on [1,infinity), used analytically to isolate the threshold. -/
theorem signPolynomial_lt {x y : ℝ} (hx : 1 ≤ x) (hxy : x < y) :
    signPolynomial x < signPolynomial y := by
  have hx0 : 0 ≤ x := le_trans zero_le_one hx
  have hy : 1 ≤ y := le_trans hx hxy.le
  have hy0 : 0 ≤ y := le_trans zero_le_one hy
  have hx2 : 1 ≤ x ^ 2 := by nlinarith [sq_nonneg (x - 1)]
  have hy2 : 1 ≤ y ^ 2 := by nlinarith [sq_nonneg (y - 1)]
  have hprod : 0 ≤ x * y := mul_nonneg hx0 hy0
  have hfactor : 0 < y ^ 2 + x * y + x ^ 2 - 1 := by linarith
  have h := mul_pos (sub_pos.mpr hxy) hfactor
  rw [← signPolynomial_sub x y] at h
  exact sub_pos.mp h

theorem scaleDenominator_pos {q : ℝ} (hq : 1 < q) :
    0 < q * (q ^ 4 - 1) := by
  have hq0 : 0 < q := lt_trans zero_lt_one hq
  have hq2 : 1 < q ^ 2 := by nlinarith [sq_nonneg (q - 1)]
  have hq4 : 1 < q ^ 4 := by nlinarith [sq_nonneg (q ^ 2 - 1)]
  exact mul_pos hq0 (sub_pos.mpr hq4)

/-- Exact normalization, not an identification with any determinant or zeta factor. -/
theorem scaleKernel_normalForm {q : ℝ} (hq : 1 < q) :
    scaleKernel q = signPolynomial (q ^ 2) / (q * (q ^ 4 - 1)) := by
  have hq0 : q ≠ 0 := ne_of_gt (lt_trans zero_lt_one hq)
  have hq4 : q ^ 4 - 1 ≠ 0 := by
    have hpos := scaleDenominator_pos hq
    intro hzero
    rw [hzero, mul_zero] at hpos
    exact (lt_irrefl 0) hpos
  have hden : q ^ 2 - (q⁻¹) ^ 2 = (q ^ 4 - 1) / q ^ 2 := by
    field_simp [hq0] <;> ring
  unfold scaleKernel signPolynomial
  rw [hden]
  field_simp [hq0, hq4] <;> ring

theorem scaleKernel_neg {q : ℝ} (hq : 1 < q)
    (hp : signPolynomial (q ^ 2) < 0) : scaleKernel q < 0 := by
  rw [scaleKernel_normalForm hq]
  exact div_neg_of_neg_of_pos hp (scaleDenominator_pos hq)

theorem scaleKernel_pos {q : ℝ} (hq : 1 < q)
    (hp : 0 < signPolynomial (q ^ 2)) : 0 < scaleKernel q := by
  rw [scaleKernel_normalForm hq]
  exact div_pos hp (scaleDenominator_pos hq)

theorem polynomial_bracket :
    signPolynomial (5 / 4) < 0 ∧ 0 < signPolynomial (3 / 2) := by
  norm_num [signPolynomial]

/-- An exact negative edge at separation a = 2 log(9/8). -/
theorem scaleKernel_nine_eighths :
    scaleKernel (9 / 8) = -(62479 / 177480 : ℝ) := by
  norm_num [scaleKernel]

/-- An exact positive edge at twice that separation. -/
theorem scaleKernel_eightyOne_sixtyFourths :
    scaleKernel (81 / 64) = (103634745569 / 136181113920 : ℝ) := by
  norm_num [scaleKernel]

theorem frustrated_edge_signs :
    scaleKernel (9 / 8) < 0 ∧ 0 < scaleKernel (81 / 64) := by
  rw [scaleKernel_nine_eighths, scaleKernel_eightyOne_sixtyFourths]
  norm_num

/-- Three vertices with two negative edges and one positive edge have positive cycle product. -/
theorem frustrated_cycle_product_pos :
    0 < scaleKernel (9 / 8) * scaleKernel (9 / 8) * scaleKernel (81 / 64) := by
  exact mul_pos (mul_pos_of_neg_of_neg frustrated_edge_signs.1
    frustrated_edge_signs.1) frustrated_edge_signs.2

/-- The real diagonal-gauge cycle identity; the analytical note also treats smooth complex phases. -/
theorem gauge_cycle_identity (a b c u v w : ℝ) :
    (u * v * a) * (v * w * b) * (w * u * c) =
      (u * v * w) ^ 2 * (a * b * c) := by
  ring

/-- A positive cycle product cannot be made nonpositive on every edge by nonzero real gauges. -/
theorem no_real_sign_gauge {a b c u v w : ℝ}
    (hcycle : 0 < a * b * c) (hu : u ≠ 0) (hv : v ≠ 0) (hw : w ≠ 0) :
    ¬ (u * v * a ≤ 0 ∧ v * w * b ≤ 0 ∧ w * u * c ≤ 0) := by
  intro h
  have hsq : 0 < (u * v * w) ^ 2 :=
    sq_pos_of_ne_zero (mul_ne_zero (mul_ne_zero hu hv) hw)
  have hpos : 0 < (u * v * a) * (v * w * b) * (w * u * c) := by
    rw [gauge_cycle_identity]
    exact mul_pos hsq hcycle
  have hnonpos : (u * v * a) * (v * w * b) * (w * u * c) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (mul_nonneg_of_nonpos_of_nonpos h.1 h.2.1) h.2.2
  exact (not_lt_of_ge hnonpos) hpos

/-- Arbitrary diagonal terms cannot repair a positive cross term's modulus defect. -/
def twoCoordinateForm (a b c x y : ℝ) : ℝ :=
  a * x ^ 2 + 2 * b * x * y + c * y ^ 2

theorem modulus_defect (a b c : ℝ) :
    twoCoordinateForm a b c 1 1 - twoCoordinateForm a b c 1 (-1) = 4 * b := by
  unfold twoCoordinateForm
  ring

theorem positive_cross_violates_modulus {a b c : ℝ} (hb : 0 < b) :
    twoCoordinateForm a b c 1 (-1) < twoCoordinateForm a b c 1 1 := by
  have h := modulus_defect a b c
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OffDiagonal
