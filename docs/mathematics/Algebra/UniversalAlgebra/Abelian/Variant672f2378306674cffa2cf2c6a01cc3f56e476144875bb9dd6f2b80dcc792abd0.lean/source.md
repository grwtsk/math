# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variant672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e56f7fc428d78d81c79ed6e8f1554407c1a9200a` · SHA-256 `672f2378306674cffa2cf2c6a01cc3f56e476144875bb9dd6f2b80dcc792abd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sophie Morel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel
-/
module

public import Mathlib.Algebra.Category.FGModuleCat.Colimits
public import Mathlib.Algebra.Category.FGModuleCat.Limits
public import Mathlib.Algebra.Category.ModuleCat.Abelian
public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages

/-!
# `FGModuleCat K` is an abelian category.

-/

public section

noncomputable section

universe v u

open CategoryTheory

namespace FGModuleCat

variable {k : Type u} [Ring k] [IsNoetherianRing k]

instance {X Y : FGModuleCat k} (f : X ⟶ Y) : IsIso (Abelian.coimageImageComparison f) :=
  have := IsIso.of_isIso_fac_right (Abelian.PreservesCoimage.hom_coimageImageComparison
      (forget₂ (FGModuleCat k) (ModuleCat k)) f).symm
  Functor.FullyFaithful.isIso_of_isIso_map (ModuleCat.isFG k).fullyFaithfulι _

instance : Abelian (FGModuleCat k) := Abelian.ofCoimageImageComparisonIsIso

end FGModuleCat
```
