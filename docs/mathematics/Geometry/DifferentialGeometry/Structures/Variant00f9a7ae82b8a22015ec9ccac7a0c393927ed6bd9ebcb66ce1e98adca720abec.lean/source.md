# Complete source: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43d7dce3a01d4b2ead5228d685b10029994ceaee` · SHA-256 `00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright © 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.Geometry.Manifold.Algebra.LieGroup

#align_import geometry.manifold.algebra.structures from "leanprover-community/mathlib"@"d1bd9c5df2867c1cb463bc6364446d57bdd9f7f1"

/-!
# Smooth structures

In this file we define smooth structures that build on Lie groups. We prefer using the term smooth
instead of Lie mainly because Lie ring has currently another use in mathematics.
-/

open scoped Manifold

section SmoothRing

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E]

-- See note [Design choices about smooth algebraic structures]
/-- A smooth (semi)ring is a (semi)ring `R` where addition and multiplication are smooth.
If `R` is a ring, then negation is automatically smooth, as it is multiplication with `-1`. -/
class SmoothRing (I : ModelWithCorners 𝕜 E H) (R : Type*) [Semiring R] [TopologicalSpace R]
    [ChartedSpace H R] extends SmoothAdd I R : Prop where
  smooth_mul : Smooth (I.prod I) I fun p : R × R => p.1 * p.2
#align smooth_ring SmoothRing

-- see Note [lower instance priority]
instance (priority := 100) SmoothRing.toSmoothMul (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Semiring R] [TopologicalSpace R] [ChartedSpace H R] [h : SmoothRing I R] :
    SmoothMul I R :=
  { h with }
#align smooth_ring.to_has_smooth_mul SmoothRing.toSmoothMul

-- see Note [lower instance priority]
instance (priority := 100) SmoothRing.toLieAddGroup (I : ModelWithCorners 𝕜 E H) (R : Type*)
    [Ring R] [TopologicalSpace R] [ChartedSpace H R] [SmoothRing I R] : LieAddGroup I R where
  compatible := StructureGroupoid.compatible (contDiffGroupoid ⊤ I)
  smooth_add := smooth_add I
  smooth_neg := by simpa only [neg_one_mul] using @smooth_mul_left 𝕜 _ H _ E _ _ I R _ _ _ _ (-1)
#align smooth_ring.to_lie_add_group SmoothRing.toLieAddGroup

end SmoothRing

-- see Note [lower instance priority]
instance (priority := 100) fieldSmoothRing {𝕜 : Type*} [NontriviallyNormedField 𝕜] :
    SmoothRing 𝓘(𝕜) 𝕜 :=
  { normedSpaceLieAddGroup with
    smooth_mul := by
      rw [smooth_iff]
      refine' ⟨continuous_mul, fun x y => _⟩
      simp only [Prod.mk.eta, mfld_simps]
      rw [contDiffOn_univ]
      exact contDiff_mul }
#align field_smooth_ring fieldSmoothRing

variable {𝕜 R E H : Type*} [TopologicalSpace R] [TopologicalSpace H] [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] [ChartedSpace H R] (I : ModelWithCorners 𝕜 E H)

/-- A smooth (semi)ring is a topological (semi)ring. This is not an instance for technical reasons,
see note [Design choices about smooth algebraic structures]. -/
theorem topologicalSemiring_of_smooth [Semiring R] [SmoothRing I R] : TopologicalSemiring R :=
  { continuousMul_of_smooth I, continuousAdd_of_smooth I with }
#align topological_semiring_of_smooth topologicalSemiring_of_smooth
```
