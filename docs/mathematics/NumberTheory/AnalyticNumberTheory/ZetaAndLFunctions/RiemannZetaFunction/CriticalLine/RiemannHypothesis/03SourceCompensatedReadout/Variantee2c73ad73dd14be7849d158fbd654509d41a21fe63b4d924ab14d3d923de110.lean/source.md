# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.03SourceCompensatedReadout.Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1cee82869ea56016b4c758675c952f44b784234` · SHA-256 `42255be851561264f12f9cf8f767f4fb9fda57d110a9c7c97e2e081802f301e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ArithmeticState.Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ArithmeticState.Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/actual-vaughan-hankel-storage-prerequisite-assessment-20261007T061827Z/source-captures/03-SourceCompensatedReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.CompensatedReadout
import SourceReflectionArithmetic
import SourceCutoffFlux

/-!
# Literal compensated arithmetic Hilbert readout

The state is the actual complex L² source pair. Compensation contains the full
centered deleted diagonal and the independently constructed finite main term.
At fixed A the adjacent cutoff jump uses both changing long axes and the actual
centered row update. Its identity comparison is an isometry but no estimate.
This review adapter retains the recorded unmerged Vaughan dependency closure.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ArithmeticState.Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCompensatedReadout

open MeasureTheory ArithmeticFunction
open scoped InnerProductSpace BigOperators
open CompensatedReadout SourceReflectionArithmetic SourceReflectionDuality
open SourceHankelReflection SourceVaughanHankel SourceCutoffFlux SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel

noncomputable section

/-- The literal actual pair, without normalization of its changing arithmetic state. -/
def arithmeticState (A : ℝ) (hA : 1 ≤ A) : PairState ComplexL2 :=
  pairState (mangoldtComplexL2 A hA) (centeredReflectedComplexL2 A hA)

/-- Compensation retains the full centered diagonal and independent main term. -/
def arithmeticCompensation (A : ℝ) : ℝ :=
  -centeredDeletedDiagonal A - independentMainTerm A

