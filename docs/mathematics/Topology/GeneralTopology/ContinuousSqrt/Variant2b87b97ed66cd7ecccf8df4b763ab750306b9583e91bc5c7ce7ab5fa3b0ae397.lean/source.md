# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousSqrt.Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68078455bea93d5eeffb169400653967689d6055` · SHA-256 `2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Real.StarOrdered
import Mathlib.Topology.ContinuousMap.StarOrdered

/-! # Instances of `ContinuousSqrt`

This provides the instances of `ContinuousSqrt` for `ℝ`, `ℝ≥0`, and `ℂ`, thereby yielding instances
of `StarOrderedRing C(α, R)` and `StarOrderedRing C(α, R)₀` for any topological space `α` and `R`
among `ℝ≥0`, `ℝ`, and `ℂ`. -/

open scoped NNReal

open scoped ComplexOrder in
open RCLike in
noncomputable
instance (priority := 100) instContinuousSqrtRCLike {𝕜 : Type*} [RCLike 𝕜] :
    ContinuousSqrt 𝕜 where
  sqrt := ((↑) ∘ (√·) ∘ re ∘ (fun z ↦ z.2 - z.1))
  continuousOn_sqrt := by fun_prop
  sqrt_nonneg _ _ := by simp
  sqrt_mul_sqrt x hx := by
    simp only [Function.comp_apply,star_def]
    rw [← sub_nonneg] at hx
    obtain hx' := nonneg_iff.mp hx |>.right
    rw [← conj_eq_iff_im, conj_eq_iff_re] at hx'
    rw [← ofReal_mul, Real.mul_self_sqrt, hx', add_sub_cancel]
    simpa using nonneg_iff.mp hx |>.left

noncomputable instance : ContinuousSqrt ℝ := instContinuousSqrtRCLike (𝕜 := ℝ)

open ComplexOrder in
noncomputable instance : ContinuousSqrt ℂ := instContinuousSqrtRCLike (𝕜 := ℂ)

noncomputable instance : ContinuousSqrt ℝ≥0 where
  sqrt := NNReal.sqrt ∘ (fun x ↦ x.2 - x.1)
  continuousOn_sqrt := by fun_prop
  sqrt_nonneg := by simp
  sqrt_mul_sqrt := by simpa using fun _ _ h ↦ Eq.symm <| add_tsub_cancel_of_le h
```
