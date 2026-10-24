# Complete source: GRWTSK.Topology.GeneralTopology.Compact.Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5e6544a5c99255a958d30c2f29b37dd2661855c` · SHA-256 `b75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.RingTheory.Noetherian.Defs

/-!

# Compact submodules

-/

variable {R M : Type*} [CommSemiring R] [TopologicalSpace R] [AddCommMonoid M] [Module R M]
variable [TopologicalSpace M] [ContinuousAdd M] [ContinuousSMul R M]

lemma Submodule.isCompact_of_fg [CompactSpace R] {N : Submodule R M} (hN : N.FG) :
    IsCompact (X := M) N := by
  obtain ⟨s, hs⟩ := hN
  have : LinearMap.range (Fintype.linearCombination R (α := s) Subtype.val) = N := by
    simp [Finsupp.range_linearCombination, hs]
  rw [← this]
  refine isCompact_range ?_
  simp only [Fintype.linearCombination, Finset.univ_eq_attach, smul_eq_mul, LinearMap.coe_mk,
    AddHom.coe_mk]
  fun_prop

lemma Ideal.isCompact_of_fg [IsTopologicalSemiring R] [CompactSpace R]
    {I : Ideal R} (hI : I.FG) : IsCompact (X := R) I :=
  Submodule.isCompact_of_fg hI

variable (R M) in
lemma Module.Finite.compactSpace [CompactSpace R] [Module.Finite R M] : CompactSpace M :=
  ⟨Submodule.isCompact_of_fg (Module.Finite.fg_top (R := R))⟩

instance (priority := low) IsNoetherianRing.isClosed_ideal
    {R : Type*} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
    [IsNoetherianRing R] [CompactSpace R] [T2Space R] (I : Ideal R) :
    IsClosed (X := R) I :=
  (Ideal.isCompact_of_fg (IsNoetherian.noetherian I)).isClosed
```
