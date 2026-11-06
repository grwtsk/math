/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteLowerAssembly

/-!
# The finite lower matrix on the literal odd window

The lower matrix is the exact matrix formula used by the finite
assembler in `noeaaeue/crates/noe-finite/src/lower.rs`. Here the
rectangular observation is indexed by every row after the retained head
through the finite residual cutoff. Young's inequality pays the squared
difference from each literal row, then the independent remote allowance
pays the entire infinite remainder. The trial error is measured in the
retained coordinates, so the supplied upper error includes any
reconstruction amplification.

The theorem consumes real interpretations of finite inputs and a
positive lower matrix. It keeps the source error comparisons explicit.
The Rust execution refinement, particular passing numerical witnesses,
and the completed-source return are separate. Independent analytical
review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowLowerAssembly

open OddRootProjection OddSineForm OddSineParseval OddWrapEnergy
open OddLiteralWindow OddBorderedExpansion OddResidualSourceComparison OddResidualMajorant
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

/-- Pay the error on every finite residual coordinate with the same
positive Young parameter. -/
theorem finiteResidualSquares_le_of_error {N M L : ℕ} (T : ℝ) (x : ℕ → ℝ)
    (a β τ error : ℝ) (hτ : 0 < τ) (observed : Fin (L-N) → ℝ)
    (herror : (∑ i : Fin (L-N),
      (literalAugmentedRow M T x a β (N+1+i.val) - observed i) ^ 2) ≤ error) :
    (∑ i ∈ Finset.range (L-N), (literalAugmentedRow M T x a β (N+1+i)) ^ 2) ≤
      (1+τ) * (∑ i, (observed i) ^ 2) + (1+τ⁻¹) * error := by
  let row (i : ℕ) := literalAugmentedRow M T x a β (N+1+i)
  change (∑ i ∈ Finset.range (L-N), (row i) ^ 2) ≤ _
  rw [← Fin.sum_univ_eq_sum_range (fun i => (row i) ^ 2)]
  calc
    _ ≤ ∑ i : Fin (L-N),
        ((1+τ) * (observed i) ^ 2 + (1+τ⁻¹) * (row i.val - observed i) ^ 2) := by
      apply Finset.sum_le_sum
      intro i _
      simpa only [add_sub_cancel] using weighted_square (observed i) (row i.val - observed i) τ hτ
    _ = (1+τ) * (∑ i, (observed i) ^ 2) +
        (1+τ⁻¹) * (∑ i : Fin (L-N), (row i.val - observed i) ^ 2) := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
    _ ≤ _ := by gcongr

/-- The assembled lower matrix returns a sign to the literal odd window.
The observed row space has exactly the required finite cardinality. -/
theorem shiftedOddWeilEnergy_nonneg_of_assembledLower {N M L J : ℕ}
    (hNM : N ≤ M) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β s γ τ η : ℝ) (hs : 0 < s) (hγ : 0 < γ) (hτ : 0 < τ)
    (hfloor : HighFloor T β γ N)
    (trial : (Fin N → ℝ) → ℝ → ℕ → ℝ)
    (htrial : ∀ u a (i : Fin N), trial u a (i.val+1) = u i)
    (upper rowError remote : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℝ)
    (observedRows : Matrix (Fin (L-N)) (Fin N ⊕ Unit) ℝ)
    (hupper : ∀ u a, let v := Sum.elim u (fun (_ : Unit) => a)
      |shiftedOddBorderedEnergy T β
        (finiteSine T (fun i : Fin M => trial u a (i.val+1))) a - quadratic upper v| ≤
        η * ∑ i, (v i) ^ 2)
    (hrows : ∀ u a, let v := Sum.elim u (fun (_ : Unit) => a)
      (∑ i : Fin (L-N),
        (literalAugmentedRow M T (trial u a) a β (N+1+i.val) - observedRows.mulVec v i) ^ 2) ≤
        quadratic rowError v)
    (hremote : ∀ u a, completeRemoteAllowance M L J T (trial u a) a s ≤
      quadratic remote (Sum.elim u (fun _ => a)))
    (hpositive : ∀ v, 0 ≤ quadratic (assembleLowerMatrix upper
      (observedRows.transpose * observedRows) ((1+τ⁻¹) • rowError + remote) η γ (1+τ)) v)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hfm : Measurable f) (hfo : Function.Odd f)
    (hfs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (henergy : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β f := by
  refine shiftedOddWeilEnergy_nonneg_of_positive_lower hNM hML hL hLJ T hT β s γ hs hγ hfloor
    trial htrial _ hpositive ?_ hf hfm hfo hfs henergy
  intro u a
  let v := Sum.elim u (fun (_ : Unit) => a)
  let finiteGram := (1+τ) * (∑ i, (observedRows.mulVec v i)^2) + (1+τ⁻¹) * quadratic rowError v
  refine ⟨quadratic upper v, η * (∑ i, (v i)^2), finiteGram, quadratic remote v,
    hupper u a, finiteResidualSquares_le_of_error T (trial u a) a β τ _ hτ _ (hrows u a),
    hremote u a, ?_⟩
  have hGram : quadratic (observedRows.transpose * observedRows) v =
      ∑ i, (observedRows.mulVec v i)^2 := reconstructionGram_quadratic observedRows v
  apply le_of_eq
  rw [quadratic_assembleLowerMatrix, hGram, quadratic_add, quadratic_smul]
  unfold finiteGram
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWindowLowerAssembly
