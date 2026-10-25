# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sigma.Variant52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c78cf623bb1140682946983e4803bf5dad755f9` · SHA-256 `52657323261cd38b6acac5cbf326e50c7e9c635a68280bf275abc315889e538e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public import Mathlib.Data.Fintype.EquivFin
public import Mathlib.Data.Fintype.Sigma
public import Mathlib.Logic.Equiv.Sigma

/-!
# Finiteness of sigma types
-/

public section

variable {α : Type*} {β : α → Type*}

namespace Finite

instance [Finite α] [∀ a, Finite (β a)] : Finite (Σ a, β a) := by
  let := Fintype.ofFinite α
  let := fun a => Fintype.ofFinite (β a)
  infer_instance

instance {ι : Sort*} {π : ι → Sort*} [Finite ι] [∀ i, Finite (π i)] : Finite (Σ' i, π i) :=
  of_equiv _ (Equiv.psigmaEquivSigmaPLift π).symm

instance Set.finite_sigma (s : Set α) (t : (i : α) → Set (β i)) [Finite s] [∀ i, Finite (t i)] :
    Finite (s.sigma t) :=
  .of_equiv _ (Equiv.Set.sigma s t).symm

end Finite

namespace Set

/-- A finite sum of finite sets is finite -/
lemma Finite.sigma {s : Set α} {t : ∀ i, Set (β i)} (hs : s.Finite) (ht : ∀ i ∈ s, (t i).Finite) :
    (s.sigma t).Finite := by
  have := hs.to_subtype
  have : ∀ i : s, Finite (t i) := fun i ↦ (ht i i.2).to_subtype
  exact (Set.univ.sigma fun i : s ↦ t i).toFinite.of_equiv _ {
    toFun := fun x ↦ ⟨⟨x.1.1, x.1.2⟩, ⟨x.1.1.2, x.2.2⟩⟩
    invFun := fun x ↦ ⟨⟨⟨x.1.1, x.2.1⟩, x.1.2⟩, ⟨Set.mem_univ _, x.2.2⟩⟩
  }

end Set
```
