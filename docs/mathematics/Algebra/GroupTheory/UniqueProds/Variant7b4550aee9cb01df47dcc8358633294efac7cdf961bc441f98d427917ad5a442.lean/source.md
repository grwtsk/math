# Complete source: GRWTSK.Algebra.GroupTheory.UniqueProds.Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `084d8a90a9c3f8cb5c9cb4849ff1804cef7ada8f` · SHA-256 `20a91e11a93dfb7d3686e88dfd3e371e788c143b15264e26b26a11858fcc7f73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FreeMonoid.Variant91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FreeMonoid.Variant91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493","mathematical_subject":"Algebra.Groups","original_sha256":"91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/FreeMonoid/UniqueProds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.FreeMonoid.Basic
import Mathlib.Algebra.Group.UniqueProds.Basic
import Mathlib.Algebra.Order.Group.Nat

/-!
# Free monoids have unique products
-/


namespace GRWTSK.Algebra.GroupTheory.FreeMonoid.Variant91335464e2e1db94ab25eb8b9cef491ef3ec4cdf04b86d8e22a6129a8480f493

assert_not_exists Cardinal Subsemiring Algebra Submodule StarModule

open Finset

/-- Any `FreeMonoid` has the `TwoUniqueProds` property. -/
instance FreeMonoid.instTwoUniqueProds {κ : Type*} : TwoUniqueProds (FreeMonoid κ) :=
  .of_mulHom ⟨Multiplicative.ofAdd ∘ List.length, fun _ _ ↦ congr_arg _ List.length_append⟩
    (fun _ _ _ _ h h' ↦ List.append_inj h <| Equiv.injective Multiplicative.ofAdd h'.1)

/-- Any `FreeAddMonoid` has the `TwoUniqueSums` property. -/
instance FreeAddMonoid.instTwoUniqueSums {κ : Type*} : TwoUniqueSums (FreeAddMonoid κ) :=
  .of_addHom ⟨_, fun _ _ => List.length_append⟩ (fun _ _ _ _ h h' ↦ List.append_inj h h'.1)
```
