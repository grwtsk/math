/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.HurwitzEulerSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerCoreApproximation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterApproximationBounds

/-!
# Actual Euler source identities for every modulus and character

The positive representative is proved equal in R/Z to ZMod.toAddCircle; the
zero residue uses a=1, not a singular a=0 power. Every component is the actual
Hurwitz source. Mathlib's exact finite L-function decomposition supplies the
signed complete remainder for every positive modulus and every character,
including principal and imprimitive characters.

On Re(s)>=0, |s|<=R, s!=1 the complete error is at most
 N*R*(R+1)*(R+2)/(96*(M+1)^2).
At M=((N*n)+2)^2*(k+1) this is at most 1/(96*(k+1)^2) throughout offCore n.
The old SourceComparison premise is not used. These are additive source
certificates, not strict inverse-residual or zero-free certificates.

Principal-character Hurwitz and Euler-factor routes return to the SAME actual
L-function. Their finite expressions need not coincide; both complete errors
are paid in their comparison. No finite modulus cutoff or character selection.
Primary argument: actual Hurwitz return, finite linearity, character bounds,
positive modulus scaling and explicit polynomial cutoff arithmetic.
AI-assisted source. Classical identities; no novelty claim. Compilation,
fresh kernel checking, axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Metric
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.CharacterEuler

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open EulerApproximation

variable {N : ℕ} [NeZero N]

theorem positiveShift_toAddCircle (j : ZMod N) :
    ((positiveShift j : ℝ) : UnitAddCircle) = ZMod.toAddCircle j := by
  rw [ZMod.toAddCircle_apply]
  unfold positiveShift
  split_ifs with hz
  · simp [hz]
  · rfl

def component (M : ℕ) (j : ZMod N) (s : ℂ) : ℂ :=
  HurwitzEuler.approximation (positiveShift j) M s

def component4 (M : ℕ) (j : ZMod N) (s : ℂ) : ℂ :=
  HurwitzEuler.approximation4 (positiveShift j) M s

def model (χ : DirichletCharacter ℂ N) (M : ℕ) : ℂ → ℂ :=
  CharacterApproximation.combine χ (component M)

def model4 (χ : DirichletCharacter ℂ N) (M : ℕ) : ℂ → ℂ :=
  CharacterApproximation.combine χ (component4 M)

