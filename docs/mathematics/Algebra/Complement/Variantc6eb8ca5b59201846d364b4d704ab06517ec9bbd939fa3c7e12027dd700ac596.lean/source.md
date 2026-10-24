# Complete source: GRWTSK.Algebra.Complement.Variantc6eb8ca5b59201846d364b4d704ab06517ec9bbd939fa3c7e12027dd700ac596

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e3c5cb4e25e2d1bc1727ddc3a5870202e400836` · SHA-256 `5a868e87832650594abe8a7a612f78afeda4eefeb8f46fe26b84270a1c8906b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ComplementUnique.Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ComplementUnique.Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Complement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Absorption

/-!
# Boolean complement neighborhood

Complement uniqueness, involution, and De Morgan laws are retained as
elementary consequences rather than primitive fields.
-/


namespace GRWTSK.Algebra.ComplementUnique.Variant52433806c6dc55f733c7bc5805987a08b3111b20e6471ddffae9af945d893799

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

theorem complement_unique (a b : B)
    (hJoin : a ⊔ b = ⊤)
    (hMeet : a ⊓ b = ⊥) :
    b = aᶜ :=
  (_root_.compl_unique hMeet hJoin).symm

@[simp] theorem complement_involutive (a : B) :
    aᶜᶜ = a := by simp

theorem complement_join_eq_meet (a b : B) :
    (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ := by
  exact (_root_.compl_sup : (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ)

theorem complement_meet_eq_join (a b : B) :
    (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ := by
  exact (_root_.compl_inf : (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ)

end Mathematics.Boolean
```
