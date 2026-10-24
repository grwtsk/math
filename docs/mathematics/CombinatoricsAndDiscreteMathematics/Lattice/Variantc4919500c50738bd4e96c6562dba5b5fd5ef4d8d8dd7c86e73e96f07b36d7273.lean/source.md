# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b95c0c390b8d970bb20c386f3d140dc380f192f8` · SHA-256 `693a1f28ddfbe71740a397707a08dd4e754843dcdab9042cfc4d4096a9ab19f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SupUnivEqISup.Variant5c2891e90b1bffeedd4db7674a43b1f82af0b7a6d97d72e1d78ca390cab63211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c2891e90b1bffeedd4db7674a43b1f82af0b7a6d97d72e1d78ca390cab63211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SupUnivEqISup.Variant5c2891e90b1bffeedd4db7674a43b1f82af0b7a6d97d72e1d78ca390cab63211","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5c2891e90b1bffeedd4db7674a43b1f82af0b7a6d97d72e1d78ca390cab63211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fintype/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Finset.Max
public import Mathlib.Data.Fintype.Basic

/-!
# Lemmas relating fintypes and order/lattice structure.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SupUnivEqISup.Variant5c2891e90b1bffeedd4db7674a43b1f82af0b7a6d97d72e1d78ca390cab63211

public section

universe u v

variable {ι α β : Type*}

namespace Finset

variable [Fintype α] {s : Finset α}

/-- A special case of `Finset.sup_eq_iSup` that omits the useless `x ∈ univ` binder. -/
theorem sup_univ_eq_iSup [CompleteLattice β] (f : α → β) : Finset.univ.sup f = iSup f :=
  (sup_eq_iSup _ f).trans <| congr_arg _ <| funext fun _ => iSup_pos (mem_univ _)

/-- A special case of `Finset.inf_eq_iInf` that omits the useless `x ∈ univ` binder. -/
theorem inf_univ_eq_iInf [CompleteLattice β] (f : α → β) : Finset.univ.inf f = iInf f :=
  @sup_univ_eq_iSup _ βᵒᵈ _ _ (f : α → βᵒᵈ)

@[simp]
theorem fold_inf_univ [SemilatticeInf α] [OrderBot α] (a : α) :
    (Finset.univ.fold min a fun x => x) = ⊥ :=
  eq_bot_iff.2 <|
    ((Finset.fold_op_rel_iff_and <| @le_inf_iff α _).1 le_rfl).2 ⊥ <| Finset.mem_univ _

@[simp]
theorem fold_sup_univ [SemilatticeSup α] [OrderTop α] (a : α) :
    (Finset.univ.fold max a fun x => x) = ⊤ :=
  @fold_inf_univ αᵒᵈ _ _ _ _

lemma mem_inf [DecidableEq α] {s : Finset ι} {f : ι → Finset α} {a : α} :
    a ∈ s.inf f ↔ ∀ i ∈ s, a ∈ f i := by induction s using Finset.cons_induction <;> simp [*]

end Finset

open Finset

theorem Finite.exists_max [Finite α] [Nonempty α] [LinearOrder β] (f : α → β) :
    ∃ x₀ : α, ∀ x, f x ≤ f x₀ := by
  cases nonempty_fintype α
  simpa using exists_max_image univ f univ_nonempty

theorem Finite.exists_min [Finite α] [Nonempty α] [LinearOrder β] (f : α → β) :
    ∃ x₀ : α, ∀ x, f x₀ ≤ f x := by
  cases nonempty_fintype α
  simpa using exists_min_image univ f univ_nonempty
```
