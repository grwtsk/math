# Complete source: GRWTSK.Analysis.MeasureTheory.Kernel.Variant7be1166a745bedd40fc8a86b80cdf4da3fdf6ec7a6971ff85ad972da4c54e1f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22dd4bb2aeda76f2171a32b4ceca24a16d7ae406` · SHA-256 `7ce6906e5a4a25bc3785fd1af4a20af054083d5d6fb05cb08ab9561eb7193eff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Kt.Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Kt.Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"f265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Core/Kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SpectralProof.Core.FourierDecay
import SpectralProof.Core.Weight
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.ExpLog


namespace GRWTSK.Analysis.MeasureTheory.Kt.Variantf265826293b7b4fce75e5594282ebf350cc85198e4acf9e20ab971ec00e0a30b

noncomputable section

open Real Complex MeasureTheory

namespace SpectralProof.Core

variable {ϕ : ℝ → ℝ}

/--
Unweighted convolution kernel:
\[
K_t(x, y) := k_t(x - y)
\]
This is the base kernel before applying exponential weighting.
-/
def Kt (kt : ℝ → ℂ) : ℝ × ℝ → ℂ :=
  fun ⟨x, y⟩ ↦ kt (x - y)

/--
Exponentially weighted convolution kernel:
\[
K_t^ϕ(x, y) := K_t(x, y) \cdot e^{ϕ(x)/2} \cdot e^{ϕ(y)/2}
\]
Used to define `Lt_pi` on the weighted Hilbert space `Hϕ`.
-/
def KtWeighted (kt : ℝ → ℂ) (ϕ : ℝ → ℝ) : ℝ × ℝ → ℂ :=
  fun ⟨x, y⟩ ↦ kt (x - y) * Real.exp (ϕ x / 2) * Real.exp (ϕ y / 2)

/--
Measurability of the weighted kernel on ℝ².
Required to show `KtWeighted` is Bochner-integrable.
-/
lemma measurable_KtWeighted (kt : ℝ → ℂ) (ϕ : ℝ → ℝ)
    (hkt : Measurable kt) (hϕ : Measurable ϕ) :
    Measurable (KtWeighted kt ϕ) := by
  apply Measurable.mul
  · exact hkt.comp (measurable_sub.comp ⟨measurable_fst, measurable_snd⟩)
  · apply Measurable.mul
    · exact (continuous_exp.comp (continuous_const.mul (hϕ.comp measurable_fst) continuous_const)).measurable
    · exact (continuous_exp.comp (continuous_const.mul (hϕ.comp measurable_snd) continuous_const)).measurable

end SpectralProof.Core
```
