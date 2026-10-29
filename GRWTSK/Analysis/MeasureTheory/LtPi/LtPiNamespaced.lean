-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.H.Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.H.Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Operators/LtPi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.NormedSpace.OperatorNorm
import SpectralProof.Core.Weight
import SpectralProof.Core.FourierDecay
import SpectralProof.Core.Integrability


namespace GRWTSK.Analysis.MeasureTheory.H.Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d

noncomputable section

open Real MeasureTheory Complex

namespace SpectralProof.Operators

variable {ϕ : ℝ → ℝ} (Φ : ℝ → ℂ) (t : ℝ)

-- Bring in weighted Hilbert space and measure
abbrev Hϕ := SpectralProof.Core.Hϕ ϕ
abbrev μϕ := SpectralProof.Core.autoMeasure ϕ

/--
Integral operator `Lt_pi`, defined by convolution with the weighted kernel
\[
K_t^\varphi(x, y) := k_t(x - y) \cdot e^{ϕ(x)/2} \cdot e^{ϕ(y)/2}
\]
acting on the Hilbert space \( H_ϕ := L^2(ℝ, e^{ϕ(x)} dx) \).
-/
noncomputable def Lt_pi : Hϕ →ₗ[ℂ] Hϕ :=
  let kernel : ℝ × ℝ → ℂ :=
    SpectralProof.Core.KtWeighted ϕ (SpectralProof.Core.kt Φ t)
  LinearMap.mkContinuous
    { toFun := fun f =>
        ⟨fun x => ∫ y, kernel (x, y) * f y,
         by
           -- integrability proof: deferred to integrability module
           sorry⟩,
      map_add' := fun f g => by
        ext x; simp only [Pi.add_apply, integral_add]; ring,
      map_smul' := fun c f => by
        ext x; simp only [smul_eq_mul, integral_const_mul] }
    1 -- norm bound (can refine if needed)
    (by simp)

end SpectralProof.Operators
