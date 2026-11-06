/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowLowerAssembly
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix

/-!
# Inclusion certificates for the literal odd window

In the inclusion trial, the physical trial and retained head have the same
size. The rectangular observation includes precisely rows N+1 through L,
and the shift vanishes in those rows because they lie outside the trial.
Symmetric entry radii bound the trial and remote quadratic errors by their
maximum row sums. The sum of squares of the rectangular radii bounds its
squared observation error by Cauchy–Schwarz. The exact signed two-trace
remote matrix supplies the remaining residual allowance.

This is a soundness return from supplied outward intervals and a positive
finite lower matrix. It leaves validation of a particular set of intervals
and the completed-source comparison separate. Independent analytical
review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddInclusionWindow

open OddRootProjection OddSineForm OddSchurAccounting OddLiteralWindow OddWrapEnergy
open OddBorderedFiniteReturn OddResidualSourceComparison OddConcreteResidual
open OddRemoteAllowanceMatrix OddWindowObservations OddWindowLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

/-- The finite inclusion trial written in positive source indices. -/
def inclusionTrial {N : ℕ} (u : Fin N → ℝ) : ℕ → ℝ
  | 0 => 0
  | n+1 => if h : n < N then u ⟨n,h⟩ else 0

@[simp] theorem inclusionTrial_succ {N : ℕ} (u : Fin N → ℝ) (i : Fin N) :
    inclusionTrial u (i.val+1) = u i := by simp [inclusionTrial, i.isLt]

/-- The complete finite high row range. The last column is the scalar pole. -/
def literalResidualMatrix (T : ℝ) (N L : ℕ) : Matrix (Fin (L-N)) (Fin N ⊕ Unit) ℝ :=
  fun i => Sum.elim
    (fun j => literalCoreEntry T (N+1+i.val) (j.val+1))
    (fun _ => literalPoleEntry T (N+1+i.val))

theorem literalResidualMatrix_mulVec (T β : ℝ) {N L : ℕ}
    (u : Fin N → ℝ) (a : ℝ) (i : Fin (L-N)) :
    (literalResidualMatrix T N L).mulVec (Sum.elim u (fun _ => a)) i =
      literalAugmentedRow N T (inclusionTrial u) a β (N+1+i.val) := by
  unfold literalAugmentedRow
  rw [← sum_fin_succ_eq_sum_Icc]
  simp only [literalResidualMatrix, Matrix.mulVec, dotProduct, Fintype.sum_sum_type,
    Sum.elim_inl, Sum.elim_inr, Fintype.sum_unique, inclusionTrial_succ]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  have hj := j.isLt
  rw [ite_eq_right (show N+1+i.val ≠ j.val+1 by omega), sub_zero]
  ring

/-- Symmetric entry radii with bounded row sums control the quadratic error. -/
theorem abs_quadratic_sub_le_of_rowRadius {ι : Type*} [Fintype ι]
    (A B R : Matrix ι ι ℝ) (η : ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |A i j-B i j| ≤ R i j)
    (hsymm : ∀ i j, R i j = R j i)
    (hrow : ∀ i, ∑ j, R i j ≤ η) :
    |quadratic A v - quadratic B v| ≤ η * ∑ i, v i ^ 2 := by
  refine (abs_quadratic_sub_quadratic_le A B R v hentry).trans ?_
  unfold quadraticEntryRadius
  have hswap : (∑ i, ∑ j, R i j * v j ^ 2) = ∑ i, ∑ j, R i j * v i ^ 2 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [hsymm j i]
  calc
    _ ≤ ∑ i, ∑ j, R i j * ((v i ^ 2 + v j ^ 2)/2) := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      rw [show |v i| * R i j * |v j| = R i j * (|v i| * |v j|) by ring]
      apply mul_le_mul_of_nonneg_left _ ((abs_nonneg _).trans (hentry i j))
      have h := sq_nonneg (|v i| - |v j|)
      rw [sub_sq, sq_abs, sq_abs] at h
      linarith
    _ = ((∑ i, ∑ j, R i j * v i ^ 2) + (∑ i, ∑ j, R i j * v j ^ 2))/2 := by
      simp only [← mul_div_assoc, mul_add, add_div, Finset.sum_div, Finset.sum_add_distrib]
    _ = ∑ i, (∑ j, R i j) * v i ^ 2 := by
      rw [hswap, ← two_mul, mul_div_cancel_left₀ _ (by norm_num : (2:ℝ) ≠ 0)]
      simp only [Finset.sum_mul]
    _ ≤ _ := by
      rw [Finset.mul_sum]
      exact Finset.sum_le_sum (fun i _ => mul_le_mul_of_nonneg_right (hrow i) (sq_nonneg _))

/-- Squared error of the full rectangular readout from entry radii. -/
theorem residualObservationErrorSq_le {ρ ι : Type*} [Fintype ρ] [Fintype ι]
    (A B R : Matrix ρ ι ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |A i j-B i j| ≤ R i j) :
    (∑ i, (A.mulVec v i - B.mulVec v i)^2) ≤
      (∑ i, ∑ j, (R i j)^2) * (∑ j, (v j)^2) := by
  have heq (i : ρ) : A.mulVec v i - B.mulVec v i = ∑ j, (A i j-B i j) * v j := by
    simp only [Matrix.mulVec, dotProduct, sub_mul, Finset.sum_sub_distrib]
  rw [Finset.sum_mul]
  apply Finset.sum_le_sum
  intro i _
  rw [heq]
  refine (Finset.sum_mul_sq_le_sq_mul_sq _ _ _).trans ?_
  apply mul_le_mul_of_nonneg_right _ (Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  apply Finset.sum_le_sum
  intro j _
  simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) (hentry i j) 2

