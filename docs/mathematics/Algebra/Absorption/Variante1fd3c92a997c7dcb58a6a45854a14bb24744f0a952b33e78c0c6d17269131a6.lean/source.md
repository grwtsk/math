# Complete source: GRWTSK.Algebra.Absorption.Variante1fd3c92a997c7dcb58a6a45854a14bb24744f0a952b33e78c0c6d17269131a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f09a4a958aea938ffb20aaff88eaf7eba1bd2d1d` · SHA-256 `563506e595ee6ac5e8f2ef28173eb7dc0fa6e62ae6e7c318ea80ca87b7468cba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.JoinLeftCommutative.Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.JoinLeftCommutative.Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Absorption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Identity

/-!
# Boolean absorption neighborhood

Absorption and left-commutation follow from the distributive lattice already
carried by `BooleanAlgebra`.
-/


namespace GRWTSK.Algebra.JoinLeftCommutative.Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem join_absorption (a b : B) :
    a ⊔ (a ⊓ b) = a := by simp

@[simp] theorem meet_absorption (a b : B) :
    a ⊓ (a ⊔ b) = a := by simp

theorem join_left_commutative (a b c : B) :
    a ⊔ (b ⊔ c) = b ⊔ (a ⊔ c) :=
  sup_left_comm a b c

theorem meet_left_commutative (a b c : B) :
    a ⊓ (b ⊓ c) = b ⊓ (a ⊓ c) :=
  inf_left_comm a b c

end Mathematics.Boolean
```
