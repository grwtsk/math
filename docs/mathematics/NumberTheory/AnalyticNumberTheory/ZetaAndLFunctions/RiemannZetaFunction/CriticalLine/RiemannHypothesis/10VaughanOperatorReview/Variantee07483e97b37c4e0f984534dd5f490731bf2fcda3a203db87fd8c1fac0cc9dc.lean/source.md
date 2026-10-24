# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.10VaughanOperatorReview.Variantee07483e97b37c4e0f984534dd5f490731bf2fcda3a203db87fd8c1fac0cc9dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbc22546724a37d1d17bbcff12e28cc31e3e624c` · SHA-256 `ee07483e97b37c4e0f984534dd5f490731bf2fcda3a203db87fd8c1fac0cc9dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaSourceRecombination

/-! Review-tree diagnostic only. This file imports an unmerged Vaughan closure.
It is not an import of the accepted root. Source hashes and verification scope
are recorded in the Catalan/Jacobi obstruction ledger. -/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.VaughanOperatorReview

open Matrix
open MangoldtMobiusJacobi
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaSourceRecombination EstimateVaughanTranslationGate
open EstimateBetaCentering EstimateVaughanSource EstimatePlainKernel
open EstimateMertensResidual EstimateTypeTwoLogBlocks

noncomputable def covarianceVector (A : ℝ) :
    (longOffDiagonalPairs A) ⊕ (longOffDiagonalPairs A) → ℝ :=
  jointVector (fun q => ArithmeticFunction.vonMangoldt q.val.1)
    (fun q => centeredBeta (vaughanCutoff A) q.val.2)

noncomputable def covarianceOperator (A : ℝ) :
    Matrix ((longOffDiagonalPairs A) ⊕ (longOffDiagonalPairs A))
      ((longOffDiagonalPairs A) ⊕ (longOffDiagonalPairs A)) ℝ :=
  signedDilation (pairKernel (fun q => sourcePlainWeight A ((q.val.1 * q.val.2 : ℕ) : ℝ)))

noncomputable def covarianceOperatorValue (A : ℝ) : ℝ :=
  covarianceVector A ⬝ᵥ covarianceOperator A *ᵥ covarianceVector A

theorem covarianceOperatorValue_eq_twice_centered (A : ℝ) :
    covarianceOperatorValue A = 2 * centeredTypeTwoOffDiagonal A := by
  exact finiteMangoldtMobius_covariance (longOffDiagonalPairs A)
    (centeredBeta (vaughanCutoff A))
    (fun q => sourcePlainWeight A ((q.1 * q.2 : ℕ) : ℝ))

theorem covarianceOperatorValue_eq_twice_blocks (A : ℝ) (hA : 1 ≤ A) :
    covarianceOperatorValue A =
      2 * ∑ c ∈ logCells A, centeredTypeTwoLogBlock A c := by
  rw [covarianceOperatorValue_eq_twice_centered,
    centeredTypeTwoOffDiagonal_eq_logBlocks A hA]

theorem residual_eq_operator_add_actual_ledger (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = covarianceOperatorValue A / 2 + betaMainLedger A := by
  rw [covarianceOperatorValue_eq_twice_centered,
    mertensResidual_eq_centered_add_betaMain A hA]
  ring

/-- A supplied diagnostic main term is subtracted with its original sign;
neither the ledger error bound nor the joint estimate is asserted here. -/
theorem mainTerm_subtraction_exact (A M : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      (covarianceOperatorValue A / 2 - M) + (betaMainLedger A + M) := by
  rw [residual_eq_operator_add_actual_ledger A hA]
  ring

/-- The supplied main term stays independent of the ledger definition. -/
def JointMainTermTailUpperBound (M : ℝ → ℝ) : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → covarianceOperatorValue A / 2 - M A ≤ D

/-- Exact diagnostic equivalence. The bounded ledger error is an explicit
unproved input here; this theorem neither constructs `M` nor supplies that bound. -/
theorem jointMainTermTail_iff_residualTail_of_boundedLedgerError
    (M : ℝ → ℝ) (CF : ℝ) (hCF : 0 ≤ CF)
    (herror : ∀ A : ℝ, 1 ≤ A → |betaMainLedger A + M A| ≤ CF) :
    JointMainTermTailUpperBound M ↔ MertensResidualTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + CF, add_nonneg hD hCF, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have heq := mainTerm_subtraction_exact A (M A) hA
    have hf := (abs_le.mp (herror A hA)).2
    linarith [h A hRA]
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + CF, add_nonneg hD hCF, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have heq := mainTerm_subtraction_exact A (M A) hA
    have hf := (abs_le.mp (herror A hA)).1
    linarith [h A hRA]

end FormalResearch.RiemannHypothesis.VaughanOperatorReview

set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_blocks
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.covarianceOperatorValue_eq_twice_blocks
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.residual_eq_operator_add_actual_ledger
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.residual_eq_operator_add_actual_ledger
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.mainTerm_subtraction_exact
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.mainTerm_subtraction_exact
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.JointMainTermTailUpperBound
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.JointMainTermTailUpperBound
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.VaughanOperatorReview.jointMainTermTail_iff_residualTail_of_boundedLedgerError
#print axioms FormalResearch.RiemannHypothesis.VaughanOperatorReview.jointMainTermTail_iff_residualTail_of_boundedLedgerError
```
