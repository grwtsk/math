-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HalfLine.Variant8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HalfLine.Variant8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72","mathematical_subject":"Foundations.Unclassified","original_sha256":"8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  Spectral/Spectral.lean  (umbrella module)
  -----------------------------------------
  Import this single file to bring every public definition of the
  *Spectral-RH* library into scope.

  Components:

  * `Spectral.Analysis.SmoothCompactSupport.HalfLine`
  * `Spectral.Schrodinger.Operator`
  * `Spectral.Schrodinger.Spectrum`
  * `Spectral.Zeta.Regularization`
  * `Spectral.Zeta.Determinant`
-/

-- analytic background: smooth bump functions on the half-line
import Spectral.Analysis.SmoothCompactSupport.HalfLine

-- Schrödinger operator and qualitative spectrum
import Spectral.Schrodinger.Operator
import Spectral.Schrodinger.Spectrum

-- ζ-function machinery and Fredholm determinant
import Spectral.Zeta.Regularization
import Spectral.Zeta.Determinant


namespace GRWTSK.Analysis.FunctionalAnalysis.HalfLine.Variant8905e423794153fef37f07d280eeaba15d43a5abea046f55dc130d9476682e72

namespace Spectral
/-!
This namespace is intentionally empty; all useful declarations live in
the imported sub-modules.  The file merely serves as a **single
entry-point**, so downstream projects can import `Spectral` and have the
full library available.
-/
end Spectral
