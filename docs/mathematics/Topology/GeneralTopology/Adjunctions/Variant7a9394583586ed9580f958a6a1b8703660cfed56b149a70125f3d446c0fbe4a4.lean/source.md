# Complete source: GRWTSK.Topology.GeneralTopology.Adjunctions.Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee3bb58879e05f1afd8b2b707179f64f32e235ea` · SHA-256 `7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.Stonean.Basic
import Mathlib.Topology.Category.TopCat.Adjunctions
import Mathlib.Topology.StoneCech

/-!
# Adjunctions involving the category of Stonean spaces

This file constructs the left adjoint `typeToStonean` to the forgetful functor from Stonean spaces
to sets, using the Stone-Cech compactification. This allows to conclude that the monomorphisms in
`Stonean` are precisely the injective maps (see `Stonean.mono_iff_injective`).
-/

universe u

open CategoryTheory Adjunction

namespace Stonean

/-- The object part of the compactification functor from types to Stonean spaces. -/
def stoneCechObj (X : Type u) : Stonean :=
  letI : TopologicalSpace X := ⊥
  haveI : DiscreteTopology X := ⟨rfl⟩
  haveI : ExtremallyDisconnected (StoneCech X) :=
    CompactT2.Projective.extremallyDisconnected StoneCech.projective
  of (StoneCech X)

/-- The equivalence of homsets to establish the adjunction between the Stone-Cech compactification
functor and the forgetful functor. -/
noncomputable def stoneCechEquivalence (X : Type u) (Y : Stonean.{u}) :
    (stoneCechObj X ⟶ Y) ≃ (X ⟶ ToType Y) := by
  letI : TopologicalSpace X := ⊥
  haveI : DiscreteTopology X := ⟨rfl⟩
  refine fullyFaithfulToCompHaus.homEquiv.trans ?_
  exact (_root_.stoneCechEquivalence (TopCat.of X) (toCompHaus.obj Y)).trans
    (TopCat.adj₁.homEquiv _ _)

end Stonean

/-- The Stone-Cech compactification functor from types to Stonean spaces. -/
noncomputable def typeToStonean : Type u ⥤ Stonean.{u} :=
  leftAdjointOfEquiv (G := forget _) Stonean.stoneCechEquivalence fun _ _ _ _ _ => rfl

namespace Stonean

/-- The Stone-Cech compactification functor is left adjoint to the forgetful functor. -/
noncomputable def stoneCechAdjunction : typeToStonean ⊣ (forget Stonean) :=
  adjunctionOfEquivLeft (G := forget _) stoneCechEquivalence fun _ _ _ _ _ => rfl

/-- The forgetful functor from Stonean spaces, being a right adjoint, preserves limits. -/
noncomputable instance forget.preservesLimits : Limits.PreservesLimits (forget Stonean) :=
  rightAdjoint_preservesLimits stoneCechAdjunction

end Stonean
```
