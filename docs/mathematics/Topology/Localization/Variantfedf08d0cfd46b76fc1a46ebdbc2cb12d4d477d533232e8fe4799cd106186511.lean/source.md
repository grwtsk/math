# Complete source: GRWTSK.Topology.Localization.Variantfedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66a21a31131b4d061e25aa61a30a80b1c3b59f95` · SHA-256 `fedf08d0cfd46b76fc1a46ebdbc2cb12d4d477d533232e8fe4799cd106186511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Localization.CalculusOfFractions.OfAdjunction
public import Mathlib.Topology.Convenient.Category

/-!
# The category of `X`-generated spaces, as a localization

Let `X i` be a family of topological spaces. In this file, we introduce
a property of morphisms `morphismPropertyWithGeneratedByTopologyEquiv X`
in the category `TopCat`: it consists of the morphisms corresponding to
the canonical continuous maps `WithGeneratedByTopology X Z → Z` for
all topological spaces `Z`. We show that the functor
`TopCat.toContinuousGeneratedByCat X : TopCat ⥤ ContinuousGeneratedByCat X`
makes `ContinuousGeneratedByCat X` the localized category of `TopCat` with
respect to this class of morphisms. Similarly,
`TopCat.toGeneratedByTopCat : TopCat ⥤ GeneratedByTopCat X` is also
a localization functor.

-/

@[expose] public section

universe v t u

open CategoryTheory

namespace TopCat

variable {ι : Type t} (X : ι → Type u) [∀ i, TopologicalSpace (X i)]

/-- Given a family of topological spaces `X`, this is the family of morphisms in `TopCat`
corresponding to the continuous maps `WithGeneratedByTopology X Z → Z` for
all topological spaces `Z`. -/
def morphismPropertyWithGeneratedByTopologyEquiv : MorphismProperty TopCat.{v} :=
  MorphismProperty.ofHoms (GeneratedByTopCat.adjCounit (X := X)).app

instance : (TopCat.toContinuousGeneratedByCat.{v} X).IsLocalization
    (TopCat.morphismPropertyWithGeneratedByTopologyEquiv X) :=
  ContinuousGeneratedByCat.adj.isLocalization_rightAdjoint _
    (by rintro _ _ _ ⟨Z⟩; infer_instance)
    (fun _ ↦ by constructor)

instance : (TopCat.toGeneratedByTopCat.{v} (X := X)).IsLocalization
    (TopCat.morphismPropertyWithGeneratedByTopologyEquiv X) :=
  GeneratedByTopCat.adj.isLocalization_rightAdjoint _
    (by rintro _ _ _ ⟨Z⟩; infer_instance)
    (fun _ ↦ by constructor)

end TopCat
```
