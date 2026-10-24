# Complete source: GRWTSK.Analysis.ErrorBounds.WeightedResidualReadout

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0` · SHA-256 `210d043c3a1b88b1bf5d76c4995335eeb3dcbfc73cd6bee6d496b664338d710e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.ErrorBounds.SourceResidualConvergence

/-! Conditional readout and coordinate consumers of S4. Complete source/model
readouts, conditioning weights and net-forcing bounds are not constructed here. -/
namespace GRWTSK.Analysis.ErrorBounds
open ContractingResidualBudget SourceResidualEvolution

/-- A channel with strictly positive weight is controlled by the total mass. -/
theorem coordinate_le_channelMass {ι : Type*} [Fintype ι]
    (weight residual : ι → ℝ) (hn : ∀ i, 0 ≤ weight i) (i : ι) (hi : 0 < weight i) :
    |residual i| ≤ channelMass weight residual / weight i := by
  apply (le_div_iff₀ hi).2
  rw [mul_comm]
  exact Finset.single_le_sum (fun j _ => mul_nonneg (hn j) (abs_nonneg _)) (Finset.mem_univ i)

/-- Vanishing weighted mass gives coordinate convergence only for positive weights. -/
theorem coordinate_vanishes_of_mass {ι : Type*} [Fintype ι]
    (weight : ι → ℝ) (residual : ℕ → ι → ℝ)
    (hn : ∀ i, 0 ≤ weight i) (i : ι) (hi : 0 < weight i)
    (hm : VanishesAtInfinity (fun n => channelMass weight (residual n))) :
    VanishesAtInfinity (fun n => residual n i) := by
  intro ε hε
  obtain ⟨N, hN⟩ := hm (ε * weight i) (mul_pos hε hi)
  refine ⟨N, fun n hnN => ?_⟩
  have hbound := (le_abs_self (channelMass weight (residual n))).trans (hN n hnN)
  calc
    |residual n i| ≤ channelMass weight (residual n) / weight i :=
      coordinate_le_channelMass weight (residual n) hn i hi
    _ ≤ ε := (div_le_iff₀ hi).2 hbound

/-- Independently supplied readouts transport convergence to the actual discrepancy. -/
theorem readout_vanishes_of_mass {ι : Type*} [Fintype ι]
    (weight : ι → ℝ) (coefficient source model : ℕ → ι → ℝ)
    (actual approximate : ℕ → ℝ) (hn : ∀ i, 0 ≤ weight i)
    (sourceReadout : ∀ n, actual n = ∑ i, coefficient n i * source n i)
    (modelReadout : ∀ n, approximate n = ∑ i, coefficient n i * model n i)
    (consumerBound : ∀ n i, |coefficient n i| ≤ weight i)
    (hm : VanishesAtInfinity (fun n => channelMass weight (sourceResidual source model n))) :
    VanishesAtInfinity (fun n => actual n - approximate n) := by
  apply VanishesAtInfinity.of_nonnegative_bound hm
    (fun n => channelMass_nonnegative weight _ hn)
  intro n
  exact readout_error_bound weight (coefficient n) (sourceResidual source model n)
    (actual n) (approximate n)
    (source_readout_difference (coefficient n) (source n) (model n)
      (actual n) (approximate n) (sourceReadout n) (modelReadout n)) (consumerBound n)
end GRWTSK.Analysis.ErrorBounds
```
