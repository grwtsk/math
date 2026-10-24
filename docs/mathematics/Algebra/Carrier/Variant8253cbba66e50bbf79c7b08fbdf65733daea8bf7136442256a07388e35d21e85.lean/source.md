# Complete source: GRWTSK.Algebra.Carrier.Variant8253cbba66e50bbf79c7b08fbdf65733daea8bf7136442256a07388e35d21e85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ba86b11061c9f107cc3bece95e3c266fd0917c4` · SHA-256 `290414cd708223c8c07b4daa06bd5f86f6b5ea0f82d2a64cbb210e08edae64ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Algebra.Variant97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Algebra.Variant97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Order.BooleanAlgebra.Basic

/-!
# Canonical Boolean carrier

The retained corpus introduced a second complemented distributive lattice
class.  This reconstruction uses Mathlib's canonical `BooleanAlgebra`; the
source operations become `⊔`, `⊓`, complement, `⊥`, and `⊤`.
-/


namespace GRWTSK.Algebra.Algebra.Variant97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a

namespace Mathematics.Boolean

/-- Canonical replacement for the corpus-local Boolean algebra class. -/
abbrev Algebra (B : Type*) := _root_.BooleanAlgebra B

/-- The source's hand-built Boolean instance is already canonical in Mathlib. -/
abbrev boolAlgebra : Algebra Bool := inferInstance

@[simp] theorem bool_join (a b : Bool) :
    a ⊔ b = (a || b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_meet (a b : Bool) :
    a ⊓ b = (a && b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_complement (a : Bool) :
    aᶜ = !a := by
  cases a <;> rfl

end Mathematics.Boolean
```
