# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sections.Variant5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcb15edd6e8c910604a2051a6645b10c1366d0de` · SHA-256 `5c88af95a3eabef5151d12d1732e22b88df74007467fcfdfbd956c2115a10927`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.List.Forall2
/-!
# List sections

This file proves some stuff about `List.sections` (definition in `Data.List.Defs`). A section of a
list of lists `[l₁, ..., lₙ]` is a list whose `i`-th element comes from the `i`-th list.
-/

public section


open Nat

namespace List

variable {α β : Type*}

theorem mem_sections {L : List (List α)} {f} : f ∈ sections L ↔ Forall₂ (· ∈ ·) f L := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · induction L generalizing f
    · cases mem_singleton.1 h
      exact Forall₂.nil
    simp only [sections, mem_flatMap, mem_map] at h
    rcases h with ⟨_, _, _, _, rfl⟩
    simp only [*, forall₂_cons, true_and]
  · induction h with
    | nil => simp only [sections, mem_singleton]
    | @cons a l f L al fL fs =>
      simp only [sections, mem_flatMap, mem_map]
      exact ⟨f, fs, a, al, rfl⟩

theorem mem_sections_length {L : List (List α)} {f} (h : f ∈ sections L) : length f = length L :=
  (mem_sections.1 h).length_eq

open scoped Relator in
theorem rel_sections {r : α → β → Prop} :
    (Forall₂ (Forall₂ r) ⇒ Forall₂ (Forall₂ r)) sections sections
  | _, _, Forall₂.nil => Forall₂.cons Forall₂.nil Forall₂.nil
  | _, _, Forall₂.cons h₀ h₁ =>
    rel_flatMap (rel_sections h₁) fun _ _ hl => rel_map (fun _ _ ha => Forall₂.cons ha hl) h₀

end List
```
