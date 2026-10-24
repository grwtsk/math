# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TeichmullerTukey.Variant5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e604d10c2b7a0236e1ef45147b0fdc75ef78e011` · SHA-256 `5184792a0637a75c09cf237755a8a229dd9445b2234deb6756c5af8eae08458b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Ansar Azhdarov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ansar Azhdarov
-/
module

public import Mathlib.Data.Set.Finite.Range
public import Mathlib.Data.Set.Finite.Lattice
public import Mathlib.Order.Zorn

/-!
# Teichmuller-Tukey

This file defines the notion of being of finite character for a family of sets and proves the
Teichmuller-Tukey lemma.

## Main definitions

- `IsOfFiniteCharacter` : A family of sets $F$ is of finite character iff for every set $X$,
  $X ∈ F$ iff every finite subset of $X$ is in $F$.

## Main results

- `IsOfFiniteCharacter.exists_maximal` : Teichmuller-Tukey lemma, saying that every nonempty
  family of finite character has a maximal element.

## References

- <https://en.wikipedia.org/wiki/Teichm%C3%BCller%E2%80%93Tukey_lemma>
-/

@[expose] public section

open Set

variable {α : Type*} (F : Set (Set α))

namespace Order

/-- A family of sets $F$ is of finite character iff for every set $X$, $X ∈ F$ iff every finite
subset of $X$ is in $F$ -/
def IsOfFiniteCharacter := ∀ x, x ∈ F ↔ ∀ y ⊆ x, y.Finite → y ∈ F

/-- **Teichmuller-Tukey lemma**. Every nonempty family of finite character has a maximal element. -/
theorem IsOfFiniteCharacter.exists_maximal {F} (hF : IsOfFiniteCharacter F) {x : Set α}
    (xF : x ∈ F) : ∃ m, x ⊆ m ∧ Maximal (· ∈ F) m := by
  /- Apply Zorn's lemma. Take the union of the elements of a chain as its upper bound. -/
  refine zorn_subset_nonempty F (fun c cF cch cne ↦
    ⟨sUnion c, ?_, fun s sc ↦ subset_sUnion_of_mem sc⟩) x xF
  /- Prove that the union belongs to `F`. -/
  refine (hF (sUnion c)).mpr fun s sc sfin ↦ ?_
  /- Use the finite character property and the fact that any finite subset of the union is also a
  subset of some element of the chain. -/
  obtain ⟨t, tc, st⟩ := cch.directedOn.exists_mem_subset_of_finite_of_subset_sUnion cne sfin sc
  exact (hF t).mp (cF tc) s st sfin

end Order
```
