# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ConformalLinearMap.Variantff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `773370669fb2fa827caa35fbb2329043184d5d02` · SHA-256 `ff8b8bea4bea23e54c71cfdee9aadb0f06a00b3cc0a041b0864555f6075509d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.NormedSpace.ConformalLinearMap
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-!
# Conformal maps between inner product spaces

In an inner product space, a map is conformal iff it preserves inner products up to a scalar factor.
-/


variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]

open LinearIsometry ContinuousLinearMap

open RealInnerProductSpace

/-- A map between two inner product spaces is a conformal map if and only if it preserves inner
products up to a scalar factor, i.e., there exists a positive `c : ℝ` such that
`⟪f u, f v⟫ = c * ⟪u, v⟫` for all `u`, `v`. -/
theorem isConformalMap_iff (f : E →L[ℝ] F) :
    IsConformalMap f ↔ ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪f u, f v⟫ = c * ⟪u, v⟫ := by
  constructor
  · rintro ⟨c₁, hc₁, li, rfl⟩
    refine ⟨c₁ * c₁, mul_self_pos.2 hc₁, fun u v => ?_⟩
    simp only [real_inner_smul_left, real_inner_smul_right, mul_assoc, coe_smul',
      coe_toContinuousLinearMap, Pi.smul_apply, inner_map_map]
  · rintro ⟨c₁, hc₁, huv⟩
    obtain ⟨c, hc, rfl⟩ : ∃ c : ℝ, 0 < c ∧ c₁ = c * c :=
      ⟨√c₁, Real.sqrt_pos.2 hc₁, (Real.mul_self_sqrt hc₁.le).symm⟩
    refine ⟨c, hc.ne', (c⁻¹ • f : E →ₗ[ℝ] F).isometryOfInner fun u v => ?_, ?_⟩
    · simp only [real_inner_smul_left, real_inner_smul_right, huv, mul_assoc, coe_smul,
        inv_mul_cancel_left₀ hc.ne', LinearMap.smul_apply, ContinuousLinearMap.coe_coe]
    · ext1 x
      exact (smul_inv_smul₀ hc.ne' (f x)).symm
```
