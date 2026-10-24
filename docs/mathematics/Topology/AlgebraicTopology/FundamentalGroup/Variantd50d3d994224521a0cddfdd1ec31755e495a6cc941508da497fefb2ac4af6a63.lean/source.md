# Complete source: GRWTSK.Topology.AlgebraicTopology.FundamentalGroup.Variantd50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34bfa3bd71c05fa6564eec8d58cc7f8a361df725` · SHA-256 `d50d3d994224521a0cddfdd1ec31755e495a6cc941508da497fefb2ac4af6a63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mark Lavrentyev. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mark Lavrentyev
-/
import Mathlib.CategoryTheory.Groupoid
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Topology.Connected.PathConnected
import Mathlib.Topology.Homotopy.Path
import Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic

/-!
# Fundamental group of a space

Given a topological space `X` and a basepoint `x`, the fundamental group is the automorphism group
of `x` i.e. the group with elements being loops based at `x` (quotiented by homotopy equivalence).
-/


universe u

variable {X : Type u} [TopologicalSpace X]
variable {x₀ x₁ : X}

noncomputable section

open CategoryTheory

/-- The fundamental group is the automorphism group (vertex group) of the basepoint
in the fundamental groupoid. -/
def FundamentalGroup (X : Type u) [TopologicalSpace X] (x : X) :=
  @Aut (FundamentalGroupoid X) _ ⟨x⟩

instance (X : Type u) [TopologicalSpace X] (x : X) : Group (FundamentalGroup X x) := by
  dsimp only [FundamentalGroup]
  infer_instance

instance (X : Type u) [TopologicalSpace X] (x : X) : Inhabited (FundamentalGroup X x) := by
  dsimp only [FundamentalGroup]
  infer_instance

namespace FundamentalGroup

attribute [local instance] Path.Homotopic.setoid

/-- Get an isomorphism between the fundamental groups at two points given a path -/
def fundamentalGroupMulEquivOfPath (p : Path x₀ x₁) :
    FundamentalGroup X x₀ ≃* FundamentalGroup X x₁ :=
  Aut.autMulEquivOfIso (asIso ⟦p⟧)

variable (x₀ x₁)

/-- The fundamental group of a path connected space is independent of the choice of basepoint. -/
def fundamentalGroupMulEquivOfPathConnected [PathConnectedSpace X] :
    FundamentalGroup X x₀ ≃* FundamentalGroup X x₁ :=
  fundamentalGroupMulEquivOfPath (PathConnectedSpace.somePath x₀ x₁)

/-- An element of the fundamental group as an arrow in the fundamental groupoid. -/
abbrev toArrow {X : TopCat} {x : X} (p : FundamentalGroup X x) :
    FundamentalGroupoid.mk x ⟶ FundamentalGroupoid.mk x :=
  p.hom

/-- An element of the fundamental group as a quotient of homotopic paths. -/
abbrev toPath {X : TopCat} {x : X} (p : FundamentalGroup X x) : Path.Homotopic.Quotient x x :=
  toArrow p

/-- An element of the fundamental group, constructed from an arrow in the fundamental groupoid. -/
abbrev fromArrow {X : TopCat} {x : X}
    (p : FundamentalGroupoid.mk x ⟶ FundamentalGroupoid.mk x) :
    FundamentalGroup X x where
  hom := p
  inv := CategoryTheory.Groupoid.inv p

/-- An element of the fundamental group, constructed from a quotient of homotopic paths. -/
abbrev fromPath {X : TopCat} {x : X} (p : Path.Homotopic.Quotient x x) : FundamentalGroup X x :=
  fromArrow p

end FundamentalGroup
```
