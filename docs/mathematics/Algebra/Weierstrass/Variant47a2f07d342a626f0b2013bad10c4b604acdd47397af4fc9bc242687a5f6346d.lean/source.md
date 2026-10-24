# Complete source: GRWTSK.Algebra.Weierstrass.Variant47a2f07d342a626f0b2013bad10c4b604acdd47397af4fc9bc242687a5f6346d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93684f0bdf9be95c641406b515c05e0adbb0f292` · SHA-256 `4411c24f2ac9e7dd647824c7d663c9a223401b8a0f985385492da96b688cddf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.WeierstrassCurve.Varianta4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.WeierstrassCurve.Varianta4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Weierstrass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Arithmetic.Weierstrass

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weierstrass
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.WeierstrassCurve.Varianta4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53

namespace Folder
namespace Arithmetic

structure WeierstrassCurve (K : Type _) [Field K] where
  a1 : K
  a2 : K
  a3 : K
  a4 : K
  a6 : K

structure ShortWeierstrass (K : Type _) [Field K] where
  A : K
  B : K

structure AffinePoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  x : K
  y : K
  on_curve : y ^ 2 = x ^ 3 + E.A * x + E.B

end Arithmetic
end Folder
```
