# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceRegularScaleProfiles.Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c12f2d98c2d9f48c9a0c1589a6eb09d21249c6e2` · SHA-256 `b5043f40e65b9160d1de415ada0c8abe2d7f85f500601fcf1055399eca632e28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularScale.Variant454db052cf5edd550e3cdfa40a5499dc447f0fda96cab0ba171b36fe9983f9d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"454db052cf5edd550e3cdfa40a5499dc447f0fda96cab0ba171b36fe9983f9d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RegularScale.Variant454db052cf5edd550e3cdfa40a5499dc447f0fda96cab0ba171b36fe9983f9d5","mathematical_subject":"Analysis.Calculus","original_sha256":"454db052cf5edd550e3cdfa40a5499dc447f0fda96cab0ba171b36fe9983f9d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/regent-mainterm/overlay/SourceRegularScaleProfiles.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceWeightedOrbitAdapter
import FormalResearch.RiemannHypothesis.SourceScaleDerivative
import Mathlib.Analysis.InnerProductSpace.Calculus

/-!
# Actual weighted profiles on regular source scales

Both literal natural floors are locally frozen by explicit strict lower
inequalities. The original normalized L² source varies in Hilbert norm; its
scale derivative is p_A. Arithmetic coefficients, centering and logarithmic
shifts remain fixed on the resulting neighborhood. Reflection has no dual minus.

This review adapter retains its unmerged Vaughan dependency closure. It proves
local calculus, not a cutoff crossing limit, a main-term derivative or any signed
uniform budget. Author: grwtsk contributors. Developed with OpenAI Codex; checked
by Lean under the recorded pinned environment.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RegularScale.Variant454db052cf5edd550e3cdfa40a5499dc447f0fda96cab0ba171b36fe9983f9d5

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceRegularScaleProfiles

open MeasureTheory Filter Set
open scoped InnerProductSpace Topology BigOperators
open SourceReflectionDuality SourceWeightedOrbitAdapter SourceScaleDerivative
open SourceScaleL2Continuity SourceScaleVariation SourceArithmeticOrbit
open SourceVaughanHankel SourceReflectionArithmetic SourceCompensatedReadout
open SourceCutoffFlux SourcePairing SourcePureRotationObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open EstimateBetaCentering Realization

/-- A positive regular scale is strictly above the lower event of each natural floor. -/
def RegularScale (A : ℝ) : Prop :=
  0 < A ∧ (vaughanCutoff A : ℝ) < A ^ 2 ∧
    (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)

/-- Noninteger cutoff arguments supply the exact strict-lower hypotheses. -/
theorem regularScale_of_noninteger {A : ℝ} (hA : 0 < A)
    (hU : ∀ n : ℕ, A ^ 2 ≠ (n : ℝ))
    (hN : ∀ n : ℕ, Real.exp (2 * A) ≠ (n : ℝ)) : RegularScale A := by
  refine ⟨hA, ?_, ?_⟩
  · exact lt_of_le_of_ne (Nat.floor_le (sq_nonneg A)) (hU _).symm
  · exact lt_of_le_of_ne (Nat.floor_le (Real.exp_pos _).le) (hN _).symm

/-- Both original cutoffs are exactly constant on one neighborhood of a regular scale. -/
theorem cutoffs_eventually_eq {A : ℝ} (hA : RegularScale A) :
    ∀ᶠ B in nhds A, vaughanCutoff B = vaughanCutoff A ∧
      sourceKernelCutoff B = sourceKernelCutoff A := by
  have hU := floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => B ^ 2) (by fun_prop) hA.2.1
  have hN := floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => Real.exp (2 * B)) (by fun_prop) hA.2.2
  exact hU.and hN

/-- Local inventory and every plus-centered coefficient retain their exact values. -/
theorem inventory_coefficients_eventually_eq {A : ℝ} (hA : RegularScale A) :
    ∀ᶠ B in nhds A, longInventory B = longInventory A ∧
      centeredCoefficient (vaughanCutoff B) = centeredCoefficient (vaughanCutoff A) := by
  filter_upwards [cutoffs_eventually_eq hA] with B hB
  simp only [longInventory, hB.1, hB.2, and_self]

