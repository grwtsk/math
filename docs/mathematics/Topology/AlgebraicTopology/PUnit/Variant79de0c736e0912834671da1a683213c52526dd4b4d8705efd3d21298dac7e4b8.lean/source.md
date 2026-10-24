# Complete source: GRWTSK.Topology.AlgebraicTopology.PUnit.Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `354d877aad6f4bddd921d377e69d2786b872c631` · SHA-256 `79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic

/-!
# Fundamental groupoid of punit

The fundamental groupoid of punit is naturally isomorphic to `CategoryTheory.Discrete PUnit`
-/


noncomputable section

open CategoryTheory

universe u v

namespace Path

instance : Subsingleton (Path PUnit.unit PUnit.unit) :=
  ⟨fun x y => by ext⟩

end Path

namespace FundamentalGroupoid

instance {x y : FundamentalGroupoid PUnit} : Subsingleton (x ⟶ y) := by
  convert_to Subsingleton (Path.Homotopic.Quotient PUnit.unit PUnit.unit)
  apply Quotient.instSubsingletonQuotient

/-- Equivalence of groupoids between fundamental groupoid of punit and punit -/
@[simps]
def punitEquivDiscretePUnit : FundamentalGroupoid PUnit.{u + 1} ≌ Discrete PUnit.{v + 1} where
  functor := Functor.star _
  inverse := (CategoryTheory.Functor.const _).obj ⟨PUnit.unit⟩
  unitIso := NatIso.ofComponents (fun _ => Iso.refl _)
  counitIso := Iso.refl _

end FundamentalGroupoid
```
