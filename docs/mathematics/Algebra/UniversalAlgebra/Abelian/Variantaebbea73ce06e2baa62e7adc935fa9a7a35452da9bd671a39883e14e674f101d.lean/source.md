# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e145bf4fc7337e1b41c0d6ff4824b809f4172dac` · SHA-256 `aebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.Topology.Sheaves.Abelian
import Mathlib.Algebra.Category.GroupCat.Abelian
import Mathlib.Algebra.Category.GroupCat.FilteredColimits
import Mathlib.Condensed.Basic

/-!

Condensed abelian groups form an abelian category.

-/

universe u

open CategoryTheory Limits

/--
The category of condensed abelian groups, defined as sheaves of abelian groups over
`CompHaus` with respect to the coherent Grothendieck topology.
-/
abbrev CondensedAb := Condensed.{u} AddCommGroupCat.{u+1}

noncomputable instance CondensedAb.abelian :
    CategoryTheory.Abelian CondensedAb.{u} :=
  letI : PreservesLimits (forget AddCommGroupCat.{u+1}) :=
    AddCommGroupCat.forgetPreservesLimits.{u+1, u+1}
  CategoryTheory.sheafIsAbelian
```
