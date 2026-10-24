# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variant6091c705f98a201b3f21bd8b07f2407ad3bd4f7cf857c1476d14a61970571f14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9e35a11e82f9eb775d7a64ab757d47fae2f887f` · SHA-256 `d56a6ad8269da82b434b02653187c28e92eec3505026b5d51f46b889a1327326`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsNeMapEqOfCardLt.Variant8cfc46ff22cbef1594addded39543bf50ba6d3e314adb6b024b58c1237149b69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cfc46ff22cbef1594addded39543bf50ba6d3e314adb6b024b58c1237149b69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExistsNeMapEqOfCardLt.Variant8cfc46ff22cbef1594addded39543bf50ba6d3e314adb6b024b58c1237149b69","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8cfc46ff22cbef1594addded39543bf50ba6d3e314adb6b024b58c1237149b69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fintype/Pigeonhole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Union
public import Mathlib.Data.Fintype.EquivFin

/-!
# Pigeonhole principles in finite types

## Main declarations

We provide the following versions of the pigeonholes principle.
* `Fintype.exists_ne_map_eq_of_card_lt` and `isEmpty_of_card_lt`: Finitely many pigeons and
  pigeonholes. Weak formulation.
* `Finite.exists_ne_map_eq_of_infinite`: Infinitely many pigeons in finitely many pigeonholes.
  Weak formulation.
* `Finite.exists_infinite_fiber`: Infinitely many pigeons in finitely many pigeonholes. Strong
  formulation.

Some more pigeonhole-like statements can be found in `Data.Fintype.CardEmbedding`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsNeMapEqOfCardLt.Variant8cfc46ff22cbef1594addded39543bf50ba6d3e314adb6b024b58c1237149b69

public section

assert_not_exists MonoidWithZero MulAction

open Function

universe u v

variable {α β : Type*}

open Finset

namespace Fintype

variable [Fintype α] [Fintype β]

/-- The pigeonhole principle for finitely many pigeons and pigeonholes.
This is the `Fintype` version of `Finset.exists_ne_map_eq_of_card_lt_of_maps_to`.
-/
theorem exists_ne_map_eq_of_card_lt (f : α → β) (h : Fintype.card β < Fintype.card α) :
    ∃ x y, x ≠ y ∧ f x = f y :=
  let ⟨x, _, y, _, h⟩ := Finset.exists_ne_map_eq_of_card_lt_of_maps_to h fun x _ => mem_univ (f x)
  ⟨x, y, h⟩

end Fintype

namespace Function.Embedding

/-- If `‖β‖ < ‖α‖` there are no embeddings `α ↪ β`.
This is a formulation of the pigeonhole principle.

Note this cannot be an instance as it needs `h`. -/
@[simp]
theorem isEmpty_of_card_lt [Fintype α] [Fintype β] (h : Fintype.card β < Fintype.card α) :
    IsEmpty (α ↪ β) :=
  ⟨fun f =>
    let ⟨_x, _y, ne, feq⟩ := Fintype.exists_ne_map_eq_of_card_lt f h
    ne <| f.injective feq⟩

end Function.Embedding

/-- The pigeonhole principle for infinitely many pigeons in finitely many pigeonholes. If there are
infinitely many pigeons in finitely many pigeonholes, then there are at least two pigeons in the
same pigeonhole.

See also: `Fintype.exists_ne_map_eq_of_card_lt`, `Finite.exists_infinite_fiber`.
-/
theorem Finite.exists_ne_map_eq_of_infinite {α β} [Infinite α] [Finite β] (f : α → β) :
    ∃ x y : α, x ≠ y ∧ f x = f y := by
  simpa [Injective, and_comm] using not_injective_infinite_finite f

attribute [local instance] Fintype.ofFinite in
/-- The strong pigeonhole principle for infinitely many pigeons in
finitely many pigeonholes.  If there are infinitely many pigeons in
finitely many pigeonholes, then there is a pigeonhole with infinitely
many pigeons.

See also: `Finite.exists_ne_map_eq_of_infinite`
-/
theorem Finite.exists_infinite_fiber [Infinite α] [Finite β] (f : α → β) :
    ∃ y : β, Infinite (f ⁻¹' {y}) := by
  classical
    by_contra! hf
    cases nonempty_fintype β
    let key : Fintype α :=
      { elems := univ.biUnion fun y : β => (f ⁻¹' {y}).toFinset
        complete := by simp }
    exact key.false
```
