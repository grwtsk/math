-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complexify.Variant31e50e463ccab04b4d227acb6b807b198b5a69650d5c985589c9df575ffea66d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31e50e463ccab04b4d227acb6b807b198b5a69650d5c985589c9df575ffea66d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Complexify.Variant31e50e463ccab04b4d227acb6b807b198b5a69650d5c985589c9df575ffea66d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"31e50e463ccab04b4d227acb6b807b198b5a69650d5c985589c9df575ffea66d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/arithmetic/increment-1/SourceReflectionArithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel

/-!
# Actual complex arithmetic states and oriented reflection duality

The source and both finite arithmetic rows are literal complexifications of
accepted real L² functions. The centered row, both long axes, deleted diagonal
and product cutoff retain their exact source conventions. Duality acts on this
complex L² realization; it does not reuse compact support of the dual source.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complexify.Variant31e50e463ccab04b4d227acb6b807b198b5a69650d5c985589c9df575ffea66d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReflectionArithmetic

open MeasureTheory Filter Set
open scoped InnerProductSpace BigOperators
open SourcePairing SourceHankelReflection SourceVaughanHankel SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization EstimateVaughanSource
open EstimateBetaCentering EstimateBetaSourceRecombination

noncomputable section

/-- The literal real-to-complex embedding, retaining all state magnitudes. -/
def complexify (f : Lp ℝ 2 (volume : Measure ℝ)) : Lp ℂ 2 (volume : Measure ℝ) :=
  Complex.ofRealCLM.compLp f

/-- The equivalence-class embedding is the ordinary real cast almost everywhere. -/
theorem complexify_coe_ae (f : Lp ℝ 2 (volume : Measure ℝ)) :
    complexify f =ᵐ[volume] fun x => (f x : ℂ) :=
  Complex.ofRealCLM.coeFn_compLp f

/-- Complexification preserves the full real interaction, not its absolute value. -/
theorem complexify_inner (f g : Lp ℝ 2 (volume : Measure ℝ)) :
    ⟪complexify f, complexify g⟫_ℂ = (⟪f, g⟫_ℝ : ℂ) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((inner ℝ (f x) (g x) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [complexify_coe_ae f, complexify_coe_ae g] with x hf hg
      rw [hf, hg, RCLike.inner_apply', Real.inner_apply]
      simp
    _ = _ := integral_ofReal

/-- The original bump is a concrete complex L² state. -/
def sourceL2 (A : ℝ) (hA : 0 < A) : Lp ℂ 2 (volume : Measure ℝ) :=
  complexify (forwardL2 A hA {1} (fun _ => 1))

/-- The source embedding has the original real source as a representative. -/
theorem sourceL2_coe_ae (A : ℝ) (hA : 0 < A) :
    sourceL2 A hA =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative A x : ℂ) := by
  filter_upwards [complexify_coe_ae (forwardL2 A hA {1} (fun _ => 1)),
    (forwardProfile_memLp hA {1} (fun _ => 1)).coeFn_toLp] with x hc hf
  rw [show sourceL2 A hA x = (forwardL2 A hA {1} (fun _ => 1) x : ℂ) from hc]
  change ((forwardProfile_memLp hA {1} (fun _ => 1)).toLp _ x : ℂ) = _
  rw [hf]
  simp [forwardProfile]

/-- The actual Mangoldt row in complex L², without norm rescaling. -/
def mangoldtComplexL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℂ 2 (volume : Measure ℝ) :=
  complexify (mangoldtL2 A hA)

/-- The actual forward centered Möbius row in complex L². -/
def centeredMobiusComplexL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℂ 2 (volume : Measure ℝ) :=
  complexify (forwardL2 A (by linarith) (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)))

/-- The original oppositely shifted centered row in complex L². -/
def centeredReflectedComplexL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℂ 2 (volume : Measure ℝ) :=
  complexify (centeredMobiusReflectedL2 A hA)

/-- The Mangoldt embedding still has exactly the original source profile. -/
theorem mangoldtComplexL2_coe_ae (A : ℝ) (hA : 1 ≤ A) :
    mangoldtComplexL2 A hA =ᵐ[volume] fun x => (mangoldtForwardProfile A x : ℂ) := by
  filter_upwards [complexify_coe_ae (mangoldtL2 A hA),
    (forwardProfile_memLp (by linarith) (longInventory A)
      (fun m => ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ))).coeFn_toLp]
      with x hc hf
  exact hc.trans (congrArg Complex.ofReal hf)

/-- The centered forward embedding preserves every literal beta coefficient. -/
theorem centeredMobiusComplexL2_coe_ae (A : ℝ) (hA : 1 ≤ A) :
    centeredMobiusComplexL2 A hA =ᵐ[volume]
      fun x => (centeredMobiusForwardProfile A x : ℂ) := by
  filter_upwards [complexify_coe_ae (forwardL2 A (by linarith) (longInventory A)
      (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))),
    (forwardProfile_memLp (by linarith) (longInventory A)
      (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))).coeFn_toLp]
      with x hc hf
  exact hc.trans (congrArg Complex.ofReal hf)

/-- The reflected embedding preserves the literal oppositely shifted profile. -/
theorem centeredReflectedComplexL2_coe_ae (A : ℝ) (hA : 1 ≤ A) :
    centeredReflectedComplexL2 A hA =ᵐ[volume]
      fun x => (centeredMobiusReflectedProfile A x : ℂ) := by
  filter_upwards [complexify_coe_ae (centeredMobiusReflectedL2 A hA),
    (reflectedProfile_memLp (by linarith) (longInventory A)
      (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))).coeFn_toLp]
      with x hc hf
  exact hc.trans (congrArg Complex.ofReal hf)

/-- The actual complex pairing is precisely the unchanged real source interaction. -/
theorem complex_pairing_eq_source (A : ℝ) (hA : 1 ≤ A) :
    ⟪mangoldtComplexL2 A hA, centeredReflectedComplexL2 A hA⟫_ℂ =
      (sourceHankelPairing A : ℂ) := by
  rw [mangoldtComplexL2, centeredReflectedComplexL2, complexify_inner,
    ← sourceHankelPairing_eq_l2_inner A hA]


/-- The complex embedding preserves the actual squared state norm. -/
theorem complexify_norm_sq (f : Lp ℝ 2 (volume : Measure ℝ)) :
    ‖complexify f‖ ^ 2 = ‖f‖ ^ 2 := by
  have h := complexify_inner f f
  apply Complex.ofReal_injective
  simpa [inner_self_eq_norm_sq_to_K] using h

/-- The original complex source is still unit-normalized at every admissible scale. -/
theorem sourceL2_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖sourceL2 A (by linarith)‖ ^ 2 = 1 := by
  rw [sourceL2, complexify_norm_sq, forwardL2_norm_sq_eq_integral]
  simpa only [forwardProfile, Finset.sum_singleton, Nat.cast_one, Real.log_one,
    sub_zero, one_mul] using normalized_square_integral A hA

/-- Its original constant-norm state is nonzero, an essential scope guard for duality. -/
theorem sourceL2_ne_zero (A : ℝ) (hA : 1 ≤ A) : sourceL2 A (by linarith) ≠ 0 := by
  intro hz
  have hn := sourceL2_norm_sq A hA
  rw [hz, norm_zero, zero_pow (by norm_num : (2 : ℕ) ≠ 0)] at hn
  norm_num at hn

end
end FormalResearch.RiemannHypothesis.SourceReflectionArithmetic
