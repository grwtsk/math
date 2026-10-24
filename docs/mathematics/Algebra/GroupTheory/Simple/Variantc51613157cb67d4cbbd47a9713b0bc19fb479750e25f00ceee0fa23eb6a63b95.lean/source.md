# Complete source: GRWTSK.Algebra.GroupTheory.Simple.Variantc51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd68b99c544df10cfb905ea292dcecae91a3aa0a` · SHA-256 `c51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
module

public import Mathlib.GroupTheory.QuotientGroup.Basic
public import Mathlib.GroupTheory.Subgroup.Simple

/-!
# Simplicity of quotient groups

This file characterizes when a quotient group is simple.

## Main results

* `CommGroup.isSimpleGroup_iff_isCoatom`: a subgroup of a commutative group is a coatom in the
  subgroup lattice iff the quotient by it is simple.
-/

public section

/-- A subgroup of a commutative group is maximal (a coatom in the subgroup lattice) iff the quotient
by it is simple. Group analogue of `isSimpleModule_iff_isCoatom`. -/
@[to_additive /-- A subgroup of an additive commutative group is maximal (a coatom in the subgroup
lattice) iff the quotient by it is simple. Additive group analogue of
`isSimpleModule_iff_isCoatom`. -/]
theorem CommGroup.isSimpleGroup_iff_isCoatom {G : Type*} [CommGroup G] {M : Subgroup G} :
    IsSimpleGroup (G ⧸ M) ↔ IsCoatom M := by
  rw [← Set.isSimpleOrder_Ici_iff_isCoatom,
    ← (QuotientGroup.comapMk'OrderIso M).isSimpleOrder_iff, isSimpleGroup_iff, isSimpleOrder_iff]
  simp [Subgroup.normal_of_isMulCommutative]
```
