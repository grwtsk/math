# Complete source: GRWTSK.Topology.GeneralTopology.Order.Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63094d57fd2588fb38f59134cfd585348c9c2bc2` · SHA-256 `fafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Sets.Closeds

/-!
# Clopen upper sets

In this file we define the type of clopen upper sets.
-/


open Set TopologicalSpace

variable {α : Type*} [TopologicalSpace α] [LE α]

/-! ### Compact open sets -/


/-- The type of clopen upper sets of a topological space. -/
structure ClopenUpperSet (α : Type*) [TopologicalSpace α] [LE α] extends Clopens α where
  upper' : IsUpperSet carrier

namespace ClopenUpperSet

instance : SetLike (ClopenUpperSet α) α where
  coe s := s.carrier
  coe_injective' s t h := by
    obtain ⟨⟨_, _⟩, _⟩ := s
    obtain ⟨⟨_, _⟩, _⟩ := t
    congr

/-- See Note [custom simps projection]. -/
def Simps.coe (s : ClopenUpperSet α) : Set α := s

initialize_simps_projections ClopenUpperSet (carrier → coe, as_prefix coe)

theorem upper (s : ClopenUpperSet α) : IsUpperSet (s : Set α) :=
  s.upper'

theorem isClopen (s : ClopenUpperSet α) : IsClopen (s : Set α) :=
  s.isClopen'

/-- Reinterpret an upper clopen as an upper set. -/
@[simps]
def toUpperSet (s : ClopenUpperSet α) : UpperSet α :=
  ⟨s, s.upper⟩

@[ext]
protected theorem ext {s t : ClopenUpperSet α} (h : (s : Set α) = t) : s = t :=
  SetLike.ext' h

@[simp]
theorem coe_mk (s : Clopens α) (h) : (mk s h : Set α) = s :=
  rfl

instance : Max (ClopenUpperSet α) :=
  ⟨fun s t => ⟨s.toClopens ⊔ t.toClopens, s.upper.union t.upper⟩⟩

instance : Min (ClopenUpperSet α) :=
  ⟨fun s t => ⟨s.toClopens ⊓ t.toClopens, s.upper.inter t.upper⟩⟩

instance : Top (ClopenUpperSet α) :=
  ⟨⟨⊤, isUpperSet_univ⟩⟩

instance : Bot (ClopenUpperSet α) :=
  ⟨⟨⊥, isUpperSet_empty⟩⟩

instance : Lattice (ClopenUpperSet α) :=
  SetLike.coe_injective.lattice _ (fun _ _ => rfl) fun _ _ => rfl

instance : BoundedOrder (ClopenUpperSet α) :=
  BoundedOrder.lift ((↑) : _ → Set α) (fun _ _ => id) rfl rfl

@[simp]
theorem coe_sup (s t : ClopenUpperSet α) : (↑(s ⊔ t) : Set α) = ↑s ∪ ↑t :=
  rfl

@[simp]
theorem coe_inf (s t : ClopenUpperSet α) : (↑(s ⊓ t) : Set α) = ↑s ∩ ↑t :=
  rfl

@[simp]
theorem coe_top : (↑(⊤ : ClopenUpperSet α) : Set α) = univ :=
  rfl

@[simp]
theorem coe_bot : (↑(⊥ : ClopenUpperSet α) : Set α) = ∅ :=
  rfl

instance : Inhabited (ClopenUpperSet α) :=
  ⟨⊥⟩

end ClopenUpperSet
```
