# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CompactlySupported.Varianta5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1be0d01dc83d4d400005f3b66040def6462bb745` · SHA-256 `a5d06cc7769689a3df9ec018639c6dc3f6724ea5acc37aa181ee0401c50e56c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yongxi Lin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yongxi Lin, Thomas Zhu
-/
module

public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.Topology.ContinuousMap.CompactlySupported

/-!
# Integrating compactly supported continuous functions

This file contains definitions and lemmas related to integrals of compactly supported continuous
functions.
-/

@[expose] public section

open MeasureTheory

open scoped ENNReal NNReal CompactlySupported

variable {X : Type*}

namespace CompactlySupportedContinuousMap
variable [TopologicalSpace X] [MeasurableSpace X] [OpensMeasurableSpace X]

lemma integrable {E : Type*} [NormedAddCommGroup E] (f : C_c(X, E))
    {μ : Measure X} [IsFiniteMeasureOnCompacts μ] :
    Integrable f μ :=
  f.continuous.integrable_of_hasCompactSupport f.hasCompactSupport

variable [T2Space X] [LocallyCompactSpace X] (Λ : C_c(X, ℝ) →ₚ[ℝ] ℝ)

/-- Integral as a positive linear functional on `C_c(X, ℝ)`. -/
@[simps!]
noncomputable def integralPositiveLinearMap (μ : Measure X)
    [IsFiniteMeasureOnCompacts μ] : C_c(X, ℝ) →ₚ[ℝ] ℝ :=
  PositiveLinearMap.mk₀
    { toFun f := ∫ x, f x ∂μ,
      map_add' f g := integral_add' f.integrable g.integrable
      map_smul' c f := integral_smul c f }
    fun _ ↦ integral_nonneg

/-- Integration as a positive linear functional on `C_c(X, ℝ≥0)`. -/
-- Note: the default generated `simps` lemma uses `Subtype.val` instead of `NNReal.toReal`.
@[simps! apply]
noncomputable def integralLinearMap (μ : Measure X)
    [IsFiniteMeasureOnCompacts μ] :
    C_c(X, ℝ≥0) →ₗ[ℝ≥0] ℝ≥0 :=
  CompactlySupportedContinuousMap.toNNRealLinear (integralPositiveLinearMap μ)

end CompactlySupportedContinuousMap
```
