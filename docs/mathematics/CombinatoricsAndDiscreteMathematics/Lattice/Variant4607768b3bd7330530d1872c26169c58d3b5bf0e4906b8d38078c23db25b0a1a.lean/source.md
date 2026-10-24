# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb0a59d1ead51158a889183a1d7c7cf849b3e462` · SHA-256 `bce92acfdf9eefdd58aee877b6ca6bc615839326c2bd1d689c1d5ab7c2ac459c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SupUnivEqISup.Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SupUnivEqISup.Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Finset.Max
import Mathlib.Data.Fintype.Basic

/-!
# Lemmas relating fintypes and order/lattice structure.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SupUnivEqISup.Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067

open Function

open Nat

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
    a ∈ s.inf f ↔ ∀ i ∈ s, a ∈ f i := by induction' s using Finset.cons_induction <;> simp [*]

end Finset

open Finset Function

theorem Finite.exists_max [Finite α] [Nonempty α] [LinearOrder β] (f : α → β) :
    ∃ x₀ : α, ∀ x, f x ≤ f x₀ := by
  cases nonempty_fintype α
  simpa using exists_max_image univ f univ_nonempty

theorem Finite.exists_min [Finite α] [Nonempty α] [LinearOrder β] (f : α → β) :
    ∃ x₀ : α, ∀ x, f x₀ ≤ f x := by
  cases nonempty_fintype α
  simpa using exists_min_image univ f univ_nonempty
```
