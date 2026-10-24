# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `927ff6812ec1dd6f659744bce23fcebbb63e309f` · SHA-256 `0668fd99cc48f332592d6443a069a80cea7204e01be33f9d7fad26f4a5f3603e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Field.Opposite
import Mathlib.Algebra.Star.Basic
import Mathlib.Data.NNRat.Defs
import Mathlib.Data.Rat.Cast.Defs

/-!
# *-ring structure on ℚ and ℚ≥0.
-/

instance Rat.instStarRing : StarRing ℚ := starRingOfComm
instance NNRat.instStarRing : StarRing ℚ≥0 := starRingOfComm
instance Rat.instTrivialStar : TrivialStar ℚ := ⟨fun _ ↦ rfl⟩
instance NNRat.instTrivialStar : TrivialStar ℚ≥0 := ⟨fun _ ↦ rfl⟩

variable {R : Type*}

open MulOpposite

@[simp, norm_cast]
lemma star_nnratCast [DivisionSemiring R] [StarRing R] (q : ℚ≥0) : star (q : R) = q :=
  (congr_arg unop <| map_nnratCast (starRingEquiv : R ≃+* Rᵐᵒᵖ) q).trans (unop_nnratCast _)

@[simp, norm_cast]
theorem star_ratCast [DivisionRing R] [StarRing R] (r : ℚ) : star (r : R) = r :=
  (congr_arg unop <| map_ratCast (starRingEquiv : R ≃+* Rᵐᵒᵖ) r).trans (unop_ratCast _)
```
