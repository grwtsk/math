# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variantf0ceb8d7b054fc000719f881887b80394d82efefa358460006c6b3ec9576d849

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38d66dfaad4690a5511bd8301ad9623574efefc2` · SHA-256 `f1b08d5c9ec6ed75f441454919bb5170fc1444256046486cddda2837b5213afe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ConGenRelStar.Variant1ba1455a965ff929ec7ae1d67065664545d02e7fc380059472b474238956f4da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ba1455a965ff929ec7ae1d67065664545d02e7fc380059472b474238956f4da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ConGenRelStar.Variant1ba1455a965ff929ec7ae1d67065664545d02e7fc380059472b474238956f4da","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1ba1455a965ff929ec7ae1d67065664545d02e7fc380059472b474238956f4da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Congruence/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.GroupTheory.Congruence.Defs

/-!
# Helpers for working with star operators on quotients.

TODO: consider defining `Star` versions of `Con` and `AddCon`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ConGenRelStar.Variant1ba1455a965ff929ec7ae1d67065664545d02e7fc380059472b474238956f4da

public section

section Mul
variable {M : Type*} [Mul M] [StarMul M] {r : M → M → Prop}

theorem ConGen.Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : M⦄ : Rel r a b → Rel r (star a) (star b)
  | refl _ => .refl _
  | symm h => .symm <| h.star hr
  | trans h1 h2 => .trans  (h1.star hr) (h2.star hr)
  | of _ _ h => .of _ _ (hr _ _ h)
  | mul h1 h2 => by
    rw [star_mul, star_mul]
    exact (h2.star hr).mul (h1.star hr)

theorem conGen_star (hr : ∀ a b, r a b → r (star a) (star b)) ⦃a b : M⦄ :
    conGen r a b → conGen r (star a) (star b) := (ConGen.Rel.star hr ·)

end Mul

section Add
variable {A : Type*} [AddMonoid A] [StarAddMonoid A] {r : A → A → Prop}

theorem AddConGen.Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : A⦄ : Rel r a b → Rel r (star a) (star b)
  | refl _ => .refl _
  | symm h => .symm <| h.star hr
  | trans h1 h2 => .trans  (h1.star hr) (h2.star hr)
  | of _ _ h => .of _ _ (hr _ _ h)
  | add h1 h2 => by
    rw [star_add, star_add]
    exact (h1.star hr).add (h2.star hr)

theorem addConGen_star (hr : ∀ a b, r a b → r (star a) (star b)) ⦃a b : A⦄ :
    addConGen r a b → addConGen r (star a) (star b) := (AddConGen.Rel.star hr ·)

end Add
```
