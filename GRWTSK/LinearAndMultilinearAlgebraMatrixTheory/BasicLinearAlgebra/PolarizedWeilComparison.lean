/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ComplexPolarizedModes
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurResidualEnclosure

/-!
# Signed arithmetic forms and the two-projection trace defect

Connes arXiv:2602.04022v1, (22), uses I-P-Q, where P,Q are the time/frequency
projections. This is NOT the nonnegative concentration operator PQP. On a
principal-angle block with overlap c in (0,1], the former has a negative
mode of eigenvalue -c; the latter has retained eigenvalue c^2. High transmission
therefore does not make the signed trace defect positive.

The exact rank-one calculation below reuses the existing Jones projectors.
For an arbitrary real bilinear form, including the real part of the actual
Hermitian Weil form on its form domain, constant orthogonal channel mixing
preserves the complete signed form. That equality transfers a proved lower
bound but cannot create one. No unbounded operator or spectral correspondence
is fabricated by these finite algebra theorems. A general projection also keeps
both mixed terms; Euclidean orthogonality does not imply Weil orthogonality.

Primary argument: linearity, expansion, and c^2+s^2=1. Independent hostile input:
the positive-overlap mode of I-P-Q, and a negative signed source under exact
channel mixing. Actual Weil prime/pole/boundary identification is analytic,
not formalized by this generic bilinear carrier. The existing Schur completion
remains the return mechanism when the arithmetic mixed block is nonzero.

Local baseline 83dcff3ccda15b1a3961140e8720c4eceddbddc5.
AI-assisted manual source. Standard linear algebra; novelty unassessed.
Elaboration, fresh kernel checking, axiom audit, independent review: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.LinearAlgebra.PolarizedWeil

section SignedForm
variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- Both mixed terms are compulsory unless source-specific orthogonality is proved. -/
theorem split_form (b : LinearMap.BilinForm ℝ V)
    (P : V →ₗ[ℝ] V) (x : V) :
    b x x = b (P x) (P x) + b (P x) ((LinearMap.id - P) x) +
      b ((LinearMap.id - P) x) (P x) +
      b ((LinearMap.id - P) x) ((LinearMap.id - P) x) := by
  have hs : P x + (LinearMap.id - P) x = x := by simp
  calc
    b x x = b (P x + (LinearMap.id - P) x) (P x + (LinearMap.id - P) x) := by rw [hs]
    _ = _ := by
      simp only [LinearMap.BilinForm.add_left, LinearMap.BilinForm.add_right]
      ring

