-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.AutoWeight.Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.AutoWeight.Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Core/Weight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.InnerProductSpace.L2Space


namespace GRWTSK.Analysis.FunctionalAnalysis.AutoWeight.Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae

noncomputable section

open Real MeasureTheory ENNReal

namespace SpectralProof.Core

/--
Exponential weight:
\[
Ψ_α(x) := e^{ϕ(x)}
\]
Must satisfy ϕ(x) ≥ α |x| for some α > π to ensure trace-class decay.
-/
def autoWeight (ϕ : ℝ → ℝ) (x : ℝ) : ℝ := Real.exp (ϕ x)

/--
Weighted measure:
\[
μ_ϕ := e^{ϕ(x)} dx
\]
Used to define the exponentially weighted Hilbert space.
-/
def autoMeasure (ϕ : ℝ → ℝ) : Measure ℝ :=
  volume.withDensity (fun x => ofReal (autoWeight ϕ x))

/--
Exponentially weighted Hilbert space:
\[
H_ϕ := L^2(\mathbb{R}, e^{ϕ(x)} dx)
\]
Used throughout the spectral construction of Lt_π and Lsym_π.
-/
abbrev Hϕ (ϕ : ℝ → ℝ) := Lp ℂ 2 (autoMeasure ϕ)

section WithFixedϕ

variable {ϕ : ℝ → ℝ}

instance : NormedAddCommGroup (Hϕ ϕ) := by infer_instance
instance : InnerProductSpace ℂ (Hϕ ϕ) := by infer_instance
instance : CompleteSpace (Hϕ ϕ) := by infer_instance

end WithFixedϕ

end SpectralProof.Core