/-- Total family with the literal Mangoldt inventory and inverse-square-root coefficients. -/
def mangoldtState (A : ℝ) : ComplexL2 :=
  finiteProfile (originalSourceState A) (longInventory A) false false mangoldtCoefficient

/-- Total forward family with the literal plus-centered Möbius coefficients internal to the row. -/
def centeredForwardState (A : ℝ) : ComplexL2 :=
  finiteProfile (originalSourceState A) (longInventory A) false false
    (centeredCoefficient (vaughanCutoff A))

/-- The actual reflected family is R of its same forward row, without a dual minus. -/
def reflectedState (A : ℝ) : ComplexL2 := reflection (centeredForwardState A)

/-- The Mangoldt family equals the prior literal construction at each positive scale. -/
theorem mangoldtState_eq_mangoldtAt {A : ℝ} (hA : 0 < A) :
    mangoldtState A = mangoldtAt A hA (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [mangoldtAt_eq_finiteProfile, ← originalSourceState_eq hA]
  rfl

/-- The forward family equals the exact centered finite construction at positive scales. -/
theorem centeredForwardState_eq_centeredForwardAt {A : ℝ} (hA : 0 < A) :
    centeredForwardState A =
      centeredForwardAt A hA (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [centeredForwardAt_eq_finiteProfile, ← originalSourceState_eq hA]
  rfl

/-- Positive-scale reflection identifies the existing literal reflected centered row exactly. -/
theorem reflectedState_eq_reflectedMobiusAt {A : ℝ} (hA : 0 < A) :
    reflectedState A = reflectedMobiusAt A hA (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [reflectedMobiusAt_eq_reflection_forward,
    ← centeredForwardState_eq_centeredForwardAt hA]
  rfl

/-- The original actual Mangoldt class is recovered without a new normalization. -/
theorem mangoldtState_actual (A : ℝ) (hA : 1 ≤ A) :
    mangoldtState A = mangoldtComplexL2 A hA := by
  rw [mangoldtComplexL2_eq_finiteProfile, ← originalSourceState_eq (by linarith)]
  rfl

/-- The original actual forward centered class uses exactly U=floor(A²). -/
theorem centeredForwardState_actual (A : ℝ) (hA : 1 ≤ A) :
    centeredForwardState A = centeredMobiusComplexL2 A hA := by
  rw [centeredMobiusComplexL2_eq_finiteProfile, ← originalSourceState_eq (by linarith)]
  rfl

/-- The original actual reflected class has the same reflection and literal cutoffs. -/
theorem reflectedState_actual (A : ℝ) (hA : 1 ≤ A) :
    reflectedState A = centeredReflectedComplexL2 A hA := by
  exact reflectedState_eq_reflectedMobiusAt (by linarith)

/-- Full Mangoldt derivative with the same inventory, weights and fixed logarithmic shifts. -/
def mangoldtDerivative (A : ℝ) : ComplexL2 :=
  finiteProfile (scaleDerivativeState A) (longInventory A) false false mangoldtCoefficient

/-- Full centered forward derivative with all original signs and centering retained. -/
def centeredForwardDerivative (A : ℝ) : ComplexL2 :=
  finiteProfile (scaleDerivativeState A) (longInventory A) false false
    (centeredCoefficient (vaughanCutoff A))

/-- Reflection transports the derivative of the same centered row. -/
def reflectedDerivative (A : ℝ) : ComplexL2 := reflection (centeredForwardDerivative A)

/-- The literal varying Mangoldt family has its exact Hilbert-norm derivative at regular scales. -/
theorem mangoldtState_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt mangoldtState (mangoldtDerivative A) A := by
  have hd := finiteProfile_hasDerivAt hA.1 (longInventory A) false false mangoldtCoefficient
  apply hd.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [mangoldtState, hB.1]

/-- The centered forward norm derivative freezes both floors and the entire plus-centered row. -/
theorem centeredForwardState_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt centeredForwardState (centeredForwardDerivative A) A := by
  have hd := finiteProfile_hasDerivAt hA.1 (longInventory A) false false
    (centeredCoefficient (vaughanCutoff A))
  apply hd.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [centeredForwardState, hB.1, hB.2]

/-- The reflected norm derivative has no additional minus sign. -/
theorem reflectedState_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt reflectedState (reflectedDerivative A) A := by
  let R : ComplexL2 →L[ℝ] ComplexL2 :=
    reflection.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  exact R.hasFDerivAt.comp_hasDerivAt A (centeredForwardState_hasDerivAt hA)


/-- Local Hilbert-norm C¹ of the literal Mangoldt family follows after both floors are frozen. -/
theorem mangoldtState_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 mangoldtState A := by
  have hc := (finiteProfile_contDiffOn (longInventory A) false false
    mangoldtCoefficient).contDiffAt (Ioi_mem_nhds hA.1)
  apply hc.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [mangoldtState, hB.1]

/-- The full centered forward family is norm C¹ at regular scales only. -/
theorem centeredForwardState_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 centeredForwardState A := by
  have hc := (finiteProfile_contDiffOn (longInventory A) false false
    (centeredCoefficient (vaughanCutoff A))).contDiffAt (Ioi_mem_nhds hA.1)
  apply hc.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [centeredForwardState, hB.1, hB.2]

/-- Spatial reflection preserves the actual local norm C¹ result. -/
theorem reflectedState_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 reflectedState A := by
  let R : ComplexL2 →L[ℝ] ComplexL2 :=
    reflection.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  exact R.contDiff.contDiffAt.comp A (centeredForwardState_contDiffAt hA)

/-- The computed Mangoldt norm derivative has the exact original coefficients. -/
theorem mangoldtState_deriv {A : ℝ} (hA : RegularScale A) :
    deriv mangoldtState A = mangoldtDerivative A := (mangoldtState_hasDerivAt hA).deriv

/-- The computed centered forward norm derivative retains the original signs. -/
theorem centeredForwardState_deriv {A : ℝ} (hA : RegularScale A) :
    deriv centeredForwardState A = centeredForwardDerivative A :=
  (centeredForwardState_hasDerivAt hA).deriv

/-- The computed reflected norm derivative tracks the same weighted state. -/
theorem reflectedState_deriv {A : ℝ} (hA : RegularScale A) :
    deriv reflectedState A = reflectedDerivative A := (reflectedState_hasDerivAt hA).deriv

/-- Literal signed interaction, before subtracting its centered diagonal or main term. -/
def sourceInteraction (A : ℝ) : ℝ := (⟪mangoldtState A, reflectedState A⟫_ℂ).re

/-- The full signed work density retains the two product-rule terms jointly. -/
def interactionDerivative (A : ℝ) : ℝ :=
  (⟪mangoldtState A, reflectedDerivative A⟫_ℂ +
    ⟪mangoldtDerivative A, reflectedState A⟫_ℂ).re

/-- Exact Hilbert product rule before any absolute-value estimate. -/
theorem sourceInteraction_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt sourceInteraction (interactionDerivative A) A := by
  exact Complex.reCLM.hasFDerivAt.comp_hasDerivAt A
    ((mangoldtState_hasDerivAt hA).inner ℂ (reflectedState_hasDerivAt hA))

/-- The actual signed product-rule value is the derivative of the complete interaction. -/
theorem sourceInteraction_deriv {A : ℝ} (hA : RegularScale A) :
    deriv sourceInteraction A = interactionDerivative A :=
  (sourceInteraction_hasDerivAt hA).deriv

/-- The full signed interaction is locally C¹ wherever both literal floors are regular. -/
theorem sourceInteraction_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 sourceInteraction A := by
  exact Complex.reCLM.contDiff.contDiffAt.comp A
    ((mangoldtState_contDiffAt hA).inner ℂ (reflectedState_contDiffAt hA))

/-- The interaction specializes exactly to the old actual Mangoldt/reflected pairing. -/
theorem sourceInteraction_actual (A : ℝ) (hA : 1 ≤ A) :
    sourceInteraction A = (⟪mangoldtComplexL2 A hA,
      centeredReflectedComplexL2 A hA⟫_ℂ).re := by
  rw [sourceInteraction, mangoldtState_actual A hA, reflectedState_actual A hA]

/-- The scale-one lower event is excluded explicitly, not silently treated as a regular point. -/
theorem not_regularScale_one : ¬ RegularScale 1 := by
  intro h
  norm_num [RegularScale, vaughanCutoff] at h


/-- Reflected atom interaction with both literal logarithmic orientations visible. -/
def reflectedAtomInteraction (A u v : ℝ) : ℂ :=
  ⟪translation u (originalSourceState A),
    reflection (translation v (originalSourceState A))⟫_ℂ

/-- Exact two-term scale derivative of the same reflected atom interaction. -/
def reflectedAtomDerivative (A u v : ℝ) : ℂ :=
  ⟪translation u (originalSourceState A),
    reflection (translation v (scaleDerivativeState A))⟫_ℂ +
  ⟪translation u (scaleDerivativeState A),
    reflection (translation v (originalSourceState A))⟫_ℂ

/-- Positive-scale atom interactions equal the original source's sum-log correlation. -/
theorem reflectedAtomInteraction_source {A : ℝ} (hA : 0 < A) (u v : ℝ) :
    reflectedAtomInteraction A u v =
      (sourceCorrelation explicitSecondDerivative A (u + v) : ℂ) := by
  rw [reflectedAtomInteraction, originalSourceState_eq hA]
  exact source_reflected_atoms A hA u v

/-- This reflected derivative uses the actual norm derivative and preserves both terms. -/
theorem reflectedAtomInteraction_hasDerivAt {A : ℝ} (hA : 0 < A) (u v : ℝ) :
    HasDerivAt (fun B => reflectedAtomInteraction B u v) (reflectedAtomDerivative A u v) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation u).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let R : ComplexL2 →L[ℝ] ComplexL2 :=
    reflection.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let P : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation v).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hf := L.hasFDerivAt.comp_hasDerivAt A (originalSourceState_hasDerivAt hA)
  have hg := R.hasFDerivAt.comp_hasDerivAt A
    (P.hasFDerivAt.comp_hasDerivAt A (originalSourceState_hasDerivAt hA))
  exact hf.inner ℂ hg

/-- Complete centered deletion, with equality of the underlying arithmetic indices. -/
def centeredDiagonalState (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A,
    (star (mangoldtCoefficient m) * centeredCoefficient (vaughanCutoff A) m *
      reflectedAtomInteraction A (Real.log (m : ℝ)) (Real.log (m : ℝ))).re

/-- Complete centered diagonal derivative, with unchanged coefficients and both source terms. -/
def centeredDiagonalDerivative (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A,
    (star (mangoldtCoefficient m) * centeredCoefficient (vaughanCutoff A) m *
      reflectedAtomDerivative A (Real.log (m : ℝ)) (Real.log (m : ℝ))).re

/-- The diagonal family equals the exact prior fixed-cutoff centered diagonal. -/
theorem centeredDiagonalState_eq_centeredDiagonalAt {A : ℝ} (hA : 0 < A) :
    centeredDiagonalState A =
      centeredDiagonalAt A (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [centeredDiagonalAt_eq_reflected_atoms A hA]
  unfold centeredDiagonalState longInventory reflectedAtomInteraction
  rw [originalSourceState_eq hA]

/-- The actual diagonal is recovered with all centering compensation, not the old diagonal. -/
theorem centeredDiagonalState_actual {A : ℝ} (hA : 0 < A) :
    centeredDiagonalState A = centeredDeletedDiagonal A := by
  rw [centeredDiagonalState_eq_centeredDiagonalAt hA, centeredDiagonalAt_actual]

/-- Both floors freeze in the complete centered diagonal derivative. -/
theorem centeredDiagonalState_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt centeredDiagonalState (centeredDiagonalDerivative A) A := by
  have hd : HasDerivAt (fun B => ∑ m ∈ longInventory A,
      (star (mangoldtCoefficient m) * centeredCoefficient (vaughanCutoff A) m *
        reflectedAtomInteraction B (Real.log (m : ℝ)) (Real.log (m : ℝ))).re)
      (centeredDiagonalDerivative A) A := by
    apply HasDerivAt.fun_sum
    intro m _
    exact Complex.reCLM.hasFDerivAt.comp_hasDerivAt A
      ((reflectedAtomInteraction_hasDerivAt hA.1 _ _).const_mul _)
  apply hd.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [centeredDiagonalState, hB.1, hB.2]

/-- The original literal centered diagonal has the same derivative on the positive neighborhood. -/
theorem centeredDeletedDiagonal_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt centeredDeletedDiagonal (centeredDiagonalDerivative A) A := by
  apply (centeredDiagonalState_hasDerivAt hA).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA.1] with B hB
  exact (centeredDiagonalState_actual hB).symm

/-- Actual centered diagonal derivative as an ordinary scalar derivative. -/
theorem centeredDeletedDiagonal_deriv {A : ℝ} (hA : RegularScale A) :
    deriv centeredDeletedDiagonal A = centeredDiagonalDerivative A :=
  (centeredDeletedDiagonal_hasDerivAt hA).deriv

/-- The half covariance retains its actual full signed pairing and complete centered deletion. -/
def covarianceHalfState (A : ℝ) : ℝ := sourceInteraction A - centeredDiagonalState A

/-- The full half covariance derivative retains the signed interaction minus centered deletion. -/
def covarianceHalfDerivative (A : ℝ) : ℝ :=
  interactionDerivative A - centeredDiagonalDerivative A

/-- Exact product-rule and centered-deletion calculus before any main-term subtraction. -/
theorem covarianceHalfState_hasDerivAt {A : ℝ} (hA : RegularScale A) :
    HasDerivAt covarianceHalfState (covarianceHalfDerivative A) A :=
  (sourceInteraction_hasDerivAt hA).sub (centeredDiagonalState_hasDerivAt hA)

/-- The half covariance family is the original actual operator value at every A≥1. -/
theorem covarianceHalfState_actual (A : ℝ) (hA : 1 ≤ A) :
    covarianceHalfState A = VaughanOperatorReview.covarianceOperatorValue A / 2 := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA,
    covarianceHalfState, sourceInteraction_actual A hA, complex_pairing_eq_source A hA,
    Complex.ofReal_re, centeredDiagonalState_actual (by linarith)]

/-- The unchanged original covariance operator has its derivative at regular scales above one. -/
theorem covarianceOperator_half_hasDerivAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    HasDerivAt (fun B => VaughanOperatorReview.covarianceOperatorValue B / 2)
      (covarianceHalfDerivative A) A := by
  apply (covarianceHalfState_hasDerivAt hA).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds h1] with B hB
  exact (covarianceHalfState_actual B hB.le).symm

/-- The independent original main term remains in the compensated readout without modification. -/
def compensatedState (A : ℝ) : ℝ :=
  covarianceHalfState A - SourceSamplingLedger.independentMainTerm A

/-- Exact identification with the prior literal compensated readout, not a new RH target. -/
theorem compensatedState_actual (A : ℝ) (hA : 1 ≤ A) :
    compensatedState A = arithmeticReadout A hA := by
  rw [arithmeticReadout_eq_joint A hA, compensatedState, covarianceHalfState_actual A hA]

/-- Conditional calculus only: an independent main-term derivative must still be constructed. -/
theorem compensatedState_hasDerivAt_of_mainTerm {A m' : ℝ} (hA : RegularScale A)
    (hM : HasDerivAt SourceSamplingLedger.independentMainTerm m' A) :
    HasDerivAt compensatedState (covarianceHalfDerivative A - m') A :=
  (covarianceHalfState_hasDerivAt hA).sub hM


/-- An exact natural square-cutoff event is outside the proved regular-scale calculus. -/
theorem not_regularScale_of_square_nat {A : ℝ} (n : ℕ) (h : A ^ 2 = (n : ℝ)) :
    ¬ RegularScale A := by
  intro hA
  have hs := hA.2.1
  unfold vaughanCutoff at hs
  rw [h, Nat.floor_natCast] at hs
  exact (lt_irrefl _ hs)

/-- An exact natural exponential-cutoff event is likewise excluded. -/
theorem not_regularScale_of_upper_nat {A : ℝ} (n : ℕ)
    (h : Real.exp (2 * A) = (n : ℝ)) : ¬ RegularScale A := by
  intro hA
  have hs := hA.2.2
  unfold sourceKernelCutoff sourceUpper at hs
  rw [h, Nat.floor_natCast] at hs
  exact (lt_irrefl _ hs)

/-- The regularity contract is exactly positive scale plus absence of either natural event. -/
theorem regularScale_iff_no_cutoff_event (A : ℝ) :
    RegularScale A ↔ 0 < A ∧ (∀ n : ℕ, A ^ 2 ≠ (n : ℝ)) ∧
      (∀ n : ℕ, Real.exp (2 * A) ≠ (n : ℝ)) := by
  constructor
  · intro hA
    exact ⟨hA.1, fun n h => not_regularScale_of_square_nat n h hA,
      fun n h => not_regularScale_of_upper_nat n h hA⟩
  · rintro ⟨hA, hU, hN⟩
    exact regularScale_of_noninteger hA hU hN

/-- Reflected atom interactions inherit actual Hilbert-norm C¹ from the source. -/
theorem reflectedAtomInteraction_contDiffAt {A : ℝ} (hA : 0 < A) (u v : ℝ) :
    ContDiffAt ℝ 1 (fun B => reflectedAtomInteraction B u v) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation u).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let R : ComplexL2 →L[ℝ] ComplexL2 :=
    reflection.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let P : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation v).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hf := L.contDiff.contDiffAt.comp A (originalSourceState_contDiffAt hA)
  have hg := R.contDiff.contDiffAt.comp A
    (P.contDiff.contDiffAt.comp A (originalSourceState_contDiffAt hA))
  exact hf.inner ℂ hg

/-- Complete centered diagonal C¹ regularity follows after freezing both actual floors. -/
theorem centeredDiagonalState_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 centeredDiagonalState A := by
  have hc : ContDiffAt ℝ 1 (fun B => ∑ m ∈ longInventory A,
      (star (mangoldtCoefficient m) * centeredCoefficient (vaughanCutoff A) m *
        reflectedAtomInteraction B (Real.log (m : ℝ)) (Real.log (m : ℝ))).re) A := by
    apply ContDiffAt.sum
    intro m _
    exact Complex.reCLM.contDiff.contDiffAt.comp A
      (contDiffAt_const.mul (reflectedAtomInteraction_contDiffAt hA.1 _ _))
  apply hc.congr_of_eventuallyEq
  filter_upwards [inventory_coefficients_eventually_eq hA] with B hB
  simp only [centeredDiagonalState, hB.1, hB.2]

/-- C¹ applies to the original centered deleted diagonal, not a substituted stationary norm. -/
theorem centeredDeletedDiagonal_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 centeredDeletedDiagonal A := by
  apply (centeredDiagonalState_contDiffAt hA).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA.1] with B hB
  exact (centeredDiagonalState_actual hB).symm

/-- The full covariance has local scalar C¹ regularity without a positivity or budget assertion. -/
theorem covarianceHalfState_contDiffAt {A : ℝ} (hA : RegularScale A) :
    ContDiffAt ℝ 1 covarianceHalfState A :=
  (sourceInteraction_contDiffAt hA).sub (centeredDiagonalState_contDiffAt hA)

/-- The original covariance operator has local C¹ regularity on the same literal domain. -/
theorem covarianceOperator_half_contDiffAt {A : ℝ} (hA : RegularScale A) (h1 : 1 < A) :
    ContDiffAt ℝ 1 (fun B => VaughanOperatorReview.covarianceOperatorValue B / 2) A := by
  apply (covarianceHalfState_contDiffAt hA).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds h1] with B hB
  exact (covarianceHalfState_actual B hB.le).symm

/-- The full actual readout retains its independently defined counterterm with the original sign. -/
theorem compensatedState_eq_signed_readout (A : ℝ) :
    compensatedState A = (⟪mangoldtState A, reflectedState A⟫_ℂ).re -
      centeredDiagonalState A - SourceSamplingLedger.independentMainTerm A := rfl

/-- Conditional C¹ only; the independently defined main term has a separate analytic obligation. -/
theorem compensatedState_contDiffAt_of_mainTerm {A : ℝ} (hA : RegularScale A)
    (hM : ContDiffAt ℝ 1 SourceSamplingLedger.independentMainTerm A) :
    ContDiffAt ℝ 1 compensatedState A :=
  (covarianceHalfState_contDiffAt hA).sub hM

end FormalResearch.RiemannHypothesis.SourceRegularScaleProfiles
```