private theorem quadratic_scaled_one {ι : Type*} [Fintype ι] [DecidableEq ι]
    (c : ℝ) (v : ι → ℝ) :
    quadratic (c • (1 : Matrix ι ι ℝ)) v = c * ∑ i, (v i)^2 := by
  rw [quadratic_smul]
  simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]

/-- A positive finite minorant with paid entry error gives the lower sign. -/
theorem quadratic_nonneg_of_minorant {ι : Type*} [Fintype ι] [DecidableEq ι]
    (A B R : Matrix ι ι ℝ) (margin : ℝ)
    (hentry : ∀ i j, |(A - margin • 1) i j - B i j| ≤ R i j)
    (hsymm : ∀ i j, R i j = R j i) (hrow : ∀ i, ∑ j, R i j ≤ margin)
    (hB : ∀ v, 0 ≤ quadratic B v) (v : ι → ℝ) :
    0 ≤ quadratic A v := by
  have h := (abs_le.mp (abs_quadratic_sub_le_of_rowRadius (A - margin • 1) B R
    margin v hentry hsymm hrow)).1
  have hshift : quadratic (A - margin • 1) v =
      quadratic A v - margin * ∑ i, v i ^ 2 := by
    have hq : quadratic (A - margin • 1) v =
        quadratic A v - quadratic (margin • 1) v := by
      simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub]
    rw [hq, quadratic_scaled_one]
  rw [hshift] at h
  linarith [hB v]

/-- Entry enclosures and a finite sign witness suffice for the literal
inclusion window. Every error enters the assembled lower matrix. -/
theorem shiftedOddWeilEnergy_nonneg_of_inclusionLower {N L J : ℕ}
    (hNL : N ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β s γ τ η δ ζ : ℝ)
    (hs : 0 < s) (hγ : 0 < γ) (hτ : 0 < τ) (hfloor : HighFloor T β γ N)
    (upper upperRadius remote remoteRadius : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℝ)
    (rows rowRadius : Matrix (Fin (L-N)) (Fin N ⊕ Unit) ℝ)
    (hupper : ∀ i j, |shiftedBlock (borderedSourceMatrix T N) poleShiftMetric β i j -
      upper i j| ≤ upperRadius i j)
    (hupperSymm : ∀ i j, upperRadius i j = upperRadius j i)
    (hupperSum : ∀ i, ∑ j, upperRadius i j ≤ η)
    (hrows : ∀ i j, |literalResidualMatrix T N L i j - rows i j| ≤ rowRadius i j)
    (hrowSq : ∑ i, ∑ j, (rowRadius i j)^2 ≤ δ)
    (hremote : ∀ i j, |completeRemoteMatrix N L J T s i j - remote i j| ≤ remoteRadius i j)
    (hremoteSymm : ∀ i j, remoteRadius i j = remoteRadius j i)
    (hremoteSum : ∀ i, ∑ j, remoteRadius i j ≤ ζ)
    (hpositive : ∀ v, 0 ≤ quadratic (assembleLowerMatrix upper (rows.transpose * rows)
      ((1+τ⁻¹) • (δ • 1) + (remote + ζ • 1)) η γ (1+τ)) v)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hm : Measurable f) (ho : Function.Odd f)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f := by
  refine shiftedOddWeilEnergy_nonneg_of_assembledLower (le_refl N) hNL hL hLJ T hT
    β s γ τ η hs hγ hτ hfloor (fun u _ => inclusionTrial u)
    (fun u _ i => inclusionTrial_succ u i) upper (δ • 1) (remote + ζ • 1) rows
    ?_ ?_ ?_ hpositive hf hm ho hsupport he
  · intro u a
    dsimp only
    have hcoord : (fun i : Fin N => inclusionTrial u (i.val+1)) = u :=
      funext (inclusionTrial_succ u)
    rw [hcoord, shiftedOddBorderedEnergy_finiteSine_eq_quadratic T hT]
    exact abs_quadratic_sub_le_of_rowRadius _ _ _ η _ hupper hupperSymm hupperSum
  · intro u a
    dsimp only
    rw [quadratic_scaled_one]
    have h := residualObservationErrorSq_le _ rows rowRadius (Sum.elim u (fun _ => a)) hrows
    simp_rw [literalResidualMatrix_mulVec T β] at h
    exact h.trans (mul_le_mul_of_nonneg_right hrowSq (Finset.sum_nonneg (fun _ _ => sq_nonneg _)))
  · intro u a
    let v := Sum.elim u (fun (_ : Unit) => a)
    rw [← quadratic_completeRemoteMatrix L J T s (inclusionTrial u) u a (inclusionTrial_succ u),
      quadratic_add, quadratic_scaled_one]
    have h := (abs_le.mp (abs_quadratic_sub_le_of_rowRadius _ _ _ ζ v
      hremote hremoteSymm hremoteSum)).2
    change quadratic (completeRemoteMatrix N L J T s) v ≤
      quadratic remote v + ζ * ∑ i, (v i)^2
    linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.OddInclusionWindow
