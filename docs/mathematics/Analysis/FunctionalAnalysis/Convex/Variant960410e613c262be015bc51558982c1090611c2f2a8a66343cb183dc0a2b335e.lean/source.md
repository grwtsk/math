# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variant960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6c1dfa895025464d82849e1871ba29d07e8ff41` · SHA-256 `960410e613c262be015bc51558982c1090611c2f2a8a66343cb183dc0a2b335e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Sébastien Gouëzel, Frédéric Dupuis
-/
module

public import Mathlib.Analysis.Convex.Uniform
public import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Convexity properties of inner product spaces

## Main results

- `InnerProductSpace.toUniformConvexSpace`: an inner product space is a uniformly convex space.

## Tags

inner product space, Hilbert space, norm

-/

public section


noncomputable section

open Real
open LinearMap (BilinForm)

variable {F : Type*}
  [SeminormedAddCommGroup F] [InnerProductSpace ℝ F]

-- See note [lower instance priority]
instance (priority := 100) InnerProductSpace.toUniformConvexSpace : UniformConvexSpace F :=
  ⟨fun ε hε => by
    refine
      ⟨2 - √(4 - ε ^ 2), sub_pos_of_lt <| (sqrt_lt' zero_lt_two).2 ?_, fun x hx y hy hxy => ?_⟩
    · norm_num
      exact pow_pos hε _
    rw [sub_sub_cancel]
    refine le_sqrt_of_sq_le ?_
    rw [sq, eq_sub_iff_add_eq.2 (parallelogram_law_with_norm_mul ℝ x y), ← sq ‖x - y‖, hx, hy]
    ring_nf
    gcongr⟩
```
