# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variantfd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dd2b9174d884b73c8ac4b1e865bdffaf6da2e4d` · SHA-256 `fd87ff8e3e701dc4316d40e7c803bffb4c5110830406f9e9f340af1494b1fc0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Part
import Mathlib.Order.Hom.Basic
import Mathlib.Tactic.Common

/-!
# Monotonicity of monadic operations on `Part`
-/

open Part

variable {α β γ : Type*} [Preorder α]

section bind
variable {f : α → Part β} {g : α → β → Part γ}

lemma Monotone.partBind (hf : Monotone f) (hg : Monotone g) :
    Monotone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, exists_prop, Part.bind_eq_bind, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

lemma Antitone.partBind (hf : Antitone f) (hg : Antitone g) :
    Antitone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, exists_prop, Part.bind_eq_bind, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

end bind

section map
variable {f : β → γ} {g : α → Part β}

lemma Monotone.partMap (hg : Monotone g) : Monotone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind monotone_const

lemma Antitone.partMap (hg : Antitone g) : Antitone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind antitone_const

end map

section seq
variable {β γ : Type _} {f : α → Part (β → γ)} {g : α → Part β}

lemma Monotone.partSeq (hf : Monotone f) (hg : Monotone g) : Monotone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using hf.partBind <| Monotone.of_apply₂ fun _ ↦ hg.partMap

lemma Antitone.partSeq (hf : Antitone f) (hg : Antitone g) : Antitone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using hf.partBind <| Antitone.of_apply₂ fun _ ↦ hg.partMap

end seq

namespace OrderHom

/-- `Part.bind` as a monotone function -/
@[simps]
def partBind (f : α →o Part β) (g : α →o β → Part γ) : α →o Part γ where
  toFun x := (f x).bind (g x)
  monotone' := f.2.partBind g.2

end OrderHom
```
