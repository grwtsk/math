# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Conformal.Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ad1d5ac2c557cb3e52e5dcb4e5bc79bf669c006` · SHA-256 `3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

/-!
# Angles and conformal maps

This file proves that conformal maps preserve angles.

-/


namespace InnerProductGeometry

variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]

theorem IsConformalMap.preserves_angle {f' : E →L[ℝ] F} (h : IsConformalMap f') (u v : E) :
    angle (f' u) (f' v) = angle u v := by
  obtain ⟨c, hc, li, rfl⟩ := h
  exact (angle_smul_smul hc _ _).trans (li.angle_map _ _)

/-- If a real differentiable map `f` is conformal at a point `x`,
    then it preserves the angles at that point. -/
theorem ConformalAt.preserves_angle {f : E → F} {x : E} {f' : E →L[ℝ] F} (h : HasFDerivAt f f' x)
    (H : ConformalAt f x) (u v : E) : angle (f' u) (f' v) = angle u v :=
  let ⟨_, h₁, c⟩ := H
  h₁.unique h ▸ IsConformalMap.preserves_angle c u v

end InnerProductGeometry
```
