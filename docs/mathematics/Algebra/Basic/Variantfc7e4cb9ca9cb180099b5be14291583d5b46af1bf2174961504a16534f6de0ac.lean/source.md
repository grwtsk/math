# Complete source: GRWTSK.Algebra.Basic.Variantfc7e4cb9ca9cb180099b5be14291583d5b46af1bf2174961504a16534f6de0ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d39ae1c79b843057279df6a9cabe8bce7295f5f` · SHA-256 `e303bb64de2358003824a845a6fe8d9485881e312660a1f0fa9d6ab1f30ad9dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CodomainTrivialIffRangeEqSingletonZero.Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CodomainTrivialIffRangeEqSingletonZero.Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Hom/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston, Jireh Loreaux
-/
import Mathlib.Algebra.Divisibility.Hom
import Mathlib.Algebra.GroupWithZero.InjSurj
import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Data.Set.Insert

/-!
# Additional lemmas about homomorphisms of semirings and rings

These lemmas have been banished here to avoid unnecessary imports in
`Mathlib/Algebra/Hom/Ring/Defs.lean`.

They could be moved to more natural homes.
-/


namespace GRWTSK.Algebra.CodomainTrivialIffRangeEqSingletonZero.Variant87dcdcecadf1192ddf18dfad1eaf7bb7b1cee00a9e91a16cda2691021d6c7fda

assert_not_exists RelIso Field

open Function

variable {α β : Type*}

namespace RingHom

section

variable {_ : NonAssocSemiring α} {_ : NonAssocSemiring β} (f : α →+* β)

/-- `f : α →+* β` has a trivial codomain iff its range is `{0}`. -/
theorem codomain_trivial_iff_range_eq_singleton_zero : (0 : β) = 1 ↔ Set.range f = {0} :=
  f.codomain_trivial_iff_range_trivial.trans
    ⟨fun h =>
      Set.ext fun y => ⟨fun ⟨x, hx⟩ => by simp [← hx, h x], fun hy => ⟨0, by simpa using hy.symm⟩⟩,
      fun h x => Set.mem_singleton_iff.mp (h ▸ Set.mem_range_self x)⟩

end

section Semiring

variable [Semiring α] [Semiring β]

protected theorem map_dvd (f : α →+* β) {a b : α} : a ∣ b → f a ∣ f b :=
  map_dvd f

end Semiring

end RingHom

/-- Pullback `IsDomain` instance along an injective function. -/
protected theorem Function.Injective.isDomain [Semiring α] [IsDomain α] [Semiring β] {F}
    [FunLike F β α] [MonoidWithZeroHomClass F β α] (f : F) (hf : Injective f) : IsDomain β where
  __ := domain_nontrivial f (map_zero _) (map_one _)
  __ := hf.isCancelMulZero f (map_zero _) (map_mul _)
```
