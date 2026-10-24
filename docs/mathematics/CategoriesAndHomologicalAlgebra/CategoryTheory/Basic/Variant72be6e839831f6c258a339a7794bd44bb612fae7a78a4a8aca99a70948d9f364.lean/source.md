# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5b253e486a134e1c12513f11b3e521b3f9ed50d` · SHA-256 `72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Connected
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Products
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected
public import Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers
public import Mathlib.CategoryTheory.Limits.Constructions.Equalizers

/-!
# Limits in the over category

Declare instances for limits in the over category: If `C` has finite wide pullbacks, `Over B` has
finite limits, and if `C` has arbitrary wide pullbacks then `Over B` has limits.
-/

public section


universe w v u

-- morphism levels before object levels. See note [category_theory universes].
open CategoryTheory CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]

namespace CategoryTheory.Over

/-- Make sure we can derive pullbacks in `Over B`. -/
instance {B : C} [HasPullbacks C] : HasPullbacks (Over B) := inferInstance

/-- Make sure we can derive equalizers in `Over B`. -/
instance {B : C} [HasEqualizers C] : HasEqualizers (Over B) := inferInstance

instance hasFiniteLimits {B : C} [HasFiniteWidePullbacks C] : HasFiniteLimits (Over B) := by
  have := ConstructProducts.over_finiteProducts_of_finiteWidePullbacks (B := B)
  have := hasEqualizers_of_hasPullbacks_and_binary_products (C := Over B)
  apply hasFiniteLimits_of_hasEqualizers_and_finite_products

instance hasLimits {B : C} [HasWidePullbacks.{w} C] : HasLimitsOfSize.{w, w} (Over B) := by
  have := ConstructProducts.over_binaryProduct_of_pullback (B := B)
  have := hasEqualizers_of_hasPullbacks_and_binary_products (C := Over B)
  have := ConstructProducts.over_products_of_widePullbacks (B := B)
  apply has_limits_of_hasEqualizers_and_products

end Over

namespace Under

instance {B : C} [HasFiniteWidePushouts C] : HasFiniteColimits (Under B) := by
  rw [← hasFiniteLimits_opposite_iff]
  exact hasFiniteLimits_of_hasLimitsLimits_of_createsFiniteLimits (Over.opEquivOpUnder _).inverse

instance {B : C} [HasWidePushouts.{w} C] : HasColimitsOfSize.{w, w} (Under B) := by
  rw [← hasLimitsOfSize_opposite_iff]
  exact hasLimits_of_hasLimits_createsLimits (Over.opEquivOpUnder _).inverse

end CategoryTheory.Under
```
