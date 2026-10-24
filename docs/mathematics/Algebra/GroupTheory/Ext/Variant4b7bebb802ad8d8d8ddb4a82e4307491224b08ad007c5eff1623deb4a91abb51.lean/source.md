# Complete source: GRWTSK.Algebra.GroupTheory.Ext.Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb1a754b7c0f4b312c0d84acff4108a2a686495d` · SHA-256 `b4f26cd2239bb79f667ec2ebbd997fd0855b4b8bc7335c6d97d5cc66bc7a7549`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddClosureIUnionRangeSingle.Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddClosureIUnionRangeSingle.Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e","mathematical_subject":"Algebra.Groups","original_sha256":"9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DFinsupp/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kenny Lau
-/
import Mathlib.Algebra.Group.Submonoid.Basic
import Mathlib.Data.DFinsupp.Defs

/-!
# Extensionality principles for `DFinsupp`

## Main results

* `DFinsupp.addHom_ext`, `DFinsupp.addHom_ext'`: if two additive homomorphisms from `Π₀ i, β i`
  are equal on each `single a b`, then they are equal.
-/



namespace GRWTSK.Algebra.GroupTheory.AddClosureIUnionRangeSingle.Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e

universe u u₁ u₂ v v₁ v₂ v₃ w x y l

variable {ι : Type u} {γ : Type w} {β : ι → Type v} {β₁ : ι → Type v₁} {β₂ : ι → Type v₂}

namespace DFinsupp

section DecidableEq
variable [DecidableEq ι]

section AddMonoid

variable [∀ i, AddZeroClass (β i)]

@[simp]
theorem add_closure_iUnion_range_single :
    AddSubmonoid.closure (⋃ i : ι, Set.range (single i : β i → Π₀ i, β i)) = ⊤ :=
  top_unique fun x _ => by
    apply DFinsupp.induction x
    · exact AddSubmonoid.zero_mem _
    exact fun a b f _ _ hf =>
      AddSubmonoid.add_mem _
        (AddSubmonoid.subset_closure <| Set.mem_iUnion.2 ⟨a, Set.mem_range_self _⟩) hf

/-- If two additive homomorphisms from `Π₀ i, β i` are equal on each `single a b`, then
they are equal. -/
theorem addHom_ext {γ : Type w} [AddZeroClass γ] ⦃f g : (Π₀ i, β i) →+ γ⦄
    (H : ∀ (i : ι) (y : β i), f (single i y) = g (single i y)) : f = g := by
  refine AddMonoidHom.eq_of_eqOn_denseM add_closure_iUnion_range_single fun f hf => ?_
  simp only [Set.mem_iUnion, Set.mem_range] at hf
  rcases hf with ⟨x, y, rfl⟩
  apply H

/-- If two additive homomorphisms from `Π₀ i, β i` are equal on each `single a b`, then
they are equal.

See note [partially-applied ext lemmas]. -/
@[ext]
theorem addHom_ext' {γ : Type w} [AddZeroClass γ] ⦃f g : (Π₀ i, β i) →+ γ⦄
    (H : ∀ x, f.comp (singleAddHom β x) = g.comp (singleAddHom β x)) : f = g :=
  addHom_ext fun x => DFunLike.congr_fun (H x)

end AddMonoid

end DecidableEq

end DFinsupp
```
