# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variantdd532d3556143d96d59449e0dd4694e207481f3157e67be713c0175007cb388a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52feb73cb5793438470d0ffda25397e5e65e1540` · SHA-256 `87f7d36ea4ca3a05e71a3ade1fcf7c5a3c2f6e7142e730cccece5f6929f18df3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TFAE.Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d","mathematical_subject":"Computation.DataStructures","original_sha256":"4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/TFAE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon
-/
module

public import Batteries.Tactic.Alias
public import Mathlib.Init

/-!
# The Following Are Equivalent

This file allows to state that all propositions in a list are equivalent. It is used by
`Mathlib/Tactic/Tfae.lean`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d

@[expose] public section


namespace List

variable {a b : Prop} {l l₁ l₂ : List Prop}

/-- TFAE: The Following (propositions) Are Equivalent.

The `tfae_have` and `tfae_finish` tactics can be useful in proofs with `TFAE` goals.
-/
def TFAE (l : List Prop) : Prop :=
  ∀ x ∈ l, ∀ y ∈ l, x ↔ y

theorem tfae_nil : TFAE [] :=
  forall_mem_nil _

@[simp]
theorem tfae_singleton (p) : TFAE [p] := by simp [TFAE, -eq_iff_iff]

theorem TFAE.subset (h : TFAE l₂) (hl : l₁ ⊆ l₂) : TFAE l₁ :=
  fun p hp q hq ↦ h p (hl hp) q (hl hq)

theorem tfae_congr (h₁₂ : l₁ ⊆ l₂) (h₂₁ : l₂ ⊆ l₁) : TFAE l₁ ↔ TFAE l₂ :=
  ⟨fun h ↦ h.subset h₂₁, fun h ↦ h.subset h₁₂⟩

theorem Perm.tfae_iff (h : l₁ ~ l₂) : TFAE l₁ ↔ TFAE l₂ := tfae_congr h.subset h.symm.subset

@[simp]
theorem tfae_reverse : TFAE l.reverse ↔ TFAE l := (reverse_perm l).tfae_iff

theorem tfae_of_forall (h : ∀ a ∈ l, a ↔ b) : TFAE l :=
  fun _a₁ h₁ _a₂ h₂ => (h _ h₁).trans (h _ h₂).symm

/-- `(TFAE [P₁, P₂, P₃, ...]).out i j`, where `i`, `j` are the **1-indexed** indices for TFAE
statements, yields a proof of `Pᵢ ↔ Pⱼ`. Indices therefore must be greater than `0`. This
convention matches the statement numbering in `tfae` tactics. -/
theorem TFAE.out {l} (h : TFAE l) (i j : Nat) {a b}
    (h₁ : l[i - 1]? = some a := by rfl)
    (h₂ : l[j - 1]? = some b := by rfl)
    (_ : i ≠ 0 := by first | decide +kernel | fail "TFAE indices start at 1.")
    (_ : j ≠ 0 := by first | decide +kernel | fail "TFAE indices start at 1.") :
    a ↔ b :=
  h _ (List.mem_of_getElem? h₁) _ (List.mem_of_getElem? h₂)

/-- If `P₁ x ↔ ... ↔ Pₙ x` for all `x`, then `(∀ x, P₁ x) ↔ ... ↔ (∀ x, Pₙ x)`.
Note: in concrete cases, Lean has trouble finding the list `[P₁, ..., Pₙ]` from the list
`[(∀ x, P₁ x), ..., (∀ x, Pₙ x)]`, but simply providing a list of underscores with the right
length makes it happier.

Example:
```lean
example (P₁ P₂ P₃ : ℕ → Prop) (H : ∀ n, [P₁ n, P₂ n, P₃ n].TFAE) :
    [∀ n, P₁ n, ∀ n, P₂ n, ∀ n, P₃ n].TFAE :=
  forall_tfae [_, _, _] H
```
-/
theorem forall_tfae {α : Type*} (l : List (α → Prop)) (H : ∀ a : α, (l.map (fun p ↦ p a)).TFAE) :
    (l.map (fun p ↦ ∀ a, p a)).TFAE := by
  simp only [TFAE, List.forall_mem_map]
  intro p₁ hp₁ p₂ hp₂
  exact forall_congr' fun a ↦ H a (p₁ a) (mem_map_of_mem hp₁)
    (p₂ a) (mem_map_of_mem hp₂)

/-- If `P₁ x ↔ ... ↔ Pₙ x` for all `x`, then `(∃ x, P₁ x) ↔ ... ↔ (∃ x, Pₙ x)`.
Note: in concrete cases, Lean has trouble finding the list `[P₁, ..., Pₙ]` from the list
`[(∃ x, P₁ x), ..., (∃ x, Pₙ x)]`, but simply providing a list of underscores with the right
length makes it happier.

Example:
```lean
example (P₁ P₂ P₃ : ℕ → Prop) (H : ∀ n, [P₁ n, P₂ n, P₃ n].TFAE) :
    [∃ n, P₁ n, ∃ n, P₂ n, ∃ n, P₃ n].TFAE :=
  exists_tfae [_, _, _] H
```
-/
theorem exists_tfae {α : Type*} (l : List (α → Prop)) (H : ∀ a : α, (l.map (fun p ↦ p a)).TFAE) :
    (l.map (fun p ↦ ∃ a, p a)).TFAE := by
  simp only [TFAE, List.forall_mem_map]
  intro p₁ hp₁ p₂ hp₂
  exact exists_congr fun a ↦ H a (p₁ a) (mem_map_of_mem hp₁)
    (p₂ a) (mem_map_of_mem hp₂)

theorem tfae_not_iff : TFAE (l.map Not) ↔ TFAE l := by
  classical
  simp only [TFAE, mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂,
    Decidable.not_iff_not]

alias ⟨_, TFAE.not⟩ := tfae_not_iff

end List
````
