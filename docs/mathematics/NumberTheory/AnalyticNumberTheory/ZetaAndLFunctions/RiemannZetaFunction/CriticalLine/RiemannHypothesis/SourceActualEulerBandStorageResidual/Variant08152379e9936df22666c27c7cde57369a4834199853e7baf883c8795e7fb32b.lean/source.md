# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerBandStorageResidual.Variant08152379e9936df22666c27c7cde57369a4834199853e7baf883c8795e7fb32b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22929db435f9d32413802d1b6443030235beec66` · SHA-256 `d42be8f6bec16779d4455989635bfc2ae2ffd422cda1654f97fbda7a9e9396ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedPrimeBandStorage.Variant9aedd108a2e79a0819bfcede1f92284b42342f1d69017a8f9086358fc68e8258","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9aedd108a2e79a0819bfcede1f92284b42342f1d69017a8f9086358fc68e8258","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualClosedPrimeBandStorage.Variant9aedd108a2e79a0819bfcede1f92284b42342f1d69017a8f9086358fc68e8258","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9aedd108a2e79a0819bfcede1f92284b42342f1d69017a8f9086358fc68e8258","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T130624Z-1791378384241081000/SourceActualEulerBandStorageResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerBandGram
import SourceActualEulerResidualApproximation

/-!
The independently defined full physical band storage transports to the
original real residual with the actual finite-Euler replacement error.
The final equivalence preserves the missing additive storage payment.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedPrimeBandStorage.Variant9aedd108a2e79a0819bfcede1f92284b42342f1d69017a8f9086358fc68e8258

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerBandStorageResidual
open Complex Filter Topology
open scoped BigOperators
open SourceActualEulerBandGram SourceActualEulerResidualApproximation
open SourceActualEulerSupportHead SourceActualTiltBandProjection
open SourceActualEulerCentralFrequency SourceActualBumpMovingHeight
open SourceActualInitialPrimeLineL1 SourceReflectionDuality
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- Every original closed prime-power coefficient and reflected norm square is retained. -/
def actualClosedPrimeBandStorage (A T : ℝ) : ℝ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
    (if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
      (n : ℝ) ^ (3 / 2 : ℝ)) *
      ‖actualTiltBandState A T -
        translation (Real.log n) (reflection (actualTiltBandState A T))‖ ^ 2

/-- The literal full storage defines the true signed head at every allowed scale and height. -/
theorem actualClosedPrimeHead_real_eq_full_storage {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    (actualClosedPrimeHead A (3 / 2) T).re =
      actualClosedPrimeRightMass A * ‖actualTiltBandState A T‖ ^ 2 -
        actualClosedPrimeBandStorage A T / 2 := by
  simpa only [actualClosedPrimeBandStorage, one_div, inv_mul_eq_div] using
    actualClosedPrimeHead_real_eq_band_storage hA hT

/-- The original residual pays only the actual Euler replacement error, without scaling. -/
theorem actualResidual_sub_full_band_storage_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A -
      (actualClosedPrimeRightMass A *
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 -
          actualClosedPrimeBandStorage A (actualBumpMovingHeight A (3 / 2)) / 2)| ≤
      (actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) *
          Real.exp (-2 * ((3 / 2) - (5 / 4)) * A)) / A ^ 9 := by
  have hT : 0 ≤ actualBumpMovingHeight A (3 / 2) := (Real.exp_pos _).le
  rw [← actualClosedPrimeHead_real_eq_full_storage hA hT]
  calc
    _ = |((mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| := by
        simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
        Complex.abs_re_le_norm _
    _ ≤ _ := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
      (by norm_num) (by norm_num)

/-- The original real residual and true signed storage balance differ by an unscaled o(1). -/
theorem actualResidual_sub_full_band_storage_tendsto_zero :
    Tendsto (fun A : ℝ => mertensResidual A -
      (actualClosedPrimeRightMass A *
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 -
          actualClosedPrimeBandStorage A (actualBumpMovingHeight A (3 / 2)) / 2))
      atTop (𝓝 0) := by
  have hh := Complex.continuous_re.tendsto (0 : ℂ) |>.comp
    (actualResidual_sub_closedHead_tendsto_zero (3 / 2) (5 / 4)
      (by norm_num) (by norm_num))
  simp only [Function.comp_def, Complex.sub_re, Complex.ofReal_re, Complex.zero_re] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hT : 0 ≤ actualBumpMovingHeight A (3 / 2) := (Real.exp_pos _).le
  rw [actualClosedPrimeHead_real_eq_full_storage hA hT]

/-- The exact remaining one-sided bound is the complete additive storage payment. -/
theorem actualResidual_eventual_upper_iff_full_band_storage_payment :
    (∃ K : ℝ, ∀ᶠ A : ℝ in atTop, mertensResidual A ≤ K) ↔
      (∃ K : ℝ, ∀ᶠ A : ℝ in atTop,
        2 * actualClosedPrimeRightMass A *
          ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 - K ≤
            actualClosedPrimeBandStorage A (actualBumpMovingHeight A (3 / 2))) := by
  have hh := tendsto_order.1 actualResidual_sub_full_band_storage_tendsto_zero
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨2 * (K + 1), ?_⟩
    filter_upwards [hK, hh.1 (-1) (by norm_num)] with A hA hdiff
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K / 2 + 1, ?_⟩
    filter_upwards [hK, hh.2 1 (by norm_num)] with A hA hdiff
    linarith

end FormalResearch.RiemannHypothesis.SourceActualEulerBandStorageResidual
```