/-- The entire omitted combination, with its arithmetic coefficients and signs. -/
def completeTail (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (-s) * ∑ j : ZMod N,
    χ j * HurwitzEuler.analyticTail (positiveShift j) M s

theorem component_identity (M : ℕ) (j : ZMod N) (s : ℂ)
    (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - component M j s =
      HurwitzEuler.analyticTail (positiveShift j) M s := by
  rw [← positiveShift_toAddCircle]
  exact HurwitzEuler.source_sub_approximation (positiveShift j)
    (positiveShift_pos j) (positiveShift_le_one j) M s halfPlane pole

/-- The source identity precedes all absolute-value estimates. -/
theorem source_identity (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ)
    (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    χ.LFunction s - model χ M s = completeTail χ M s := by
  rw [model, CharacterApproximation.source_difference]
  unfold completeTail
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  rw [component_identity M j s halfPlane pole]

theorem source_identity4 (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ)
    (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    χ.LFunction s - model4 χ M s =
      (N : ℂ) ^ (-s) * ∑ j : ZMod N, χ j *
        (-ShiftedEuler.prefactor s *
          (ShiftedEuler.remainder (HurwitzEuler.omittedBase (positiveShift j) M) s -
            logPower (HurwitzEuler.omittedBase (positiveShift j) M) (-s - 3) / 720)) := by
  rw [model4, CharacterApproximation.source_difference]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  rw [← positiveShift_toAddCircle]
  rw [component4, HurwitzEuler.source_sub_approximation4 (positiveShift j)
    (positiveShift_pos j) (positiveShift_le_one j) M s halfPlane pole]

theorem modulus_factor_le_one (s : ℂ) (halfPlane : 0 ≤ s.re) :
    ‖(N : ℂ) ^ (-s)‖ ≤ 1 := by
  have hN : (1 : ℝ) ≤ N := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (NeZero.ne N))
  rw [← Complex.ofReal_natCast,
    Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hN)]
  simp only [Complex.neg_re]
  exact Real.rpow_le_one_of_one_le_of_nonpos hN (neg_nonpos.mpr halfPlane)

theorem component_bound (M : ℕ) (j : ZMod N) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s - component M j s‖ ≤
      CubicApproximation.radiusBudget R M := by
  rw [← positiveShift_toAddCircle]
  exact HurwitzEuler.source_radius_bound (positiveShift j)
    (positiveShift_pos j) (positiveShift_le_one j) M s halfPlane pole size

/-- Sum every residue class, including nonunit classes whose character value is zero. -/
theorem source_radius_bound (χ : DirichletCharacter ℂ N) (M : ℕ)
    (s : ℂ) {R : ℝ} (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖χ.LFunction s - model χ M s‖ ≤
      (N : ℝ) * CubicApproximation.radiusBudget R M := by
  have hB := CubicApproximation.radiusBudget_nonneg ((norm_nonneg s).trans size) M
  have estimate := CharacterApproximation.uniform_source_error χ (component M) s
    (fun _ => CubicApproximation.radiusBudget R M)
    (fun j => component_bound M j s halfPlane pole size)
    (modulus_factor_le_one (N := N) s halfPlane)
  refine estimate.trans ?_
  simp only [one_mul, CharacterApproximation.weightedError]
  calc
    (∑ j : ZMod N, ‖χ j‖ * CubicApproximation.radiusBudget R M) ≤
        ∑ _j : ZMod N, CubicApproximation.radiusBudget R M := by
      exact Finset.sum_le_sum (fun j _ =>
        (mul_le_mul_of_nonneg_right (χ.norm_le_one j) hB).trans_eq (one_mul _))
    _ = (N : ℝ) * CubicApproximation.radiusBudget R M := by
      simp [ZMod.card, nsmul_eq_mul]

theorem scale_radius_budget (R : ℝ) (nonnegative : 0 ≤ R) (M : ℕ) :
    (N : ℝ) * CubicApproximation.radiusBudget R M ≤
      CubicApproximation.radiusBudget ((N : ℝ) * R) M := by
  have hN : (1 : ℝ) ≤ N := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (NeZero.ne N))
  have hN0 : (0 : ℝ) ≤ N := Nat.cast_nonneg N
  have hNR : R ≤ (N : ℝ) * R := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hN) nonnegative]
  unfold CubicApproximation.radiusBudget
  rw [mul_div_assoc]
  apply div_le_div_of_nonneg_right _ (by positivity)
  calc
    (N : ℝ) * (R * (R + 1) * (R + 2)) =
        ((N : ℝ) * R) * (R + 1) * (R + 2) := by ring
    _ ≤ ((N : ℝ) * R) * ((N : ℝ) * R + 1) * ((N : ℝ) * R + 2) :=
      mul_le_mul
        (mul_le_mul_of_nonneg_left (add_le_add_right hNR 1) (mul_nonneg hN0 nonnegative))
        (add_le_add_right hNR 2) (by positivity) (by positivity)

/-- Explicit finite cutoff depending on modulus, core and accuracy, not on the character. -/
def coreCutoff (N n k : ℕ) : ℕ := CubicApproximation.coreCutoff (N * n) k