/-- A complete constant polar routing preserves an arbitrary signed source form. -/
theorem orthogonal_mix_return (b : LinearMap.BilinForm ℝ V)
    (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (x y : V) :
    b (c • x + s • y) (c • x + s • y) +
      b ((-s) • x + c • y) ((-s) • x + c • y) = b x x + b y y := by
  simp only [map_add, map_smul, LinearMap.add_apply, LinearMap.smul_apply, smul_eq_mul]
  linear_combination (b x x + b y y) * h

/-- A scalar auxiliary polarization cannot turn a negative arithmetic vector positive. -/
theorem negative_source_survives (b : LinearMap.BilinForm ℝ V)
    (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) (x : V) (negative : b x x < 0) :
    b (c • x) (c • x) + b ((-s) • x) ((-s) • x) < 0 := by
  have he := orthogonal_mix_return b c s h x 0
  simp only [smul_zero, add_zero, map_zero, LinearMap.zero_apply] at he
  rw [he]
  exact negative

/-- All-channel positivity is exactly the original positivity, not a weaker test. -/
theorem root_positive_iff_two_channels (b : LinearMap.BilinForm ℝ V) :
    (∀ x, 0 ≤ b x x) ↔ (∀ x y, 0 ≤ b x x + b y y) := by
  constructor
  · intro h x y
    exact add_nonneg (h x) (h y)
  · intro h x
    simpa using h x 0

end SignedForm

open GRWTSK.LinearAlgebra.PolarizedModes

/-- Real part of the finite anti-linear-first pairing; not the Pi supremum norm. -/
def pairing (z w : Jones) : ℝ := ∑ i, (conj (z i) * w i).re

theorem pairing_self (z : Jones) : pairing z z = energy z := by
  simp [pairing, energy, Fin.sum_univ_two, Complex.normSq_apply,
    Complex.mul_re, Complex.mul_im]

theorem pairing_real_smul (a : ℝ) (z w : Jones) :
    pairing z ((a : ℂ) • w) = a * pairing z w := by
  simp [pairing, Fin.sum_univ_two, Pi.smul_apply, smul_eq_mul,
    Complex.mul_re, Complex.mul_im]
  ring

/-- The operator in the signed semilocal trace formula, not its positive compression. -/
def traceDefect (c s : ℝ) : Jones →ₗ[ℂ] Jones :=
  LinearMap.id - project 1 0 - project c s

/-- The sum of the two unit axes is the negative-overlap mode. -/
theorem traceDefect_negative_mode (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    traceDefect c s (axis (1 + c) s) =
      ((-c : ℝ) : ℂ) • axis (1 + c) s := by
  have hc : (c : ℂ) ^ 2 + (s : ℂ) ^ 2 = 1 := by exact_mod_cast h
  ext i
  fin_cases i
  · simp [traceDefect, project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination -(c : ℂ) * hc
  · simp [traceDefect, project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination -(s : ℂ) * hc

/-- The difference of the two axes is the positive-overlap mode when nonzero. -/
theorem traceDefect_positive_mode (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    traceDefect c s (axis (1 - c) (-s)) =
      (c : ℂ) • axis (1 - c) (-s) := by
  have hc : (c : ℂ) ^ 2 + (s : ℂ) ^ 2 = 1 := by exact_mod_cast h
  ext i
  fin_cases i
  · simp [traceDefect, project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination (c : ℂ) * hc
  · simp [traceDefect, project, amplitude, axis, Pi.smul_apply, smul_eq_mul]
    linear_combination (s : ℂ) * hc

theorem traceDefect_negative_value (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    pairing (axis (1 + c) s) (traceDefect c s (axis (1 + c) s)) =
      -2 * c * (1 + c) := by
  rw [traceDefect_negative_mode c s h, pairing_real_smul, pairing_self, energy_axis]
  linear_combination -c * h

theorem traceDefect_not_positive (c s : ℝ)
    (h : c ^ 2 + s ^ 2 = 1) (positive : 0 < c) :
    ¬ (∀ z : Jones, 0 ≤ pairing z (traceDefect c s z)) := by
  intro hp
  have hv := hp (axis (1 + c) s)
  rw [traceDefect_negative_value c s h] at hv
  nlinarith [sq_nonneg c]

/-- The same two projections have positive transmission c^2 on the prepared axis. -/
theorem overlap_transmission (c s : ℝ) (h : c ^ 2 + s ^ 2 = 1) :
    energy (project c s (axis 1 0)) = c ^ 2 := by
  have ha : amplitude c s (axis 1 0) = (c : ℂ) := by simp [amplitude, axis]
  rw [project_apply, ha, energy_smul, energy_axis, h, mul_one, Complex.normSq_ofReal]
  ring

/-- Exact rational hostile fixture: high overlap and a negative trace-form direction coexist. -/
theorem rational_overlap_control :
    energy (project (3 / 5) (4 / 5) (axis 1 0)) = (9 / 25 : ℝ) ∧
      pairing (axis (8 / 5) (4 / 5))
        (traceDefect (3 / 5) (4 / 5) (axis (8 / 5) (4 / 5))) = (-48 / 25 : ℝ) := by
  constructor
  · rw [overlap_transmission (3 / 5) (4 / 5) (by norm_num)]
    norm_num
  · convert traceDefect_negative_value (3 / 5) (4 / 5) (by norm_num) using 1 <;> norm_num

/-- Nonzero vector norm alone cannot exclude a vanishing linear readout. -/
theorem root_norm_does_not_exclude_projected_zero :
    energy (axis 1 1) = 2 ∧ amplitude 1 (-1) (axis 1 1) = 0 := by
  norm_num [energy_axis, amplitude, axis]

end GRWTSK.LinearAlgebra.PolarizedWeil
