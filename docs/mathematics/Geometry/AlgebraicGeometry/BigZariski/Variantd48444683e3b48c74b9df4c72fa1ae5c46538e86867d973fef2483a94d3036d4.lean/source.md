# Complete source: GRWTSK.Geometry.AlgebraicGeometry.BigZariski.Variantd48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2224023a8e185c178a0f949de3f5c5df2a649033` · SHA-256 `d48444683e3b48c74b9df4c72fa1ae5c46538e86867d973fef2483a94d3036d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Adam Topaz
-/
import Mathlib.AlgebraicGeometry.Sites.MorphismProperty
import Mathlib.CategoryTheory.Sites.Canonical
/-!
# The big Zariski site of schemes

In this file, we define the Zariski topology, as a Grothendieck topology on the
category `Scheme.{u}`: this is `Scheme.zariskiTopology.{u}`. If `X : Scheme.{u}`,
the Zariski topology on `Over X` can be obtained as `Scheme.zariskiTopology.over X`
(see `CategoryTheory.Sites.Over`.).

TODO:
* If `Y : Scheme.{u}`, define a continuous functor from the category of opens of `Y`
  to `Over Y`, and show that a presheaf on `Over Y` is a sheaf for the Zariski topology
  iff its "restriction" to the topological space `Z` is a sheaf for all `Z : Over Y`.
* We should have good notions of (pre)sheaves of `Type (u + 1)` (e.g. associated
  sheaf functor, pushforward, pullbacks) on `Scheme.{u}` for this topology. However,
  some constructions in the `CategoryTheory.Sites` folder currently assume that
  the site is a small category: this should be generalized. As a result,
  this big Zariski site can considered as a test case of the Grothendieck topology API
  for future applications to étale cohomology.

-/

universe v u

open CategoryTheory

namespace AlgebraicGeometry

namespace Scheme

/-- The Zariski pretopology on the category of schemes. -/
def zariskiPretopology : Pretopology (Scheme.{u}) :=
  pretopology @IsOpenImmersion

/-- The Zariski topology on the category of schemes. -/
abbrev zariskiTopology : GrothendieckTopology (Scheme.{u}) :=
  zariskiPretopology.toGrothendieck

instance subcanonical_zariskiTopology : zariskiTopology.Subcanonical := by
  apply GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj
  intro X
  rw [Presieve.isSheaf_pretopology]
  rintro Y S ⟨𝓤,rfl⟩ x hx
  let e : Y ⟶ X := 𝓤.glueMorphisms (fun j => x (𝓤.map _) (.mk _)) <| by
    intro i j
    apply hx
    exact Limits.pullback.condition
  refine ⟨e, ?_, ?_⟩
  · rintro Z e ⟨j⟩
    dsimp [e]
    rw [𝓤.ι_glueMorphisms]
  · intro e' h
    apply 𝓤.hom_ext
    intro j
    rw [𝓤.ι_glueMorphisms]
    exact h (𝓤.map j) (.mk j)

end Scheme

end AlgebraicGeometry
```
