# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceReflectionArithmetic.Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88dc7c5cfd7d236ee7cec7d1e87795159a882b12` · SHA-256 `447b1d0c3bf794324fb5b1d1591159147f897aa4129ff7062a292795f37692ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complexify.Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Complexify.Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/arithmetic/increment-2/SourceReflectionArithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel
import SourceReflectionDuality

/-!
# Actual complex arithmetic states and oriented reflection duality

The source and both finite arithmetic rows are literal complexifications of
accepted real L² functions. The centered row, both long axes, deleted diagonal
and product cutoff retain their exact source conventions. Duality acts on this
complex L² realization; it does not reuse compact support of the dual source.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complexify.Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReflectionArithmetic

open MeasureTheory Filter Set
open scoped InnerProductSpace BigOperators
open SourcePairing SourceHankelReflection SourceVaughanHankel SourceSamplingLedger
open SourceReflectionDuality
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization EstimateVaughanSource
open EstimateBetaCentering EstimateBetaSourceRecombination EstimatePlainKernel
open EstimateSourceMobiusKernel EstimateVaughanTranslationGate EstimateTypeTwoLogBlocks

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

/-- The actual source is reflection-even as an L² equivalence class. -/
theorem sourceL2_reflection (A : ℝ) (hA : 0 < A) :
    reflection (sourceL2 A hA) = sourceL2 A hA := by
  apply Lp.ext
  filter_upwards [reflection_coe_ae (sourceL2 A hA), sourceL2_coe_ae A hA,
    (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
      (sourceL2_coe_ae A hA)] with x hR hq hn
  change sourceL2 A hA (-x) = (normalizedTest explicitSecondDerivative A (-x) : ℂ) at hn
  rw [hR, hn, hq, normalized_source_even hA]

/-- Translation of the literal complex source uses exactly `x-u`. -/
theorem translatedSource_coe_ae (A : ℝ) (hA : 0 < A) (u : ℝ) :
    translation u (sourceL2 A hA) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A (x-u) : ℂ) := by
  filter_upwards [translation_coe_ae u (sourceL2 A hA),
    (measurePreserving_sub_right (volume : Measure ℝ) u).quasiMeasurePreserving.ae
      (sourceL2_coe_ae A hA)] with x ht hq
  exact ht.trans hq

