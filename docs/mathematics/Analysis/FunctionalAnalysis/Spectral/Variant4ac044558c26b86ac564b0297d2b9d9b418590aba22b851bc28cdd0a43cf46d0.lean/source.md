# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Spectral.Variant4ac044558c26b86ac564b0297d2b9d9b418590aba22b851bc28cdd0a43cf46d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cffdb7b7cf7541471392bdcbc81e2b83a80546b` · SHA-256 `532a60b2d9124a234ea6d8d76600fa044a5bd23a09b038f9583cf0cc2107985c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
