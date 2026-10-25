# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OffLine.Variant4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c316a899d63fc2e2a6866668462b8fa6a57e127f` · SHA-256 `4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Symmetry
import Mathlib.Tactic.Linarith

/-!
# Quantitative off-critical-line cells

A positive divisor count in a cell uniformly separated from the critical line
is a certified finite-height counterexample, not a heuristic warning.
-/

namespace Mathematics.RHIsolation

structure OffCriticalLineCell
    (cell : AnalyticCell) where
  separation : ℝ
  separation_pos : 0 < separation
  separated :
    ∀ z ∈ cell.carrier,
      separation ≤ |z.re - (1 : ℝ) / 2|

structure CertifiedOffLineZero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime) where
  cell : AnalyticCell
  offLine : OffCriticalLineCell cell
  count :
    ArgumentPrincipleCertificate authority cell
  positiveCount : 0 < count.count

theorem positive_count_in_offLineCell_gives_offLineZero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (certificate :
      CertifiedOffLineZero authority) :
    ∃ z,
      z ∈ certificate.cell.interior ∧
      xi z = 0 ∧
      z.re ≠ (1 : ℝ) / 2 := by
  have divisorPositive :
      0 <
        (authority.divisor
          certificate.cell).count := by
    rw [certificate.count.countSound]
    exact certificate.positiveCount
  obtain ⟨z, zMem, zZero⟩ :=
    (authority.divisor certificate.cell)
      |>.exists_zero_of_count_pos divisorPositive
  refine ⟨z, zMem, zZero, ?_⟩
  intro onLine
  have inCarrier :
      z ∈ certificate.cell.carrier :=
    certificate.cell.interior_subset zMem
  have separated :=
    certificate.offLine.separated z inCarrier
  rw [onLine] at separated
  norm_num at separated
  linarith [certificate.offLine.separation_pos]

theorem certifiedOffLineZero_refutes_finiteHeightRH
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (certificate :
      CertifiedOffLineZero authority) :
    ∃ z,
      z ∈ certificate.cell.interior ∧
      xi z = 0 ∧
      z.re ≠ (1 : ℝ) / 2 :=
  positive_count_in_offLineCell_gives_offLineZero
    certificate

end Mathematics.RHIsolation
```
