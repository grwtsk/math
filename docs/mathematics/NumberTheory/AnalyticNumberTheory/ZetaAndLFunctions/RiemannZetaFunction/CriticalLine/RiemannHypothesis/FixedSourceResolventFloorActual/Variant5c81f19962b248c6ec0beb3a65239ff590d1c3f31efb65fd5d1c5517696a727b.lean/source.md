# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedSourceResolventFloorActual.Variant5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `438b425117bf83d589e92bd181a04fed4fde1671` · SHA-256 `5c81f19962b248c6ec0beb3a65239ff590d1c3f31efb65fd5d1c5517696a727b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
import FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open PositiveResolventKernel SourceResolventTruncation

/-- An actual adjoint-kernel vector contributes its full reference overlap to every source mass. -/
theorem sourceMass_kernel_overlap_le (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := by
  apply kernel_witness_regularizedMass_le sourceEnergy sourceEnergy_isPositive α hα
    referenceVector u hu
  rw [sourceEnergy_apply, hTu, map_zero]

/-- Every original occurrence to the right gives the exact positive overlap floor, at all rates. -/
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
theorem nontrivial_sourceMass_uniform_positive_floor (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hc⟩ := nontrivial_reference_visible_kernel ρ hρ hρre
  refine ⟨‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2, hc, ?_⟩
  intro α hα
  exact sourceMass_kernel_overlap_le u hu hTu α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor
```