theorem offCore_error (χ : DirichletCharacter ℂ N) (n k : ℕ)
    (s : ℂ) (inside : s ∈ offCore n) :
    ‖χ.LFunction s - model χ (coreCutoff N n k) s‖ ≤ CubicApproximation.errorRate k := by
  have strip := offCore_subset n inside
  have size : ‖s‖ ≤ (n : ℝ) := by
    simpa only [mem_closedBall, dist_zero_right] using inside.1
  refine (source_radius_bound χ _ s strip.1.le
    (strip_ne_one strip.2.1) size).trans ?_
  refine (scale_radius_budget (N := N) (n : ℝ) (Nat.cast_nonneg n) _).trans ?_
  simpa only [coreCutoff, Nat.cast_mul] using
    CubicApproximation.radiusBudget_at_coreCutoff (N * n) k

/-- No bound on the modulus and no selection of character sectors. -/
theorem all_character_core_errors :
    ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (n k : ℕ)
      (s : ℂ), s ∈ offCore n →
      ‖χ.LFunction s - model χ (coreCutoff q n k) s‖ ≤ CubicApproximation.errorRate k := by
  intro q hq χ n k s hs
  exact offCore_error χ n k s hs

/-- One finite cutoff serves EVERY character at the chosen modulus and core.
This is uniform additive approximation, not uniform zero exclusion. -/
theorem every_core_uniform_tolerance (n : ℕ) {ε : ℝ} (positive : 0 < ε) :
    ∃ M : ℕ, ∀ (χ : DirichletCharacter ℂ N) (s : ℂ), s ∈ offCore n →
      ‖χ.LFunction s - model χ M s‖ < ε := by
  obtain ⟨k, hk⟩ := CubicApproximation.exists_errorRate_lt positive
  exact ⟨coreCutoff N n k, fun χ s hs => (offCore_error χ n k s hs).trans_lt hk⟩

/-- Different finite principal-character routes are compared through BOTH source errors. -/
theorem principal_routes_comparison (M : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖model (1 : DirichletCharacter ℂ N) M s -
      CharacterApproximation.principalModel N M s‖ ≤
      ((N : ℝ) + ‖CharacterApproximation.eulerFactor N s‖) *
        CubicApproximation.radiusBudget R M := by
  have first := source_radius_bound (1 : DirichletCharacter ℂ N) M s halfPlane pole size
  have first' : ‖model (1 : DirichletCharacter ℂ N) M s -
      (1 : DirichletCharacter ℂ N).LFunction s‖ ≤
        (N : ℝ) * CubicApproximation.radiusBudget R M := by
    simpa only [norm_sub_rev] using first
  have second : ‖(1 : DirichletCharacter ℂ N).LFunction s -
      CharacterApproximation.principalModel N M s‖ ≤
      ‖CharacterApproximation.eulerFactor N s‖ * CubicApproximation.radiusBudget R M := by
    rw [CharacterApproximation.principal_difference M s pole, norm_mul]
    exact mul_le_mul_of_nonneg_left
      (CubicApproximation.source_error_on_radius M s halfPlane pole size) (norm_nonneg _)
  exact ((norm_sub_le_norm_sub_add_norm_sub _
    ((1 : DirichletCharacter ℂ N).LFunction s) _).trans
      (add_le_add first' second)).trans_eq (by ring)

/-- A source-return test; its strict lower margin remains a separate premise. -/
theorem nonzero_of_model_gap (χ : DirichletCharacter ℂ N) (M : ℕ) (s inverse : ℂ)
    {R ε U : ℝ} (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R)
    (modelResidual : ‖residual (model χ M s) inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ U)
    (strict : ε + ((N : ℝ) * CubicApproximation.radiusBudget R M) * U < 1) :
    χ.LFunction s ≠ 0 :=
  nonzero_of_unit_residual
    (Approximation.residual_source_bound modelResidual
      (source_radius_bound χ M s halfPlane pole size) inverseBound) strict

theorem zero_obstructs_residual (χ : DirichletCharacter ℂ N) (s u : ℂ)
    (zero : χ.LFunction s = 0) : ‖residual (χ.LFunction s) u 1‖ = 1 := by
  simp [residual, zero]

end GRWTSK.NumberTheory.Conditional.CharacterEuler
