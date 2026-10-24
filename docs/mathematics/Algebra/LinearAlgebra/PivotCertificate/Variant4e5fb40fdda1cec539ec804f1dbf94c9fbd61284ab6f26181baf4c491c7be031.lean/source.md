# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotCertificate.Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7873f8cc7c7c833d692f1aa99899bcda7cae3554` · SHA-256 `7b8c55770420f7210949eaa88b98562409bf907866412227e19d615cbeda70d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PivotCertificateSound.Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PivotCertificateSound.Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"cf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Linear/PivotCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Linear.Pivot
import Folder.Linear.DeterminantWitness
import Folder.Linear.Certificate

/-!
# Folder.Theorem.Linear.PivotCertificate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.linear.pivot_certificate
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.PivotCertificateSound.Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf

namespace Folder
namespace Linear

theorem pivot_certificate_sound
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  pivot_nonzero C

theorem determinant_certificate_sound
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  determinant_witness_correct W

end Linear
end Folder
```
