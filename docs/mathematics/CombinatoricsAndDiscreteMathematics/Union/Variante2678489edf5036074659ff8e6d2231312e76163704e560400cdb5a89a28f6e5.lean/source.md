# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variante2678489edf5036074659ff8e6d2231312e76163704e560400cdb5a89a28f6e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `544e955c29e2cf94798bf3bab25615e52fbf0ca6` · SHA-256 `ba42dfd1ece93244a0fea1dd734828450fca737c6bfb51a0d9cf4202bdb26b90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SupBiUnion.Variant6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SupBiUnion.Variant6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finset/Lattice/Union.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Lattice.Fold
public import Mathlib.Data.Finset.Union

/-!
# Relating `Finset.biUnion` with lattice operations

This file shows `Finset.biUnion` could alternatively be defined in terms of `Finset.sup`.

## TODO

Remove `Finset.biUnion` in favour of `Finset.sup`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SupBiUnion.Variant6cf1d0ee26a79c08a44c108b2ea5298def4110f9d53f5201090ae1408478a972

public section

open OrderDual

variable {F α β γ ι κ : Type*}
variable {s s₁ s₂ : Finset β} {f g : β → α} {a : α}

namespace Finset

section Sup

variable [SemilatticeSup α] [OrderBot α]

@[simp, grind =]
theorem sup_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).sup f = s.sup fun x => (t x).sup f :=
  eq_of_forall_ge_iff fun c => by simp [@forall_comm _ β]

end Sup

section Inf

variable [SemilatticeInf α] [OrderTop α]

@[simp, grind =] theorem inf_biUnion [DecidableEq β] (s : Finset γ) (t : γ → Finset β) :
    (s.biUnion t).inf f = s.inf fun x => (t x).inf f :=
  @sup_biUnion αᵒᵈ _ _ _ _ _ _ _ _

end Inf

section Sup'

variable [SemilatticeSup α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem sup'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).sup' (Hs.biUnion fun b _ => Ht b) f = s.sup' Hs (fun b => (t b).sup' (Ht b) f) :=
  eq_of_forall_ge_iff fun c => by simp [@forall_comm _ β]

end Sup'

section Inf'

variable [SemilatticeInf α]

variable {s : Finset β} (H : s.Nonempty) (f : β → α)

theorem inf'_biUnion [DecidableEq β] {s : Finset γ} (Hs : s.Nonempty) {t : γ → Finset β}
    (Ht : ∀ b, (t b).Nonempty) :
    (s.biUnion t).inf' (Hs.biUnion fun b _ => Ht b) f = s.inf' Hs (fun b => (t b).inf' (Ht b) f) :=
  sup'_biUnion (α := αᵒᵈ) _ Hs Ht

end Inf'

variable [DecidableEq α] {s : Finset ι} {f : ι → Finset α} {a : α}

theorem sup_eq_biUnion {α β} [DecidableEq β] (s : Finset α) (t : α → Finset β) :
    s.sup t = s.biUnion t := by
  ext
  rw [mem_sup, mem_biUnion]

end Finset
```
