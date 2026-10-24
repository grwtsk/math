# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDualCertificate.Variant3cebac74d43bdfe3301d8b119fab7867c9a6b5c90f1a890789482636b95d6528

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaff0da2a855d6a06073cdfcd5c86604fdbd31dc` · SHA-256 `34349d5e8ab574f55a77bf3d7494433df6855cc733b0950b5a8de13fe19077a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReflectedDualKernel.Variant315a8dbe61a1d65f9fe37307533047d78e3f526f5f37757be04583cd549cf9d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"315a8dbe61a1d65f9fe37307533047d78e3f526f5f37757be04583cd549cf9d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualReflectedDualKernel.Variant315a8dbe61a1d65f9fe37307533047d78e3f526f5f37757be04583cd549cf9d9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"315a8dbe61a1d65f9fe37307533047d78e3f526f5f37757be04583cd549cf9d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/arithmetic/v1-archive/SourceDualCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceReflectionArithmetic
import SourceMainTermOrigins

/-!
# Actual reflected dual remainder and conditional one-sided certificate

The main terms below are reconstructed from independently kernel-indexed finite
origins and the actual complex physical kernels. All-reflected and stationary
lifts are explicitly different. Choosing the all-reflected lift gives zero
transport defect and reverses the same unresolved inequality; this is not a new
uniform estimate. For any independently supplied main lift, two separate
one-sided budgets imply the original joint upper tail and its unchanged estimate
consumer. Neither open budget is assumed as an axiom or proved by definition.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReflectedDualKernel.Variant315a8dbe61a1d65f9fe37307533047d78e3f526f5f37757be04583cd549cf9d9

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDualCertificate

open scoped InnerProductSpace
open SourcePairing SourceReflectionArithmetic SourceMainTermOrigins SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

/-- The actual oriented reflected real kernel, with the right-state reflection tracked. -/
def actualReflectedDualKernel (A : ℝ) (hA : 1 ≤ A) : ℝ → ℝ :=
  fun s => (reflectedDualKernel A (by linarith) 0 s).re

/-- Its whole-kernel transport is derived before any main-term occurrence is replaced. -/
theorem actualReflectedDualKernel_transport (A : ℝ) (hA : 1 ≤ A) :
    actualReflectedDualKernel A hA = -sourceKernel A := by
  funext s
  simp only [actualReflectedDualKernel, reflectedDualKernel_eq_neg_source,
    zero_add, Complex.neg_re, Complex.ofReal_re, sourceKernel, Pi.neg_apply]

/-- The actual stationary Hermitian real kernel, a distinct channel. -/
def actualStationaryDualKernel (A : ℝ) (hA : 1 ≤ A) : ℝ → ℝ :=
  fun s => (stationaryDualKernel A (by linarith) s).re

/-- The stationary lift is invariant, rather than sign-reversed. -/
theorem actualStationaryDualKernel_transport (A : ℝ) (hA : 1 ≤ A) :
    actualStationaryDualKernel A hA = sourceKernel A := by
  funext s
  simp only [actualStationaryDualKernel, stationaryDualKernel_eq_source,
    Complex.ofReal_re, sourceKernel]

/-- The all-reflected lift is constructed from its independently recorded occurrence origins.
The inactive branch is irrelevant to the preserved admissible-scale target. -/
def allReflectedMainTermDual (A : ℝ) : ℝ :=
  if hA : 1 ≤ A then kernelMainTerm A (actualReflectedDualKernel A hA) else 0

/-- A separate all-stationary lift is constructed without declaring it a physical canonical main. -/
def allStationaryMainTermDual (A : ℝ) : ℝ :=
  if hA : 1 ≤ A then kernelMainTerm A (actualStationaryDualKernel A hA) else 0

/-- The all-reflected main negation follows from occurrence-level transport, not a definition
`-M`. -/
theorem allReflectedMainTermDual_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    allReflectedMainTermDual A = -independentMainTerm A := by
  rw [allReflectedMainTermDual, dif_pos hA]
  exact kernelMainTerm_of_reflected_transport A hA _
    (actualReflectedDualKernel_transport A hA)

