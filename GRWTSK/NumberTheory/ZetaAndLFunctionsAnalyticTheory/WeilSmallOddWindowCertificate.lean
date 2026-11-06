/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSmallOddWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowLowerAssembly

/-!
# A passing scalar-head certificate for the small literal odd window

At radius one over 1024 and physical shift zero, take an empty physical
head and retain the scalar pole. The sole observed physical row is row
one. Its center is zero and the squared error costs at most a sixteenth
of the scalar square. The exact complete remote allowance after that
row costs at most another sixteenth. With Young parameter one and high
floor three quarters, the assembled lower scalar is one quarter. Its
rational Gram factor is one half.

This exercises the literal Schur certificate separately from the direct
small-window bound in WeilSmallOddWindow. Both use the same high floor.
The numerical window and index ranges are explicit. The completed-source
comparison and cofinal coverage remain separate. Independent analytical
review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SmallOddWindowCertificate

open OddRootProjection OddSineForm OddHighComplement OddBorderedExpansion OddWrapEnergy
open OddLiteralWindow OddWindowLowerAssembly OddResidualSourceComparison OddResidualMajorant
open OddResidualRows OddOutputTrace SmallOddWindow
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

private abbrev radius : ℝ := 1/1024
private abbrev Head := Fin 0 ⊕ Unit

private theorem head_eq (i j : Head) : i = j := by
  rcases i with i | ⟨⟩
  · exact Fin.elim0 i
  rcases j with j | ⟨⟩
  · exact Fin.elim0 j
  · rfl

private theorem poleScale_bounds : 0 ≤ poleScale radius ∧ poleScale radius ≤ 1/16 := by
  have hsinh0 : 0 ≤ Real.sinh (radius / 2) := Real.sinh_nonneg_iff.mpr (by norm_num [radius])
  have hsinh : Real.sinh (radius / 2) ≤ 1 :=
    (abs_le.mp (abs_sinh_half_le_one (T := radius) (t := radius)
      (by linarith [Real.log_two_gt_d9]) ⟨by norm_num [radius], le_rfl⟩)).2
  have hsqrt : Real.sqrt radius ≤ 1/32 := (Real.sqrt_le_left (by norm_num)).2 (by norm_num [radius])
  unfold poleScale
  refine ⟨by positivity, (div_le_iff₀ Real.pi_pos).2 ?_⟩
  calc
    _ ≤ 2 * (1/32 : ℝ) * 1 := by gcongr
    _ ≤ _ := by linarith [Real.pi_gt_three]

private theorem poleNode_bounds : 0 ≤ poleNode radius ∧ poleNode radius ≤ 1 := by
  unfold poleNode
  refine ⟨by positivity, (div_le_iff₀ (by positivity)).2 ?_⟩
  dsimp only [radius]
  nlinarith [Real.pi_gt_three, sq_nonneg (Real.pi - 3)]

private theorem literalPoleEntry_one_abs_le : |literalPoleEntry radius 1| ≤ 1/16 := by
  have hpos : 0 < radius := by norm_num [radius]
  rw [literalPoleEntry_eq radius hpos (by decide), sinePoleCoefficient_eq radius hpos]
  norm_num only [pow_one, Nat.cast_one, one_pow, mul_one, neg_one_mul, neg_div, neg_neg]
  have hden : 0 < 1 + poleNode radius := by linarith [poleNode_bounds.1]
  rw [abs_of_nonneg (div_nonneg poleScale_bounds.1 hden.le)]
  exact ((div_le_iff₀ hden).2 (by nlinarith [mul_nonneg poleScale_bounds.1 poleNode_bounds.1])).trans
    poleScale_bounds.2

private theorem remote_le (a : ℝ) :
    completeRemoteAllowance 0 1 1 radius (fun _ => 0) a 1 ≤ a ^ 2 / 16 := by
  have hP := pow_le_pow_left₀ poleScale_bounds.1 poleScale_bounds.2 2
  have hPN0 := mul_nonneg poleScale_bounds.1 poleNode_bounds.1
  have hPN := pow_le_pow_left₀ hPN0
    ((mul_le_of_le_one_right poleScale_bounds.1 poleNode_bounds.2).trans poleScale_bounds.2) 2
  have hP' := mul_le_mul_of_nonneg_right hP (sq_nonneg a)
  have hPN' := mul_le_mul_of_nonneg_right hPN (sq_nonneg a)
  norm_num [completeRemoteAllowance, derivativeTrace, firstTrace, remainderQuadraticAllowance]
  rw [mul_pow]
  nlinarith only [hP', hPN', sq_nonneg a]

