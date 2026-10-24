# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Variantfb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c101317cebd5222d254dcae04e90b2b82a04286` · SHA-256 `fb1d5b1205855ed32c2e0cb5b14a9c3a29c10ceaafc00394eead0a333a5d1f95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Fernando Chu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fernando Chu
-/
module

public import Mathlib.CategoryTheory.Adjunction.Limits
public import Mathlib.CategoryTheory.Skeletal

/-!
# (Co)limits of the skeleton of a category

The skeleton of a category inherits all (co)limits the category has.

## Implementation notes

Because the category instance of `ThinSkeleton C` comes from its `Preorder` instance, it is not the
case that `HasLimits C` iff `HasLimits (ThinSkeleton C)`, as the homs live in different universes.
If this is something we really want, we should consider changing the category instance of
`ThinSkeleton C`.
-/

public section

noncomputable section

open CategoryTheory ThinSkeleton

namespace CategoryTheory.Limits

universe v₁ u₁ v₂ u₂ v₃ u₃ w w'

variable {J : Type u₁} [Category.{v₁} J] {C : Type u₂} [Category.{v₂} C]

instance hasLimitsOfShape_skeleton [HasLimitsOfShape J C] : HasLimitsOfShape J (Skeleton C) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (fromSkeleton C)

instance hasLimitsOfSize_skeleton [HasLimitsOfSize.{w, w'} C] :
    HasLimitsOfSize.{w, w'} (Skeleton C) :=
  hasLimits_of_hasLimits_createsLimits (fromSkeleton C)

example [HasLimits C] : HasLimits (Skeleton C) := by infer_instance

instance hasColimitsOfShape_skeleton [HasColimitsOfShape J C] : HasColimitsOfShape J (Skeleton C) :=
  hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape (fromSkeleton C)

instance hasColimitsOfSize_skeleton [HasColimitsOfSize.{w, w'} C] :
    HasColimitsOfSize.{w, w'} (Skeleton C) :=
  hasColimits_of_hasColimits_createsColimits (fromSkeleton C)

example [HasColimits C] : HasColimits (Skeleton C) := by infer_instance

variable [Quiver.IsThin C]

instance hasLimitsOfShape_thinSkeleton [HasLimitsOfShape J C] :
    HasLimitsOfShape J (ThinSkeleton C) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (fromThinSkeleton C)

instance hasLimitsOfSize_thinSkeleton [HasLimitsOfSize.{w, w'} C] :
    HasLimitsOfSize.{w, w'} (ThinSkeleton C) :=
  hasLimits_of_hasLimits_createsLimits (fromThinSkeleton C)

instance hasColimitsOfShape_thinSkeleton [HasColimitsOfShape J C] :
    HasColimitsOfShape J (ThinSkeleton C) :=
  hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape (fromThinSkeleton C)

instance hasColimitsOfSize_thinSkeleton [HasColimitsOfSize.{w, w'} C] :
    HasColimitsOfSize.{w, w'} (ThinSkeleton C) :=
  hasColimits_of_hasColimits_createsColimits (fromThinSkeleton C)

end CategoryTheory.Limits
```
