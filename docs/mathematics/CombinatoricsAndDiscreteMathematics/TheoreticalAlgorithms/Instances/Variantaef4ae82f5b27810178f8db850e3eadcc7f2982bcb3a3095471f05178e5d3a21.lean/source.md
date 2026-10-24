# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variantaef4ae82f5b27810178f8db850e3eadcc7f2982bcb3a3095471f05178e5d3a21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcb9f39438239556db5be8bea530192ca2325a08` · SHA-256 `c696d1ed269a0ef71a7035585953cc358610f4af97112dff5e51655062906616`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BindSingleton.Variantfb335ffccc41dbcfd0f43c85f3551e74033d388147545f4a3e8cb16bede8feba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb335ffccc41dbcfd0f43c85f3551e74033d388147545f4a3e8cb16bede8feba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BindSingleton.Variantfb335ffccc41dbcfd0f43c85f3551e74033d388147545f4a3e8cb16bede8feba","mathematical_subject":"Computation.DataStructures","original_sha256":"fb335ffccc41dbcfd0f43c85f3551e74033d388147545f4a3e8cb16bede8feba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Data/List/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Mathlib.Init.Data.List.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BindSingleton.Variantfb335ffccc41dbcfd0f43c85f3551e74033d388147545f4a3e8cb16bede8feba

#align_import init.data.list.instances from "leanprover-community/lean"@"9af482290ef68e8aaa5ead01aa7b09b7be7019fd"

/-!
Decidable Instances for `List` not (yet) in `Std`
-/

universe u v w

namespace List

variable {α : Type u} {β : Type v} {γ : Type w}

-- Porting note: simp can prove this
-- @[simp]
theorem bind_singleton (f : α → List β) (x : α) : [x].bind f = f x :=
  append_nil (f x)
#align list.bind_singleton List.bind_singleton

@[simp] theorem bind_singleton' (l : List α) : (l.bind fun x => [x]) = l := by
  induction l <;> simp [*]
#align list.bind_singleton' List.bind_singleton'

theorem map_eq_bind {α β} (f : α → β) (l : List α) : map f l = l.bind fun x => [f x] := by
  simp only [← map_singleton]
  rw [← bind_singleton' l, bind_map, bind_singleton']
#align list.map_eq_bind List.map_eq_bind

theorem bind_assoc {α β} (l : List α) (f : α → List β) (g : β → List γ) :
    (l.bind f).bind g = l.bind fun x => (f x).bind g := by induction l <;> simp [*]
#align list.bind_assoc List.bind_assoc

instance instMonad : Monad List.{u} where
  pure := @List.ret
  bind := @List.bind
  map := @List.map
#align list.monad List.instMonad

instance instLawfulMonad : LawfulMonad List.{u} := LawfulMonad.mk'
  (id_map := map_id)
  (pure_bind := fun _ _ => List.append_nil _)
  (bind_assoc := List.bind_assoc)
  (bind_pure_comp := fun _ _ => (map_eq_bind _ _).symm)
#align list.is_lawful_monad List.instLawfulMonad

instance instAlternative : Alternative List.{u} where
  failure := @List.nil
  orElse l l' := List.append l (l' ())
#align list.alternative List.instAlternative

#noalign list.bin_tree_to_list

variable {α : Type u} {p : α → Prop} [DecidablePred p]

instance decidableBex : ∀ (l : List α), Decidable (∃ x ∈ l, p x)
  | []    => isFalse (by simp)
  | x::xs =>
    if h₁ : p x
    then isTrue ⟨x, mem_cons_self _ _, h₁⟩
    else match decidableBex xs with
      | isTrue h₂  => isTrue <| by
        cases' h₂ with y h; cases' h with hm hp
        exact ⟨y, mem_cons_of_mem _ hm, hp⟩
      | isFalse h₂ => isFalse <| by
        intro h; cases' h with y h; cases' h with hm hp
        cases' mem_cons.1 hm with h h
        · rw [h] at hp; contradiction
        · exact absurd ⟨y, h, hp⟩ h₂
#align list.decidable_bex List.decidableBex

instance decidableBall (l : List α) : Decidable (∀ x ∈ l, p x) :=
  if h : ∃ x ∈ l, ¬ p x then
    isFalse $ let ⟨x, h, np⟩ := h; fun al => np (al x h)
  else
    isTrue $ fun x hx => if h' : p x then h' else False.elim $ h ⟨x, hx, h'⟩
#align list.decidable_ball List.decidableBall

end List
```
