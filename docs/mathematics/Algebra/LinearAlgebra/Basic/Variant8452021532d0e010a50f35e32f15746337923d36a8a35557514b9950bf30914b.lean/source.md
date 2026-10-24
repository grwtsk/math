# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `671ecde465226bf1777430ecc0ce82968c092595` · SHA-256 `8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.Subsingleton

/-!
# Rank and torsion

## Main statements

- `rank_quotient_eq_of_le_torsion` : `rank M/N = rank M` if `N ≤ torsion M`.
- `finrank_quotient_eq_of_le_torsion` : `finrank M/N = finrank M` if `N ≤ torsion M`.
- `finrank_quotient_torsion_eq` : `finrank ℤ (M / torsion M) = finrank ℤ M` for an additive
  commutative group `M`.
-/

public section

open Submodule

theorem rank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) : Module.rank R (M ⧸ M') = Module.rank R M :=
  (rank_quotient_le M').antisymm <| by
    nontriviality R
    rw [Module.rank]
    refine ciSup_le fun ⟨s, hs⟩ ↦ LinearIndependent.cardinal_le_rank (v := (M'.mkQ ·)) ?_
    rw [LinearIndepOn, linearIndependent_iff'] at hs
    simp_rw [linearIndependent_iff', ← map_smul, ← map_sum, mkQ_apply, Quotient.mk_eq_zero]
    intro t g hg i hi
    obtain ⟨r, hg⟩ := hN hg
    simp_rw [Finset.smul_sum, Submonoid.smul_def, smul_smul] at hg
    exact r.prop.2 _ (mul_comm (g i) r ▸ hs t _ hg i hi)

theorem finrank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) :
    Module.finrank R (M ⧸ M') = Module.finrank R M :=
  congr_arg Cardinal.toNat (rank_quotient_eq_of_le_torsion hN)

/-- Quotienting an additive commutative group by its torsion subgroup does not change its
`ℤ`-`finrank`. -/
theorem finrank_quotient_torsion_eq {M : Type*} [AddCommGroup M] :
    Module.finrank ℤ (M ⧸ (AddCommGroup.torsion M).toIntSubmodule) = Module.finrank ℤ M :=
  finrank_quotient_eq_of_le_torsion <| le_of_eq <| by
    rw [← Submodule.torsion_int, Submodule.toAddSubgroup_toIntSubmodule]
```