/-- The actual compensated operator observable. -/
def arithmeticReadout (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  compensatedReadout interactionOperator (arithmeticState A hA) (arithmeticCompensation A)

/-- The literal readout equals the unchanged signed covariance minus its actual main term. -/
theorem arithmeticReadout_eq_joint (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  unfold arithmeticReadout compensatedReadout arithmeticState arithmeticCompensation
  rw [interactionOperator_readout, complex_pairing_eq_source, Complex.ofReal_re,
    covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  ring

/-- Arbitrary fixed cutoffs use the unchanged Mangoldt source profile. -/
def mangoldtAt (A : ℝ) (hA : 0 < A) (U N : ℕ) : ComplexL2 :=
  complexify (forwardL2 A hA (Finset.Ioc U N)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ)))

/-- The fixed-cutoff reflected source row retains plus-centering in every coefficient. -/
def reflectedMobiusAt (A : ℝ) (hA : 0 < A) (U N : ℕ) : ComplexL2 :=
  complexify (reflectedL2 A hA (Finset.Ioc U N)
    (fun n => centeredBeta U n / Real.sqrt (n : ℝ)))

/-- The fixed-cutoff source state has both axes on the same Ioc inventory. -/
def stateAt (A : ℝ) (hA : 0 < A) (U N : ℕ) : PairState ComplexL2 :=
  pairState (mangoldtAt A hA U N) (reflectedMobiusAt A hA U N)

/-- Fixed-cutoff compensation includes the literal centered corner and all main inventories. -/
def compensationAt (A : ℝ) (U N : ℕ) : ℝ :=
  -centeredDiagonalAt A U N - mainTermAt A U N

/-- The full compensated readout at an independently varying classification cutoff. -/
def readoutAt (A : ℝ) (hA : 0 < A) (U N : ℕ) : ℝ :=
  compensatedReadout interactionOperator (stateAt A hA U N) (compensationAt A U N)

/-- The two actual complex fixed-cutoff profiles reconstruct the full centered rectangle. -/
theorem pairingAt_eq_rectangle (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    (⟪mangoldtAt A hA U N, reflectedMobiusAt A hA U N⟫_ℂ).re =
      centeredRectangleAt A U N := by
  unfold mangoldtAt reflectedMobiusAt
  rw [complexify_inner, Complex.ofReal_re, l2_inner_eq_pairing hA,
    finite_hankel_pairing hA]
  · unfold centeredRectangleAt rectangle SourceCutoffFlux.sourceKernel
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n _
    have hmpos : 0 < (m : ℝ) := by
      exact_mod_cast (show 0 < m by have := (Finset.mem_Ioc.mp hm).1; omega)
    unfold sourcePlainWeight
    rw [Nat.cast_mul, Real.sqrt_mul hmpos.le]
    ring
  · intro m hm
    have := (Finset.mem_Ioc.mp hm).1
    omega
  · intro n hn
    have := (Finset.mem_Ioc.mp hn).1
    omega

/-- Full Hilbert reconstruction is the prior exact signed fixed-cutoff source target. -/
theorem readoutAt_eq_jointAt (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA U N = jointAt A U N := by
  unfold readoutAt compensatedReadout stateAt compensationAt
  rw [interactionOperator_readout, pairingAt_eq_rectangle]
  unfold jointAt centeredOffAt offDiagonal centeredRectangleAt centeredDiagonalAt
  ring

/-- The fixed-cutoff state specializes to the original actual arithmetic state. -/
theorem stateAt_actual (A : ℝ) (hA : 1 ≤ A) :
    stateAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) =
      arithmeticState A hA := rfl

/-- The fixed-cutoff compensation preserves the actual centered deleted diagonal. -/
theorem compensationAt_actual (A : ℝ) (hA : 1 ≤ A) :
    compensationAt A (vaughanCutoff A) (sourceKernelCutoff A) =
      arithmeticCompensation A := by
  rw [compensationAt, centeredDiagonalAt_actual, mainTermAt_actual A hA]
  rfl

/-- The actual readout is recovered at both unchanged floor cutoffs. -/
theorem readoutAt_actual (A : ℝ) (hA : 1 ≤ A) :
    readoutAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) =
      arithmeticReadout A hA := by
  unfold readoutAt arithmeticReadout
  rw [stateAt_actual, compensationAt_actual A hA]

/-- Exact jump vector in the common actual L² Hilbert space; no bound is included. -/
def cutoffJump (A : ℝ) (hA : 0 < A) (U N : ℕ) : PairState ComplexL2 :=
  stateAt A hA (U + 1) N - stateAt A hA U N

/-- Identity comparison is an actual isometry and reconstructs the complete cutoff jump. -/
theorem cutoffJump_reconstruction (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    stateAt A hA (U + 1) N =
      LinearIsometryEquiv.refl ℂ (PairState ComplexL2) (stateAt A hA U N) +
        cutoffJump A hA U N := by
  simp [cutoffJump]

/-- The scalar jump identity retains every compensation change and the joint cross term. -/
theorem readoutAt_adjacent_jump (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA (U + 1) N - readoutAt A hA U N =
      2 * (⟪stateAt A hA U N, interactionOperator (cutoffJump A hA U N)⟫_ℂ).re +
      quadraticReadout interactionOperator (cutoffJump A hA U N) +
        compensationAt A (U + 1) N - compensationAt A U N := by
  unfold readoutAt
  have hz : stateAt A hA (U + 1) N = stateAt A hA U N + cutoffJump A hA U N := by
    simp [cutoffJump]
  rw [hz]
  exact compensatedReadout_identity_jump (H := PairState ComplexL2)
    (interactionOperator (H := ComplexL2)) (interactionOperator_selfAdjoint (H := ComplexL2))
    (stateAt A hA U N) (cutoffJump A hA U N)
    (compensationAt A (U + 1) N) (compensationAt A U N)

/-- The Hilbert jump is exactly the previously derived full signed arithmetic flux. -/
theorem adjacent_jump_eq_sourceFlux (A : ℝ) (hA : 0 < A) (U N : ℕ) (hUN : U < N) :
    2 * (⟪stateAt A hA U N, interactionOperator (cutoffJump A hA U N)⟫_ℂ).re +
      quadraticReadout interactionOperator (cutoffJump A hA U N) +
        compensationAt A (U + 1) N - compensationAt A U N = jointFlux A U N := by
  rw [← readoutAt_adjacent_jump, readoutAt_eq_jointAt, readoutAt_eq_jointAt]
  exact jointAt_succ A U N hUN

/-- Above the actual support-complete upper cutoff the compensated scalar remains unchanged. -/
theorem readoutAt_upper_succ (A : ℝ) (hA : 1 ≤ A) (U N : ℕ)
    (hUN : U ≤ N) (hN : sourceKernelCutoff A ≤ N) :
    readoutAt A (by linarith) U (N + 1) = readoutAt A (by linarith) U N := by
  rw [readoutAt_eq_jointAt, readoutAt_eq_jointAt]
  exact jointAt_upper_succ hA U N hUN hN

/-- Every entering literal source translate has unit norm despite possible interaction zeros. -/
theorem source_atom_norm_sq (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ‖translation (Real.log (n : ℝ)) (sourceL2 A (by linarith))‖ ^ 2 = 1 := by
  rw [(translation _).norm_map]
  exact sourceL2_norm_sq A hA

/-- The eventual target is an upper bound on the full compensated actual readout. -/
def ArithmeticReadoutTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, ∀ hA : 1 ≤ A, R ≤ A → arithmeticReadout A hA ≤ D

/-- The literal operator-readout tail is exactly the existing joint main-subtracted target. -/
theorem arithmeticReadout_tail_iff_joint :
    ArithmeticReadoutTailUpperBound ↔
      VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    simpa only [arithmeticReadout_eq_joint] using h A (hR.trans hRA) hRA
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA hRA
    rw [arithmeticReadout_eq_joint]
    exact h A hRA

/-- Bounded ledger error gives the checked unchanged residual-tail equivalence. -/
theorem arithmeticReadout_tail_iff_residual :
    ArithmeticReadoutTailUpperBound ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  arithmeticReadout_tail_iff_joint.trans independentMainTerm_tail_iff_mertensResidualTail

/-- The unchanged estimate consumer still requires an actual eventual readout witness. -/
theorem estimate_of_arithmeticReadout_tail (h : ArithmeticReadoutTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  EstimateMertensResidual.estimate_of_mertens_residual_tail
    (arithmeticReadout_tail_iff_residual.mp h)

end
end FormalResearch.RiemannHypothesis.SourceCompensatedReadout
```
