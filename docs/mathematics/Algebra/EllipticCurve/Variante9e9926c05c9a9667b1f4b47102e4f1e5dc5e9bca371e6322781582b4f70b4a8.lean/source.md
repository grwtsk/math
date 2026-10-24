# Complete source: GRWTSK.Algebra.EllipticCurve.Variante9e9926c05c9a9667b1f4b47102e4f1e5dc5e9bca371e6322781582b4f70b4a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b422f2381e616000cef43efc334cda7f221c27c1` · SHA-256 `95de7e0af641878e600712bd430ca1170f477fbe816af140f96afb61c4ad14f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ECPoint.Variantf88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ECPoint.Variantf88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/EllipticCurve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Arithmetic.Weierstrass

/-!
# Folder.Arithmetic.EllipticCurve

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.elliptic_curve
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.Algebra.ECPoint.Variantf88c8cc094eae04d559a6bd0e910e4641cc8f62d19b2f4fdba89434ac3877bb2

namespace Folder
namespace Arithmetic

inductive ECPoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  | infinity : ECPoint E
  | affine : AffinePoint E → ECPoint E

structure ECGroupLaw {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  add : ECPoint E → ECPoint E → ECPoint E
  zero_left : ∀ P, add (ECPoint.infinity (E := E)) P = P
  zero_right : ∀ P, add P (ECPoint.infinity (E := E)) = P
  neg : ECPoint E → ECPoint E
  add_left_neg : ∀ P, add (neg P) P = ECPoint.infinity (E := E)
  add_right_neg : ∀ P, add P (neg P) = ECPoint.infinity (E := E)
  assoc : ∀ P Q R, add (add P Q) R = add P (add Q R)

end Arithmetic
end Folder
```