private def lower : Matrix Head Head ℚ :=
  assembleLowerMatrix ((1/2 : ℚ) • 1) 0 ((3/16 : ℚ) • 1) 0 (3/4) 2

private def witness : Certificate ℚ Head Empty Empty Unit where
  gram := fun _ _ => 1/2
  equalityMultipliers := Empty.elim
  inequalityMultipliers := Empty.elim

/-- The exact rational sign check for the assembled scalar lower block. -/
theorem smallOddWindow_lower_check : check (matrixProblem lower) witness = true := by
  unfold check
  apply decide_eq_true
  refine ⟨(fun g => nomatch g), ?_⟩
  ext i j
  have hij := head_eq i j
  subst j
  norm_num [matrixProblem, lower, assembleLowerMatrix, Matrix.one_apply]
  change (1/4 : ℚ) = (witness.gramᵀ * witness.gram) i i
  rw [Matrix.mul_apply]
  change (1/4 : ℚ) = ∑ _ : Unit, (1/2 : ℚ) * (1/2 : ℚ)
  norm_num

private theorem quad_scalar (r a : ℝ) (u : Fin 0 → ℝ) :
    quadratic (r • (1 : Matrix Head Head ℝ)) (Sum.elim u (fun _ => a)) = r * a ^ 2 := by
  rw [quadratic_smul]
  simp [quadratic, Matrix.one_mulVec, dotProduct, Fintype.sum_sum_type, pow_two]

/-- A concrete accepted certificate for the full literal odd form at the
stated small radius. The scalar remains unshifted. -/
theorem shiftedOddWeilEnergy_small_nonneg_of_certificate {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-radius) radius → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy radius 0 f := by
  let U : Matrix Head Head ℝ := (1/2 : ℝ) • 1
  let E : Matrix Head Head ℝ := (1/16 : ℝ) • 1
  let F : Matrix (Fin (1-0)) Head ℝ := 0
  refine shiftedOddWeilEnergy_nonneg_of_assembledLower
    (N := 0) (M := 0) (L := 1) (J := 1) (by decide) (by decide) (by decide) (by decide)
    radius (by norm_num [radius]) 0 1 (3/4) 1 0 (by norm_num) (by norm_num) (by norm_num)
    highFloor_small (fun _ _ _ => 0) (fun _ _ i => Fin.elim0 i)
    U E E F ?_ ?_ ?_ ?_ hf hfm hfo hfs henergy
  · intro u a
    change |shiftedOddBorderedEnergy radius 0 (finiteSine radius (fun _ : Fin 0 => 0)) a -
      quadratic U (Sum.elim u (fun _ => a))| ≤ _
    rw [show quadratic U (Sum.elim u (fun _ => a)) = (1/2 : ℝ) * a^2 from quad_scalar _ _ _]
    simp [shiftedOddBorderedEnergy, shiftedOddCoreEnergy, oddArchimedeanEnergy,
      primeEnergy, finiteSine]
    ring
  · intro u a
    change (∑ i : Fin 1, (literalAugmentedRow 0 radius (fun _ => 0) a 0 (1+i.val) -
      F.mulVec (Sum.elim u (fun _ => a)) i)^2) ≤ quadratic E (Sum.elim u (fun _ => a))
    rw [quad_scalar (1/16) a u]
    simp [F, literalAugmentedRow]
    have hh := pow_le_pow_left₀ (abs_nonneg _) literalPoleEntry_one_abs_le 2
    rw [sq_abs] at hh
    rw [mul_pow]
    nlinarith only [mul_le_mul_of_nonneg_right hh (sq_nonneg a), sq_nonneg a]
  · intro u a
    exact (remote_le a).trans_eq (by rw [quad_scalar (1/16) a u]; ring)
  · intro v
    have heq : assembleLowerMatrix U (F.transpose * F) ((1 + (1 : ℝ)⁻¹) • E + E) 0 (3/4) (1+1) =
        fun i j => (lower i j : ℝ) := by
      ext i j
      have hij := head_eq i j
      subst j
      norm_num [assembleLowerMatrix, lower, U, E, F, Matrix.one_apply]
    rw [heq]
    exact checked_rational_matrix_nonneg lower witness smallOddWindow_lower_check v

end GRWTSK.NumberTheory.WeilQuadraticForm.SmallOddWindowCertificate
