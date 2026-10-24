# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6d19a327d7e53f0607ff98f2cf05da38d320885` · SHA-256 `187bd5fddccfbd69edd5be685144edd4d5f6465894c39732b617532aaf3a97c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Batteries.Recycling.MonadSatisfying.Basic

@[expose] public section

/-!
# Results about monadic operations on `List`, in terms of `SatisfiesM`.

-/

namespace List

theorem satisfiesM_foldlM [Monad m] [LawfulMonad m] {f : β → α → m β} (h₀ : motive b)
    (h₁ : ∀ (b) (_ : motive b) (a : α) (_ : a ∈ l), SatisfiesM motive (f b a)) :
    SatisfiesM motive (List.foldlM f b l) := by
  induction l generalizing b with
  | nil => exact SatisfiesM.pure h₀
  | cons hd tl ih =>
    simp only [foldlM_cons]
    apply SatisfiesM.bind_pre
    let ⟨q, qh⟩ := h₁ b h₀ hd mem_cons_self
    exact ⟨(fun ⟨b, bh⟩ => ⟨b, ih bh (fun b bh a am => h₁ b bh a (mem_cons_of_mem hd am))⟩) <$> q,
      by simpa using qh⟩

theorem satisfiesM_foldrM [Monad m] [LawfulMonad m] {f : α → β → m β} (h₀ : motive b)
    (h₁ : ∀ (a : α) (_ : a ∈ l) (b) (_ : motive b), SatisfiesM motive (f a b)) :
    SatisfiesM motive (List.foldrM f b l) := by
  induction l with
  | nil => exact SatisfiesM.pure h₀
  | cons hd tl ih =>
    simp only [foldrM_cons]
    apply SatisfiesM.bind_pre
    let ⟨q, qh⟩ := ih (fun a am b hb => h₁ a (mem_cons_of_mem hd am) b hb)
    exact ⟨(fun ⟨b, bh⟩ => ⟨b, h₁ hd mem_cons_self b bh⟩) <$> q,
      by simpa using qh⟩

end List
```