/-- The all-stationary lift instead returns the original independently defined main term. -/
theorem allStationaryMainTermDual_eq_source (A : ℝ) (hA : 1 ≤ A) :
    allStationaryMainTermDual A = independentMainTerm A := by
  rw [allStationaryMainTermDual, dif_pos hA]
  exact kernelMainTerm_of_stationary_transport A hA _
    (actualStationaryDualKernel_transport A hA)

/-- The unchanged joint signed remainder in the original Vaughan convention. -/
def actualJointRemainder (A : ℝ) : ℝ :=
  VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A

/-- Actual dual covariance with an independently supplied scalar main lift. -/
def dualRemainderForMain (Mvee : ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  dualCovarianceOperatorValue A hA / 2 - Mvee A

/-- Main-transport compensation stays separate from dual interaction. -/
def mainTransportDefect (Mvee : ℝ → ℝ) (A : ℝ) : ℝ :=
  independentMainTerm A + Mvee A

/-- Exact dual transport retains the main defect with its required sign. -/
theorem dualRemainder_eq_neg_joint_sub_defect (Mvee : ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A) :
    dualRemainderForMain Mvee A hA =
      -actualJointRemainder A - mainTransportDefect Mvee A := by
  rw [dualRemainderForMain, dualCovarianceOperatorValue_eq_neg,
    actualJointRemainder, mainTransportDefect]
  ring

/-- The actual all-reflected dual remainder uses the proven physical kernel and origin lift. -/
def actualReflectedDualRemainder (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  dualRemainderForMain allReflectedMainTermDual A hA

/-- The all-reflected occurrence lift has zero defect on admissible scales. -/
theorem allReflected_main_defect_zero (A : ℝ) (hA : 1 ≤ A) :
    mainTransportDefect allReflectedMainTermDual A = 0 := by
  rw [mainTransportDefect, allReflectedMainTermDual_eq_neg A hA]
  ring

/-- This qualified reflected lift reverses the same unresolved joint remainder. -/
theorem actualReflectedDualRemainder_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    actualReflectedDualRemainder A hA = -actualJointRemainder A := by
  rw [actualReflectedDualRemainder, dualRemainder_eq_neg_joint_sub_defect,
    allReflected_main_defect_zero A hA, sub_zero]

/-- The stationary occurrence lift retains a different nonzero-in-general main defect. -/
theorem allStationary_main_defect (A : ℝ) (hA : 1 ≤ A) :
    mainTransportDefect allStationaryMainTermDual A = 2 * independentMainTerm A := by
  rw [mainTransportDefect, allStationaryMainTermDual_eq_source A hA]
  ring

/-- Pointwise certificate: two separately supplied one-sided lower budgets give the signed
upper bound. -/
theorem joint_upper_of_dual_lower_and_defect_lower (Mvee : ℝ → ℝ)
    (A L K : ℝ) (hA : 1 ≤ A)
    (hdual : -L ≤ dualRemainderForMain Mvee A hA)
    (hdefect : -K ≤ mainTransportDefect Mvee A) :
    actualJointRemainder A ≤ L + K := by
  have h := dualRemainder_eq_neg_joint_sub_defect Mvee A hA
  linarith

/-- Open actual dual-lower budget; no state norm, positivity, or upper-tail witness is
substituted. -/
def DualLowerTailBudget (Mvee : ℝ → ℝ) : Prop :=
  ∃ L : ℝ, 0 ≤ L ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → ∀ hA : 1 ≤ A, -L ≤ dualRemainderForMain Mvee A hA

/-- Independent lower budget for the transported main defect. -/
def MainDefectLowerTailBudget (Mvee : ℝ → ℝ) : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -K ≤ mainTransportDefect Mvee A

/-- The certificate constructs an explicit combined eventual witness from the two premises. -/
theorem joint_tail_of_dual_budgets (Mvee : ℝ → ℝ)
    (hdual : DualLowerTailBudget Mvee) (hdefect : MainDefectLowerTailBudget Mvee) :
    VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  obtain ⟨L, hL, R₁, hR₁, hd⟩ := hdual
  obtain ⟨K, hK, R₂, hR₂, he⟩ := hdefect
  refine ⟨L+K, add_nonneg hL hK, max R₁ R₂, hR₁.trans (le_max_left _ _), ?_⟩
  intro A hRA
  exact joint_upper_of_dual_lower_and_defect_lower Mvee A L K
    (hR₁.trans ((le_max_left _ _).trans hRA))
    (hd A ((le_max_left _ _).trans hRA) (hR₁.trans ((le_max_left _ _).trans hRA)))
    (he A ((le_max_right _ _).trans hRA))

/-- The proved bounded ledger error transports the conditional certificate to the unchanged
residual tail. -/
theorem residual_tail_of_dual_budgets (Mvee : ℝ → ℝ)
    (hdual : DualLowerTailBudget Mvee) (hdefect : MainDefectLowerTailBudget Mvee) :
    EstimateMertensResidual.MertensResidualTailUpperBound :=
  independentMainTerm_tail_iff_mertensResidualTail.mp
    (joint_tail_of_dual_budgets Mvee hdual hdefect)

/-- The existing exact estimate consumer is preserved; both budget premises remain explicit. -/
theorem estimate_of_dual_budgets (Mvee : ℝ → ℝ)
    (hdual : DualLowerTailBudget Mvee) (hdefect : MainDefectLowerTailBudget Mvee) :
    CorrelationAssembly.EstimateObligation :=
  EstimateMertensResidual.estimate_of_mertens_residual_tail
    (residual_tail_of_dual_budgets Mvee hdual hdefect)

/-- The all-reflected defect budget is actually discharged, independently of the still-open
dual bound. -/
theorem allReflected_main_defect_budget : MainDefectLowerTailBudget allReflectedMainTermDual := by
  refine ⟨0, le_rfl, 1, le_rfl, ?_⟩
  intro A hA
  rw [allReflected_main_defect_zero A hA]
  norm_num

/-- Obstruction guard: the all-reflected dual lower bound is exactly the unchanged joint upper
target. -/
theorem allReflected_dual_budget_iff_joint_tail :
    DualLowerTailBudget allReflectedMainTermDual ↔
      VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  constructor
  · intro h
    exact joint_tail_of_dual_budgets allReflectedMainTermDual h allReflected_main_defect_budget
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA hA
    rw [dualRemainder_eq_neg_joint_sub_defect,
      allReflected_main_defect_zero A (hR.trans hRA), sub_zero, actualJointRemainder]
    linarith [h A hRA]

/-- The qualified all-reflected dual route leaves the exact original residual-tail problem open. -/
theorem allReflected_dual_budget_iff_residual_tail :
    DualLowerTailBudget allReflectedMainTermDual ↔
      EstimateMertensResidual.MertensResidualTailUpperBound :=
  allReflected_dual_budget_iff_joint_tail.trans independentMainTerm_tail_iff_mertensResidualTail

/-- A genuine actual dual-lower witness would feed the unchanged estimate obligation. -/
theorem estimate_of_actualReflected_dual_budget
    (hdual : DualLowerTailBudget allReflectedMainTermDual) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_dual_budgets allReflectedMainTermDual hdual allReflected_main_defect_budget

/-- The conditional dual remainder retains the original same-phase Fourier rows and main lift. -/
theorem dualRemainder_original_fourier (Mvee : ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A) :
    dualRemainderForMain Mvee A hA =
      -(1 / (2 * Real.pi)) *
        (∫ ξ, SourceVaughanHankelFourier.actualJointFourierIntegrand A ξ) +
          SourceVaughanHankel.centeredDeletedDiagonal A - Mvee A := by
  rw [dualRemainderForMain, dual_covariance_original_fourier]

end
end FormalResearch.RiemannHypothesis.SourceDualCertificate
```
