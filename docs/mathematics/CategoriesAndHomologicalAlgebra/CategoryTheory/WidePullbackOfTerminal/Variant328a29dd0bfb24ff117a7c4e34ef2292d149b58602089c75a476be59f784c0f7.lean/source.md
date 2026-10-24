# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WidePullbackOfTerminal.Variant328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `185b4f00a56219897a58b85cf20b8e8caa3d6b86` · SHA-256 `328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks
public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal

/-!
# Existence of wide pullbacks when the target object is terminal

In this file, we show that the wide pullback of a family of arrows `objs j ⟶ B`
exists when `B` is terminal and the product of the objects `objs j` exists.

-/

@[expose] public section

universe w v u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]
  {ι : Type w} {B : C} {objs : ι → C}
  (arrows : (j : ι) → objs j ⟶ B)

namespace WidePullbackCone

/-- The fan that is induced by a wide pullback cone. -/
abbrev toFan (s : WidePullbackCone arrows) : Fan objs :=
  Fan.mk _ s.π

variable (c : Fan objs)

/-- The wide pullback cone given by a fan, when the base object is terminal. -/
abbrev ofFan (hB : IsTerminal B) : WidePullbackCone arrows :=
  WidePullbackCone.mk (hB.from _) c.proj (fun _ ↦ hB.hom_ext _ _)

variable {c} in
/-- When the base object is terminal, a limit wide pullback cone can be obtained
from a limit fan. -/
def isLimitOfFan (hc : IsLimit c) (hB : IsTerminal B) :
    IsLimit (ofFan arrows c hB) :=
  IsLimit.mk _
    (fun s ↦ hc.lift s.toFan)
    (fun s ↦ hB.hom_ext _ _)
    (fun s i ↦ hc.fac s.toFan (.mk i))
    (fun s m _ hm ↦ hc.hom_ext (fun ⟨i⟩ ↦ by simpa using! hm i))

end WidePullbackCone

lemma hasWidePullback_of_isTerminal
    [HasProduct objs] (hB : IsTerminal B) :
    HasWidePullback B objs arrows where
  exists_limit :=
    ⟨_, WidePullbackCone.isLimitOfFan (arrows := arrows) (limit.isLimit _) hB⟩

end CategoryTheory.Limits
```
