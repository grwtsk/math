/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualObservation

/-!
# Outward observations for the literal odd window sign return

The trial value is the shifted bordered matrix quadratic on the finite
reconstruction, with the shift restricted to physical coordinates.
Multiplying each entry radius by the absolute trial coefficients on both
sides and summing bounds the entire trial error. The observed residual
price uses every row after the retained head through the finite cutoff.
The remote allowance is accounted for separately.

The theorem consumes a passing rational lower matrix check and exact
source comparisons for the supplied data. The elementary numerical
enclosures and passing data for specific windows remain to be supplied.
Independent analytical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowObservations

open OddRootProjection OddSineForm OddHighComplement OddBorderedExpansion OddBorderedFiniteReturn
open OddSchurAccounting OddSineParseval OddLiteralWindow OddWrapEnergy
open OddResidualSourceComparison OddResidualMajorant OddResidualObservation
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Entrywise radii after amplification by the actual reconstructed vector. -/
def quadraticEntryRadius {ι : Type*} [Fintype ι] (radius : Matrix ι ι ℝ) (v : ι → ℝ) : ℝ :=
  ∑ i, ∑ j, |v i| * radius i j * |v j|

theorem abs_quadratic_sub_quadratic_le {ι : Type*} [Fintype ι]
    (A observed radius : Matrix ι ι ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |A i j - observed i j| ≤ radius i j) :
    |quadratic A v - quadratic observed v| ≤ quadraticEntryRadius radius v := by
  have hdiff : quadratic A v - quadratic observed v =
      ∑ i, ∑ j, v i * (A i j - observed i j) * v j := by
    simp only [quadratic, dotProduct, mulVec, Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [hdiff]
  unfold quadraticEntryRadius
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro i _
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro j _
  rw [abs_mul, abs_mul]
  exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left (hentry i j) (abs_nonneg _))
    (abs_nonneg _)

theorem abs_trialValue_sub_observed_le {M : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : Fin M → ℝ) (a : ℝ) (observed radius : Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ)
    (hentry : ∀ i j, |shiftedBlock (borderedSourceMatrix T M) poleShiftMetric β i j -
      observed i j| ≤ radius i j) :
    |shiftedOddBorderedEnergy T β (finiteSine T x) a -
        quadratic observed (Sum.elim x (fun _ => a))| ≤
      quadraticEntryRadius radius (Sum.elim x (fun _ => a)) := by
  rw [shiftedOddBorderedEnergy_finiteSine_eq_quadratic T hT]
  exact abs_quadratic_sub_quadratic_le _ _ _ _ hentry

/-- An entrywise-enclosed trial block and a complete finite row observation
feed the same checked lower matrix on the literal odd window. -/
theorem shiftedOddWeilEnergy_nonneg_of_observed_matrix {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β s γ : ℝ) (hs : 0 < s) (hγ : 0 < γ)
    (hcut : highCutoff T β 4 γ ≤ N)
    (trial : (Fin N → ℝ) → ℝ → ℕ → ℝ)
    (htrial : ∀ u a (i : Fin N), trial u a (i.val+1) = u i)
    (observed radius : Matrix (Fin M ⊕ Unit) (Fin M ⊕ Unit) ℝ)
    (hentry : ∀ i j, |shiftedBlock (borderedSourceMatrix T M) poleShiftMetric β i j -
      observed i j| ≤ radius i j)
    (rowHat rowRadius : (Fin N → ℝ) → ℝ → ℕ → ℝ)
    (hrow : ∀ u a i, i < L-N →
      |literalAugmentedRow M T (trial u a) a β (N+1+i) - rowHat u a (N+1+i)| ≤
        rowRadius u a (N+1+i))
    (remote : (Fin N → ℝ) → ℝ → ℝ)
    (hremote : ∀ u a, completeRemoteAllowance M L J T (trial u a) a s ≤ remote u a)
    {ν : Type*} [Fintype ν] (lower : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ)
    (C : Certificate ℚ (Fin N ⊕ Unit) Empty Empty ν)
    (hcheck : check (matrixProblem lower) C = true)
    (hprice : ∀ u a,
      let v : Fin M ⊕ Unit → ℝ := Sum.elim (fun i => trial u a (i.val+1)) (fun _ => a)
      quadratic (fun i j => (lower i j : ℝ)) (Sum.elim u (fun _ => a)) ≤
        quadratic observed v - quadraticEntryRadius radius v -
          ((∑ i ∈ Finset.range (L-N), (|rowHat u a (N+1+i)| + rowRadius u a (N+1+i)) ^ 2) +
            remote u a) / γ)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f := by
  refine shiftedOddWeilEnergy_nonneg_of_checked_lower hNM hML hL hLJ T hT β s γ hs hγ hcut
    trial htrial lower C hcheck ?_ hf hfm hfo hfs henergy
  intro u a
  refine ⟨_, _, _, remote u a, abs_trialValue_sub_observed_le T hT β _ a observed radius hentry,
    finite_literalAugmentedRow_sq_le (rowHat u a) (rowRadius u a) (hrow u a),
    hremote u a, hprice u a⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowObservations
