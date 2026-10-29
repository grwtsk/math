-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtCoefficient.Variant3d84bc072cd059ea5f5e360506867e580657be15bfbe928c3f251d6abc43d857","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d84bc072cd059ea5f5e360506867e580657be15bfbe928c3f251d6abc43d857","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.MangoldtCoefficient.Variant3d84bc072cd059ea5f5e360506867e580657be15bfbe928c3f251d6abc43d857","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3d84bc072cd059ea5f5e360506867e580657be15bfbe928c3f251d6abc43d857","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-large-prime/higher-power-paper/input-pins/SourceWeightedOrbitAdapter/SourceWeightedOrbitAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceUpperBoundaryEvent
import FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
import FormalResearch.RiemannHypothesis.SourceOrbitCoordinates

/-!
# Literal weighted arithmetic rows in the actual four-channel source orbit

The source is the unchanged normalized polynomial L² class. All finite cutoffs
use Ioc(U,N), with the plus-centered beta coefficient retained inside its row.
Reflection retains the opposite logarithmic orientation. The actual readout
keeps the centered arithmetic deleted diagonal and independent main term.

This is a review adapter over the recorded unmerged Vaughan closure. Orbit
membership does not assert coefficient independence, changing-scale nesting,
localized membership, positivity of the signed interaction or an RH bound.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MangoldtCoefficient.Variant3d84bc072cd059ea5f5e360506867e580657be15bfbe928c3f251d6abc43d857

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter

open MeasureTheory ArithmeticFunction
open scoped InnerProductSpace BigOperators
open SourceReflectionDuality SourceReflectionArithmetic SourceHankelReflection SourcePairing
open SourceCompensatedReadout SourceUpperBoundaryEvent SourceArithmeticOrbit SourceOrbitCoordinates
open SourcePureRotationObstruction SourceVaughanHankel SourceCutoffFlux SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanIdentity EstimateVaughanSource EstimateSourceMobiusKernel
open Realization EstimatePlainKernel EstimateVaughanTranslationGate

/-- The literal Mangoldt inverse-square-root coefficient, cast from real once. -/
def mangoldtCoefficient (m : ℕ) : ℂ :=
  ((vonMangoldt m / Real.sqrt (m : ℝ) : ℝ) : ℂ)

/-- The original plus-centered beta coefficient, retaining its full sign. -/
def centeredCoefficient (U n : ℕ) : ℂ :=
  ((centeredBeta U n / Real.sqrt (n : ℝ) : ℝ) : ℂ)

/-- The plus-centering is explicit before any interaction or estimate. -/
theorem centeredCoefficient_eq (U n : ℕ) :
    centeredCoefficient U n = (((beta U n + alpha U) / Real.sqrt (n : ℝ) : ℝ) : ℂ) := rfl

/-- The fixed-cutoff forward row is explicitly constructed, rather than presumed in old APIs. -/
def centeredForwardAt (A : ℝ) (hA : 0 < A) (U N : ℕ) : ComplexL2 :=
  complexify (forwardL2 A hA (Finset.Ioc U N)
    (fun n => centeredBeta U n / Real.sqrt (n : ℝ)))

/-- Complexification preserves the exact reflection of every finite literal source profile. -/
theorem complexify_reflected_eq_reflection (A : ℝ) (hA : 0 < A)
    (I : Finset ℕ) (c : ℕ → ℝ) :
    complexify (reflectedL2 A hA I c) = reflection (complexify (forwardL2 A hA I c)) := by
  apply Lp.ext
  filter_upwards [reflection_coe_ae (complexify (forwardL2 A hA I c)),
    complexify_coe_ae (reflectedL2 A hA I c),
    (reflectedProfile_memLp hA I c).coeFn_toLp,
    (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
      (complexify_coe_ae (forwardL2 A hA I c)),
    (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
      ((forwardProfile_memLp hA I c).coeFn_toLp)] with x hR hG hg hF hf
  change reflectedL2 A hA I c x = reflectedProfile A I c x at hg
  change forwardL2 A hA I c (-x) = forwardProfile A I c (-x) at hf
  rw [hR, hG, hg, hF, hf, reflectedProfile_eq_forwardProfile_neg hA]

/-- The actual fixed-cutoff Mangoldt state is its literal original-channel finite profile. -/
theorem mangoldtAt_eq_finiteProfile (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    mangoldtAt A hA U N =
      finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false mangoldtCoefficient := by
  unfold mangoldtAt
  rw [forwardComplex_eq_sum_translates, sourceL2_eq_originalSourceL2]
  rfl

/-- The fixed-cutoff centered forward state retains every original beta coefficient. -/
theorem centeredForwardAt_eq_finiteProfile (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    centeredForwardAt A hA U N =
      finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
        (centeredCoefficient U) := by
  unfold centeredForwardAt
  rw [forwardComplex_eq_sum_translates, sourceL2_eq_originalSourceL2]
  rfl

/-- The exact reflected row is R applied to its forward centered state, with no minus sign. -/
theorem reflectedMobiusAt_eq_reflection_forward (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    reflectedMobiusAt A hA U N = reflection (centeredForwardAt A hA U N) :=
  complexify_reflected_eq_reflection A hA (Finset.Ioc U N) _

/-- The reflected centered row uses the negative log-shift original channel. -/
theorem reflectedMobiusAt_eq_finiteProfile (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    reflectedMobiusAt A hA U N =
      finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) true false
        (centeredCoefficient U) := by
  rw [reflectedMobiusAt_eq_reflection_forward, centeredForwardAt_eq_finiteProfile]
  simp only [finiteProfile, map_sum, map_smul, orbitAtom_reflection_original
    (originalSourceL2_even A hA), Bool.not_false]

/-- The literal weighted Mangoldt state belongs to the fixed-source orbit. -/
theorem mangoldtAt_mem_finiteOrbit (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    mangoldtAt A hA U N ∈ finiteOrbit (originalSourceL2 A hA) (Finset.Ioc U N) := by
  rw [mangoldtAt_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _

/-- The centered forward state belongs without replacing signed coefficients by absolute values. -/
theorem centeredForwardAt_mem_finiteOrbit (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    centeredForwardAt A hA U N ∈ finiteOrbit (originalSourceL2 A hA) (Finset.Ioc U N) := by
  rw [centeredForwardAt_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _

/-- Actual reflection and the opposite shift give membership of the original reflected row. -/
theorem reflectedMobiusAt_mem_finiteOrbit (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    reflectedMobiusAt A hA U N ∈ finiteOrbit (originalSourceL2 A hA) (Finset.Ioc U N) := by
  rw [reflectedMobiusAt_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _

/-- The fixed-cutoff forward row specializes exactly to the existing actual complex row. -/
theorem centeredForwardAt_actual (A : ℝ) (hA : 1 ≤ A) :
    centeredForwardAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) =
      centeredMobiusComplexL2 A hA := rfl

/-- The actual Mangoldt class has the same literal profile at the unchanged long axes. -/
theorem mangoldtComplexL2_eq_finiteProfile (A : ℝ) (hA : 1 ≤ A) :
    mangoldtComplexL2 A hA =
      finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
        mangoldtCoefficient := by
  rw [mangoldtComplex_eq_sum, sourceL2_eq_originalSourceL2]
  rfl

/-- The actual centered forward class keeps U=floor(A²) in every retained coefficient. -/
theorem centeredMobiusComplexL2_eq_finiteProfile (A : ℝ) (hA : 1 ≤ A) :
    centeredMobiusComplexL2 A hA =
      finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
        (centeredCoefficient (vaughanCutoff A)) := by
  rw [centeredMobiusComplex_eq_sum, sourceL2_eq_originalSourceL2]
  rfl

/-- Actual centered reflection has the same negative-shift profile as the fixed-cutoff adapter. -/
theorem centeredReflectedComplexL2_eq_finiteProfile (A : ℝ) (hA : 1 ≤ A) :
    centeredReflectedComplexL2 A hA =
      finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) true false
        (centeredCoefficient (vaughanCutoff A)) := by
  change reflectedMobiusAt A (by linarith) (vaughanCutoff A) (sourceKernelCutoff A) = _
  exact reflectedMobiusAt_eq_finiteProfile A (by linarith) _ _

/-- The actual weighted Mangoldt state belongs to the original source's literal long orbit. -/
theorem mangoldtComplexL2_mem_finiteOrbit (A : ℝ) (hA : 1 ≤ A) :
    mangoldtComplexL2 A hA ∈ finiteOrbit (originalSourceL2 A (by linarith)) (longInventory A) := by
  rw [mangoldtComplexL2_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _

/-- The actual centered forward state has the same fixed-A literal orbit. -/
theorem centeredMobiusComplexL2_mem_finiteOrbit (A : ℝ) (hA : 1 ≤ A) :
    centeredMobiusComplexL2 A hA ∈
      finiteOrbit (originalSourceL2 A (by linarith)) (longInventory A) := by
  rw [centeredMobiusComplexL2_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _

/-- The actual reflected centered state preserves membership and both original long cutoffs. -/
theorem centeredReflectedComplexL2_mem_finiteOrbit (A : ℝ) (hA : 1 ≤ A) :
    centeredReflectedComplexL2 A hA ∈
      finiteOrbit (originalSourceL2 A (by linarith)) (longInventory A) := by
  rw [centeredReflectedComplexL2_eq_finiteProfile]
  exact finiteProfile_mem _ _ _ _ _


/-- The actual original source retains the reflected sum-log kernel, not a stationary diagonal. -/
theorem source_reflected_atoms (A : ℝ) (hA : 0 < A) (u v : ℝ) :
    ⟪translation u (originalSourceL2 A hA),
      reflection (translation v (originalSourceL2 A hA))⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (u + v) : ℂ) := by
  rw [← sourceL2_eq_originalSourceL2]
  exact original_reflected_kernel A hA u v

/-- The deleted diagonal uses identical underlying arithmetic indices with reflected orientation. -/
theorem centeredDiagonalAt_eq_reflected_atoms (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    centeredDiagonalAt A U N =
      ∑ m ∈ Finset.Ioc U N,
        (star (mangoldtCoefficient m) * centeredCoefficient U m *
          ⟪translation (Real.log (m : ℝ)) (originalSourceL2 A hA),
            reflection (translation (Real.log (m : ℝ)) (originalSourceL2 A hA))⟫_ℂ).re := by
  unfold centeredDiagonalAt diagonal SourceCutoffFlux.sourceKernel
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (show 0 < m by have := (Finset.mem_Ioc.mp hm).1; omega)
  rw [source_reflected_atoms]
  simp only [mangoldtCoefficient, centeredCoefficient, Complex.star_def,
    Complex.conj_ofReal, ← Complex.ofReal_mul, Complex.ofReal_re]
  unfold sourcePlainWeight
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', Real.sqrt_mul hmpos.le]
  ring

/-- Arithmetic diagonal indices have distinct labels in forward/reflected coordinates. -/
theorem arithmeticDiagonal_reflected_labels_distinct (I : Finset ℕ) (m : ↥I) :
    ((false, false, m) : OrbitIndex I) ≠ ((true, false, m) : OrbitIndex I) := by
  simp

/-- The fixed-cutoff operator readout retains the entire signed profile pairing and compensation. -/
theorem readoutAt_eq_reflected_profiles (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA U N =
      (⟪finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          mangoldtCoefficient,
        reflection (finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          (centeredCoefficient U))⟫_ℂ).re -
      centeredDiagonalAt A U N - mainTermAt A U N := by
  unfold readoutAt CompensatedReadout.compensatedReadout stateAt compensationAt
  rw [CompensatedReadout.interactionOperator_readout, mangoldtAt_eq_finiteProfile,
    reflectedMobiusAt_eq_reflection_forward, centeredForwardAt_eq_finiteProfile]
  ring

/-- The exact cutoff joint remainder has the same reflected profile form before any estimate. -/
theorem jointAt_eq_reflected_profiles (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    jointAt A U N =
      (⟪finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          mangoldtCoefficient,
        reflection (finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
          (centeredCoefficient U))⟫_ℂ).re -
      centeredDiagonalAt A U N - mainTermAt A U N := by
  rw [← readoutAt_eq_jointAt]
  exact readoutAt_eq_reflected_profiles A hA U N

/-- At both actual floors, full centered deletion and the independent main formula remain intact. -/
theorem arithmeticReadout_eq_reflected_profiles (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      (⟪finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
          mangoldtCoefficient,
        reflection (finiteProfile (originalSourceL2 A (by linarith)) (longInventory A)
          false false (centeredCoefficient (vaughanCutoff A)))⟫_ℂ).re -
      centeredDeletedDiagonal A - independentMainTerm A := by
  rw [← readoutAt_actual A hA, readoutAt_eq_reflected_profiles,
    centeredDiagonalAt_actual, mainTermAt_actual A hA]
  rfl

/-- The signed profile formula is the unchanged half-Vaughan main-subtracted target. -/
theorem actual_signed_profile_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    (⟪finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
        mangoldtCoefficient,
      reflection (finiteProfile (originalSourceL2 A (by linarith)) (longInventory A)
        false false (centeredCoefficient (vaughanCutoff A)))⟫_ℂ).re -
      centeredDeletedDiagonal A - independentMainTerm A =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  rw [← arithmeticReadout_eq_reflected_profiles]
  exact arithmeticReadout_eq_joint A hA

/-- The old diagonal can be used only with its exact centering correction still subtracted. -/
theorem arithmeticReadout_eq_profiles_with_centering (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      (⟪finiteProfile (originalSourceL2 A (by linarith)) (longInventory A) false false
          mangoldtCoefficient,
        reflection (finiteProfile (originalSourceL2 A (by linarith)) (longInventory A)
          false false (centeredCoefficient (vaughanCutoff A)))⟫_ℂ).re -
      (typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A) -
      independentMainTerm A := by
  rw [arithmeticReadout_eq_reflected_profiles,
    centeredDeletedDiagonal_eq_old_diagonal_add_centering]


/-- The literal original-channel atom interaction keeps both signed arithmetic coefficients. -/
def weightedAtomInteraction (A : ℝ) (hA : 0 < A) (U m n : ℕ) : ℝ :=
  (star (mangoldtCoefficient m) * centeredCoefficient U n *
    ⟪translation (Real.log (m : ℝ)) (originalSourceL2 A hA),
      reflection (translation (Real.log (n : ℝ)) (originalSourceL2 A hA))⟫_ℂ).re

/-- The actual full original-channel pairing expands before deleting any arithmetic index. -/
theorem weighted_profile_pairing_eq_sum (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    (⟪finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
        mangoldtCoefficient,
      reflection (finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
        (centeredCoefficient U))⟫_ℂ).re =
      ∑ m ∈ Finset.Ioc U N, ∑ n ∈ Finset.Ioc U N,
        weightedAtomInteraction A hA U m n := by
  simp only [finiteProfile, map_sum, map_smul]
  rw [sum_inner]
  simp only [inner_sum, inner_smul_left, inner_smul_right, Complex.re_sum,
    weightedAtomInteraction, starRingEnd_apply]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  simp only [orbitAtom, signedLog, Bool.false_eq_true, ↓reduceIte]
  congr 1
  ring

/-- Removing the diagonal deletes equality of arithmetic indices, not channel labels. -/
theorem jointAt_eq_arithmetic_offDiagonal_atoms (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    jointAt A U N =
      (∑ m ∈ Finset.Ioc U N, ∑ n ∈ Finset.Ioc U N,
        if m = n then 0 else weightedAtomInteraction A hA U m n) - mainTermAt A U N := by
  classical
  rw [jointAt_eq_reflected_profiles A hA, weighted_profile_pairing_eq_sum,
    centeredDiagonalAt_eq_reflected_atoms A hA]
  change (∑ m ∈ Finset.Ioc U N, ∑ n ∈ Finset.Ioc U N,
      weightedAtomInteraction A hA U m n) -
    (∑ m ∈ Finset.Ioc U N, weightedAtomInteraction A hA U m m) - _ = _
  congr 1
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hdiag :
      (∑ n ∈ Finset.Ioc U N,
        if m = n then weightedAtomInteraction A hA U m n else 0) =
      weightedAtomInteraction A hA U m m := by simp [hm]
  rw [← hdiag, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- Actual floors retain exactly the arithmetic m=n deletion and the independent main formula. -/
theorem arithmeticReadout_eq_arithmetic_offDiagonal_atoms (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      (∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
        if m = n then 0 else
          weightedAtomInteraction A (by linarith) (vaughanCutoff A) m n) -
      independentMainTerm A := by
  rw [← readoutAt_actual A hA, readoutAt_eq_jointAt,
    jointAt_eq_arithmetic_offDiagonal_atoms A (by linarith), mainTermAt_actual A hA]
  rfl

/-- Exact forward Mangoldt coordinates in the labelled four-channel family. -/
def mangoldtCoordinates (I : Finset ℕ) : OrbitIndex I → ℂ :=
  embedChannel I false false mangoldtCoefficient

/-- The plus-centered forward row coordinates retain the original beta normalization. -/
def centeredCoordinates (U : ℕ) (I : Finset ℕ) : OrbitIndex I → ℂ :=
  embedChannel I false false (centeredCoefficient U)

/-- The literal fixed-cutoff Mangoldt state is synthesized from its exact channel selector. -/
theorem mangoldtAt_eq_synthesis (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    mangoldtAt A hA U N = synthesis (originalSourceL2 A hA) (Finset.Ioc U N)
      (mangoldtCoordinates (Finset.Ioc U N)) := by
  rw [mangoldtAt_eq_finiteProfile]
  exact (synthesis_embedChannel _ _ false false _).symm

/-- The full signed centered forward state has the same exact synthesis convention. -/
theorem centeredForwardAt_eq_synthesis (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    centeredForwardAt A hA U N = synthesis (originalSourceL2 A hA) (Finset.Ioc U N)
      (centeredCoordinates U (Finset.Ioc U N)) := by
  rw [centeredForwardAt_eq_finiteProfile]
  exact (synthesis_embedChannel _ _ false false _).symm

/-- The reflected row is synthesis in the opposite-shift original channel, with no extra minus. -/
theorem reflectedMobiusAt_eq_synthesis (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    reflectedMobiusAt A hA U N = synthesis (originalSourceL2 A hA) (Finset.Ioc U N)
      (embedChannel (Finset.Ioc U N) true false (centeredCoefficient U)) := by
  rw [reflectedMobiusAt_eq_finiteProfile]
  exact (synthesis_embedChannel _ _ true false _).symm

/-- The entire fixed-cutoff compensated readout is an exact signed reflected matrix form. -/
theorem readoutAt_eq_reflected_matrix (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    readoutAt A hA U N =
      (∑ i, ∑ j, star (mangoldtCoordinates (Finset.Ioc U N) i) *
        centeredCoordinates U (Finset.Ioc U N) j *
        reflectedMatrix (originalSourceL2 A hA) (Finset.Ioc U N) i j).re -
      centeredDiagonalAt A U N - mainTermAt A U N := by
  rw [readoutAt_eq_reflected_profiles, finiteProfile_reflected_coordinates]
  rfl

/-- The cutoff joint remainder is identical to the full reflected coordinate readout. -/
theorem jointAt_eq_reflected_matrix (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    jointAt A U N =
      (∑ i, ∑ j, star (mangoldtCoordinates (Finset.Ioc U N) i) *
        centeredCoordinates U (Finset.Ioc U N) j *
        reflectedMatrix (originalSourceL2 A hA) (Finset.Ioc U N) i j).re -
      centeredDiagonalAt A U N - mainTermAt A U N := by
  rw [← readoutAt_eq_jointAt]
  exact readoutAt_eq_reflected_matrix A hA U N

/-- The actual floors preserve the full independent compensation in the reflected matrix form. -/
theorem arithmeticReadout_eq_reflected_matrix (A : ℝ) (hA : 1 ≤ A) :
    arithmeticReadout A hA =
      (∑ i, ∑ j, star (mangoldtCoordinates (longInventory A) i) *
        centeredCoordinates (vaughanCutoff A) (longInventory A) j *
        reflectedMatrix (originalSourceL2 A (by linarith)) (longInventory A) i j).re -
      centeredDeletedDiagonal A - independentMainTerm A := by
  rw [arithmeticReadout_eq_reflected_profiles, finiteProfile_reflected_coordinates]
  rfl

/-- Signed matrix reconstruction is exactly half the original Vaughan operator minus M. -/
theorem actual_signed_matrix_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    (∑ i, ∑ j, star (mangoldtCoordinates (longInventory A) i) *
      centeredCoordinates (vaughanCutoff A) (longInventory A) j *
      reflectedMatrix (originalSourceL2 A (by linarith)) (longInventory A) i j).re -
      centeredDeletedDiagonal A - independentMainTerm A =
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A := by
  rw [← arithmeticReadout_eq_reflected_matrix]
  exact arithmeticReadout_eq_joint A hA

end FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
