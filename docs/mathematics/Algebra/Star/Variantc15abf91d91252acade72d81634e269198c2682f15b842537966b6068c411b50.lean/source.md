# Complete source: GRWTSK.Algebra.Star.Variantc15abf91d91252acade72d81634e269198c2682f15b842537966b6068c411b50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e297091b8bb0aef07135ffab1d4fb6085fd6afc0` · SHA-256 `ff7f2037caccde56c11fbeaf94ac43c1257196f0e231c5e61de7091c55838b61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingConGenRelStar.Variant63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingConGenRelStar.Variant63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Congruence/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Data.Finset.Attr
public import Mathlib.RingTheory.Congruence.Defs

/-!
# Helpers for working with star operators on quotients.

TODO: consider defining `Star` versions of `RingCon`.
-/


namespace GRWTSK.Algebra.RingConGenRelStar.Variant63ebe3cc10f30e0432fa09dab631c3007e4e6658dc5e952b28d5f63b170a9773

public section

section Ring
variable {R : Type*} [NonUnitalNonAssocSemiring R] [StarRing R] {r : R → R → Prop}

theorem RingConGen.Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : R⦄ : Rel r a b → Rel r (star a) (star b)
  | refl _ => .refl _
  | symm h => .symm <| h.star hr
  | trans h1 h2 => .trans  (h1.star hr) (h2.star hr)
  | of _ _ h => .of _ _ (hr _ _ h)
  | mul h1 h2 => by
    rw [star_mul, star_mul]
    exact (h2.star hr).mul (h1.star hr)
  | add h1 h2 => by
    rw [star_add, star_add]
    exact (h1.star hr).add (h2.star hr)

theorem ringConGen_star (hr : ∀ a b, r a b → r (star a) (star b)) ⦃a b : R⦄ :
    ringConGen r a b → ringConGen r (star a) (star b) := (RingConGen.Rel.star hr ·)

end Ring
```
