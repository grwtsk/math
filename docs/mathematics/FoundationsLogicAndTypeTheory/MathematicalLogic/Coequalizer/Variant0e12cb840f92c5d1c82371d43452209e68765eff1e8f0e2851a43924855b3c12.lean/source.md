# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Coequalizer.Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2a8f7f055cc41ec0c8482e92b11e3d269a34a31` · SHA-256 `0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.Logic.Function.Defs

/-!
# Coequalizer of a pair of functions

The coequalizer of two functions `f g : α → β` is the pair (`μ`, `p : β → μ`) that
satisfies the following universal property: Every function `u : β → γ`
with `u ∘ f = u ∘ g` factors uniquely via `p`.

In this file we define the coequalizer and provide the basic API.
-/

universe v

namespace Function

/-- The relation generating the equivalence relation used for defining `Function.coequalizer`. -/
inductive Coequalizer.Rel {α β : Type*} (f g : α → β) : β → β → Prop where
  | intro (x : α) : Rel f g (f x) (g x)

/-- The coequalizer of two functions `f g : α → β` is the pair (`μ`, `p : β → μ`) that
satisfies the following universal property: Every function `u : β → γ`
with `u ∘ f = u ∘ g` factors uniquely via `p`. -/
def Coequalizer {α : Type*} {β : Type v} (f g : α → β) : Type v :=
  Quot (Function.Coequalizer.Rel f g)

namespace Coequalizer

variable {α β : Type*} (f g : α → β)

/-- The canonical projection to the coequalizer. -/
def mk (x : β) : Coequalizer f g :=
  Quot.mk _ x

lemma condition (x : α) : mk f g (f x) = mk f g (g x) :=
  Quot.sound (.intro x)

lemma mk_surjective : Function.Surjective (mk f g) :=
  Quot.exists_rep

/-- Any map `u : β → γ` with `u ∘ f = u ∘ g` factors via `Function.Coequalizer.mk`. -/
def desc {γ : Type*} (u : β → γ) (hu : u ∘ f = u ∘ g) : Coequalizer f g → γ :=
  Quot.lift u (fun _ _ (.intro e) ↦ congrFun hu e)

@[simp] lemma desc_mk {γ : Type*} (u : β → γ) (hu : u ∘ f = u ∘ g) (x : β) :
    desc f g u hu (mk f g x) = u x :=
  rfl

end Function.Coequalizer
```