/-- Every finite forward complex profile is the literal sum of source translates. -/
theorem forwardComplex_eq_sum_translates (A : ℝ) (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    complexify (forwardL2 A hA s c) =
      ∑ n ∈ s, (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA) := by
  apply Lp.ext
  filter_upwards [complexify_coe_ae (forwardL2 A hA s c),
    (forwardProfile_memLp hA s c).coeFn_toLp,
    Lp.coeFn_fun_finsetSum s
      (fun n => (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA)),
    ae_all_iff.mpr (fun n : ℕ => Lp.coeFn_smul (c n : ℂ)
      (translation (Real.log (n : ℝ)) (sourceL2 A hA))),
    ae_all_iff.mpr (fun n : ℕ => translatedSource_coe_ae A hA (Real.log (n : ℝ)))]
      with x hc hf hs hsm ht
  change forwardL2 A hA s c x = forwardProfile A s c x at hf
  rw [hc, hf, hs]
  simp only [forwardProfile, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [hsm n]
  simp only [Pi.smul_apply, smul_eq_mul]
  rw [ht n]
  simp

/-- The actual reflected beta state is spatial reflection of the same forward row. -/
theorem centered_complex_reflection (A : ℝ) (hA : 1 ≤ A) :
    reflection (centeredMobiusComplexL2 A hA) = centeredReflectedComplexL2 A hA := by
  apply Lp.ext
  filter_upwards [reflection_coe_ae (centeredMobiusComplexL2 A hA),
    centeredReflectedComplexL2_coe_ae A hA,
    (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
      (centeredMobiusComplexL2_coe_ae A hA)] with x hR hG hV
  rw [hR, hV, hG, centeredMobiusReflectedProfile_eq_reflection A hA]

/-- The literal Mangoldt complex state retains its inverse-square-root coefficients. -/
theorem mangoldtComplex_eq_sum (A : ℝ) (hA : 1 ≤ A) :
    mangoldtComplexL2 A hA = ∑ m ∈ longInventory A,
      ((ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ) : ℝ) : ℂ) •
        translation (Real.log (m : ℝ)) (sourceL2 A (by linarith)) :=
  forwardComplex_eq_sum_translates A (by linarith) _ _

/-- The centered Möbius complex state retains the unchanged `floor(A²)` row. -/
theorem centeredMobiusComplex_eq_sum (A : ℝ) (hA : 1 ≤ A) :
    centeredMobiusComplexL2 A hA = ∑ n ∈ longInventory A,
      ((centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ) : ℝ) : ℂ) •
        translation (Real.log (n : ℝ)) (sourceL2 A (by linarith)) :=
  forwardComplex_eq_sum_translates A (by linarith) _ _

/-- The source dual uses the sign multiplier in the original angular convention. -/
def dualSourceL2 (A : ℝ) (hA : 0 < A) : ComplexL2 :=
  angularSignDuality (sourceL2 A hA)

/-- Actual dual Mangoldt state, with no replacement of the arithmetic coefficients. -/
def dualMangoldtL2 (A : ℝ) (hA : 1 ≤ A) : ComplexL2 :=
  angularSignDuality (mangoldtComplexL2 A hA)

/-- Actual dual centered forward state, with the same literal beta row. -/
def dualCenteredMobiusL2 (A : ℝ) (hA : 1 ≤ A) : ComplexL2 :=
  angularSignDuality (centeredMobiusComplexL2 A hA)

/-- Reflection follows dualization; the right reflected state carries no extra duality. -/
def dualReflectedMobiusL2 (A : ℝ) (hA : 1 ≤ A) : ComplexL2 :=
  reflection (dualCenteredMobiusL2 A hA)

/-- Tracking the weighted reflection state exposes the essential minus sign. -/
theorem dual_reflected_state (A : ℝ) (hA : 1 ≤ A) :
    dualReflectedMobiusL2 A hA = -angularSignDuality (centeredReflectedComplexL2 A hA) := by
  rw [dualReflectedMobiusL2, dualCenteredMobiusL2,
    angular_reflection_duality_anticommute, centered_complex_reflection]

/-- The dual source is reflection-odd although its original source is even. -/
theorem dualSource_reflection (A : ℝ) (hA : 0 < A) :
    reflection (dualSourceL2 A hA) = -dualSourceL2 A hA := by
  rw [dualSourceL2, angular_reflection_duality_anticommute, sourceL2_reflection]

/-- Unitary dualization preserves the norm of the unchanged normalized source. -/
theorem dualSource_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖dualSourceL2 A (by linarith)‖ ^ 2 = 1 := by
  rw [dualSourceL2, angularSignDuality.norm_map, sourceL2_norm_sq A hA]

/-- The original reflected coefficient has the exact sum of translation parameters. -/
theorem original_reflected_kernel (A : ℝ) (hA : 0 < A) (u v : ℝ) :
    ⟪translation u (sourceL2 A hA), reflection (translation v (sourceL2 A hA))⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (u+v) : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A (x-u) *
        normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [translatedSource_coe_ae A hA u,
        reflection_coe_ae (translation v (sourceL2 A hA)),
        (Measure.measurePreserving_neg (volume : Measure ℝ)).quasiMeasurePreserving.ae
          (translatedSource_coe_ae A hA v)] with x hu hR hv
      rw [hu, hR, hv]
      rw [show -x-v = -(x+v) by ring, normalized_source_even hA,
        RCLike.inner_apply']
      simp
    _ = _ := by
      have ho : (∫ x : ℝ, ((normalizedTest explicitSecondDerivative A (x-u) *
          normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ)) =
          ((∫ x : ℝ, normalizedTest explicitSecondDerivative A (x-u) *
            normalizedTest explicitSecondDerivative A (x+v) : ℝ) : ℂ) := integral_ofReal
      rw [ho]
      congr 1
      have h := translated_reflected_pairing A (m:=Real.exp u) (n:=Real.exp v)
        (Real.exp_pos u) (Real.exp_pos v)
      simpa only [Real.log_exp, Real.log_mul (Real.exp_pos u).ne' (Real.exp_pos v).ne'] using h

/-- Stationary Hermitian correlation is distinguished from reflected sum-log interaction. -/
theorem original_stationary_kernel (A : ℝ) (hA : 0 < A) (s : ℝ) :
    ⟪sourceL2 A hA, translation s (sourceL2 A hA)⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A s : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x-s) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [sourceL2_coe_ae A hA, translatedSource_coe_ae A hA s] with x hq ht
      rw [hq, ht, RCLike.inner_apply']
      simp
    _ = _ := integral_ofReal

/-- The actual oriented reflected dual kernel, rather than a stationary autocorrelation. -/
def reflectedDualKernel (A : ℝ) (hA : 0 < A) (u v : ℝ) : ℂ :=
  ⟪translation u (dualSourceL2 A hA), reflection (translation v (dualSourceL2 A hA))⟫_ℂ

/-- The stationary dual kernel uses the ordinary Hermitian inner product. -/
def stationaryDualKernel (A : ℝ) (hA : 0 < A) (s : ℝ) : ℂ :=
  ⟪dualSourceL2 A hA, translation s (dualSourceL2 A hA)⟫_ℂ

/-- Duality reverses the actual reflected interaction and preserves both signed rows. -/
theorem dual_complex_pairing_eq_neg_source (A : ℝ) (hA : 1 ≤ A) :
    ⟪dualMangoldtL2 A hA, dualReflectedMobiusL2 A hA⟫_ℂ =
      -(sourceHankelPairing A : ℂ) := by
  rw [dualMangoldtL2, dualReflectedMobiusL2, dualCenteredMobiusL2,
    angular_reflected_pairing_dual, centered_complex_reflection,
    complex_pairing_eq_source]

/-- The positive square sector of the dual is the original negative square sector. -/
theorem dual_plus_norm_eq_original_minus (A : ℝ) (hA : 1 ≤ A) :
    ‖dualMangoldtL2 A hA + dualReflectedMobiusL2 A hA‖ =
      ‖mangoldtComplexL2 A hA - centeredReflectedComplexL2 A hA‖ := by
  rw [dual_reflected_state, ← sub_eq_add_neg, dualMangoldtL2,
    ← map_sub, angularSignDuality.norm_map]

/-- The negative square sector of the dual is the original positive square sector. -/
theorem dual_minus_norm_eq_original_plus (A : ℝ) (hA : 1 ≤ A) :
    ‖dualMangoldtL2 A hA - dualReflectedMobiusL2 A hA‖ =
      ‖mangoldtComplexL2 A hA + centeredReflectedComplexL2 A hA‖ := by
  rw [dual_reflected_state, sub_neg_eq_add, dualMangoldtL2,
    ← map_add, angularSignDuality.norm_map]

/-- The unit even source becomes a negative reflected unit coefficient. -/
theorem dual_source_reflected_unit_fixture (A : ℝ) (hA : 1 ≤ A) :
    ⟪dualSourceL2 A (by linarith), reflection (dualSourceL2 A (by linarith))⟫_ℂ = -1 := by
  rw [dualSource_reflection, inner_neg_right, inner_self_eq_norm_sq_to_K]
  simpa using congrArg (fun r : ℝ => -(r : ℂ)) (dualSource_norm_sq A hA)

/-- Oriented reflection reverses the physical dual coefficient at every displacement. -/
theorem reflectedDualKernel_eq_neg_source (A : ℝ) (hA : 0 < A) (u v : ℝ) :
    reflectedDualKernel A hA u v =
      -(sourceCorrelation explicitSecondDerivative A (u+v) : ℂ) := by
  rw [reflectedDualKernel, dualSourceL2, angular_translation_duality_commute,
    angular_translation_duality_commute, angular_reflected_pairing_dual,
    original_reflected_kernel]

/-- Stationary correlation is unchanged; it is not the oriented reflected kernel. -/
theorem stationaryDualKernel_eq_source (A : ℝ) (hA : 0 < A) (s : ℝ) :
    stationaryDualKernel A hA s = (sourceCorrelation explicitSecondDerivative A s : ℂ) := by
  rw [stationaryDualKernel, dualSourceL2, angular_translation_duality_commute,
    angular_stationary_inner_dual, original_stationary_kernel]

/-- The dual arithmetic weight is derived from the actual reflected kernel. -/
def dualPlainWeight (A : ℝ) (hA : 1 ≤ A) (x : ℝ) : ℝ :=
  (reflectedDualKernel A (by linarith) 0 (Real.log x)).re / Real.sqrt x

/-- Its sign is proved from physical duality; no compact dual source is assumed. -/
theorem dualPlainWeight_eq_neg_source (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    dualPlainWeight A hA x = -sourcePlainWeight A x := by
  simp only [dualPlainWeight, reflectedDualKernel_eq_neg_source, zero_add,
    Complex.neg_re, Complex.ofReal_re, sourcePlainWeight, neg_div]

/-- The dual product cutoff is justified by exact kernel transport alone. -/
theorem dualPlainWeight_zero_above_cutoff (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : sourceKernelCutoff A < n) : dualPlainWeight A hA n = 0 := by
  rw [dualPlainWeight_eq_neg_source, sourcePlainWeight_zero_of_cutoff_lt A hA n hn, neg_zero]

/-- The full dual long rectangle retains both original Ioc axes and the centered row. -/
def dualCenteredRectangle (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
    ArithmeticFunction.vonMangoldt m * centeredBeta (vaughanCutoff A) n *
      dualPlainWeight A hA ((m*n : ℕ) : ℝ)

/-- The literal equality-of-indices dual diagonal keeps the full centered coefficient. -/
def dualCenteredDeletedDiagonal (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  ∑ m ∈ longInventory A,
    ArithmeticFunction.vonMangoldt m * centeredBeta (vaughanCutoff A) m *
      dualPlainWeight A hA ((m*m : ℕ) : ℝ)

/-- The dual centered covariance keeps the original unequal/product pair mask. -/
def dualCenteredOffDiagonal (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  ∑ p ∈ longOffDiagonalPairs A,
    ArithmeticFunction.vonMangoldt p.1 * centeredBeta (vaughanCutoff A) p.2 *
      dualPlainWeight A hA ((p.1*p.2 : ℕ) : ℝ)

/-- The operator-value convention remains exactly twice the centered off-diagonal form. -/
def dualCovarianceOperatorValue (A : ℝ) (hA : 1 ≤ A) : ℝ :=
  2 * dualCenteredOffDiagonal A hA

/-- Every signed coefficient of the full long rectangle is transported together. -/
theorem dualCenteredRectangle_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    dualCenteredRectangle A hA = -centeredRectangle A := by
  simp only [dualCenteredRectangle, centeredRectangle, dualPlainWeight_eq_neg_source,
    mul_neg, Finset.sum_neg_distrib]

/-- The centered diagonal reverses, including its exact centering compensation. -/
theorem dualCenteredDeletedDiagonal_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    dualCenteredDeletedDiagonal A hA = -centeredDeletedDiagonal A := by
  simp only [dualCenteredDeletedDiagonal, centeredDeletedDiagonal,
    dualPlainWeight_eq_neg_source, mul_neg, Finset.sum_neg_distrib]

/-- Guard: the reversed diagonal is not silently replaced by the old uncentered diagonal. -/
theorem dualCenteredDeletedDiagonal_eq_neg_old_add_centering (A : ℝ) (hA : 1 ≤ A) :
    dualCenteredDeletedDiagonal A hA =
      -(typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A) := by
  rw [dualCenteredDeletedDiagonal_eq_neg, centeredDeletedDiagonal_eq_old_diagonal_add_centering]

/-- The actual finite covariance reverses without deleting signed cross terms. -/
theorem dualCenteredOffDiagonal_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    dualCenteredOffDiagonal A hA = -centeredTypeTwoOffDiagonal A := by
  simp only [dualCenteredOffDiagonal, centeredTypeTwoOffDiagonal,
    dualPlainWeight_eq_neg_source, mul_neg, Finset.sum_neg_distrib]

/-- The dual product-mask transfer is reproved using the dual kernel zero theorem. -/
theorem dualOffDiagonal_eq_unmasked (A : ℝ) (hA : 1 ≤ A) :
    dualCenteredOffDiagonal A hA =
      ∑ m ∈ longInventory A, ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
        ArithmeticFunction.vonMangoldt m * centeredBeta (vaughanCutoff A) n *
          dualPlainWeight A hA ((m*n : ℕ) : ℝ) := by
  classical
  unfold dualCenteredOffDiagonal longOffDiagonalPairs longInventory
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m*n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · have hz := dualPlainWeight_zero_above_cutoff A hA (m*n) (by omega)
      rw [if_pos hne, if_neg (fun h => hp h.2), hz, mul_zero]
  · rw [if_neg hne, if_neg (fun h => hne h.1)]

/-- The actual complex dual interaction is the full dual finite rectangle. -/
theorem dual_pairing_eq_rectangle (A : ℝ) (hA : 1 ≤ A) :
    (⟪dualMangoldtL2 A hA, dualReflectedMobiusL2 A hA⟫_ℂ).re =
      dualCenteredRectangle A hA := by
  rw [dual_complex_pairing_eq_neg_source, Complex.neg_re, Complex.ofReal_re,
    sourceHankelPairing_eq_centeredRectangle A hA, dualCenteredRectangle_eq_neg]

/-- The complete actual operator covariance is sign-reversed in its original convention. -/
theorem dualCovarianceOperatorValue_eq_neg (A : ℝ) (hA : 1 ≤ A) :
    dualCovarianceOperatorValue A hA = -VaughanOperatorReview.covarianceOperatorValue A := by
  rw [dualCovarianceOperatorValue, dualCenteredOffDiagonal_eq_neg,
    VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered]
  ring

/-- The half-operator/physical pairing/deleted-diagonal contract is preserved exactly. -/
theorem dualCovariance_half_eq_pairing_sub_diagonal (A : ℝ) (hA : 1 ≤ A) :
    dualCovarianceOperatorValue A hA / 2 =
      (⟪dualMangoldtL2 A hA, dualReflectedMobiusL2 A hA⟫_ℂ).re -
        dualCenteredDeletedDiagonal A hA := by
  rw [dualCovarianceOperatorValue_eq_neg, dual_complex_pairing_eq_neg_source,
    Complex.neg_re, Complex.ofReal_re, dualCenteredDeletedDiagonal_eq_neg]
  have h := covarianceOperator_half_eq_pairing_sub_diagonal A hA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceReflectionArithmetic
```
