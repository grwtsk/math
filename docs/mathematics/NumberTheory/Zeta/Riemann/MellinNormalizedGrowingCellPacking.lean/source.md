# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0004a83f3d4f923751340cc92526896c6adf476` · SHA-256 `ef40699e0e5db16c9da865651ed6527a5fc69407df74e081cf62310723041caf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Growing-cell Mellin-normalized dyadic packing

The raw local-three-window route was summable before normalization. The
Mellin-normalized action source is instead promoted to a growing-cell stage:

  Q_N^A(z) = sum_{j < N} Q_j^A(z).

The number of source cells grows with N. No finite-total-volume bound is built
into the definition.

The exact quartic decomposition is preserved under assembly:

  Q_N^A
    = a^4 * A_N^A + 3 a^2 t^2 * T_N^A,

where A_N^A and T_N^A are the cumulative nonnegative normalized Gram
coefficients.

This is the local zero-facing analogue of the growing-cell necessity recorded
in issue #197: positivity lives in a finite direct sum at each stage, while the
source dimension grows.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
MELLIN_NORMALIZED_GROWING_CELL_STAGE_DEFINED / GLOBAL_COMPARISON_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

def safeActionCumulativeValue (z : ZeroPoint) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, safeQuarticDyadicActionValue z j

def safeActionCumulativeAxialCoefficient (z : ZeroPoint) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, safeAxialDyadicActionQuarticCoefficient z j

def safeActionCumulativeTransverseCoefficient (z : ZeroPoint) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, safeTransverseDyadicActionQuarticCoefficient z j

theorem safeActionCumulativeValue_nonnegative
    (z : ZeroPoint) (N : ℕ) :
    0 ≤ safeActionCumulativeValue z N := by
  unfold safeActionCumulativeValue
  exact Finset.sum_nonneg
    (fun j hj => safeQuarticDyadicActionValue_nonnegative z j)

theorem safeActionCumulativeAxialCoefficient_nonnegative
    (z : ZeroPoint) (N : ℕ) :
    0 ≤ safeActionCumulativeAxialCoefficient z N := by
  unfold safeActionCumulativeAxialCoefficient
  exact Finset.sum_nonneg
    (fun j hj => safeAxialDyadicActionQuarticCoefficient_nonnegative z j)

theorem safeActionCumulativeTransverseCoefficient_nonnegative
    (z : ZeroPoint) (N : ℕ) :
    0 ≤ safeActionCumulativeTransverseCoefficient z N := by
  unfold safeActionCumulativeTransverseCoefficient
  exact Finset.sum_nonneg
    (fun j hj => safeTransverseDyadicActionQuarticCoefficient_nonnegative z j)

theorem safeActionCumulativeValue_mono
    (z : ZeroPoint) :
    Monotone (safeActionCumulativeValue z) := by
  intro M N hMN
  unfold safeActionCumulativeValue
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.range_mono hMN)
    (fun j hj hnot => safeQuarticDyadicActionValue_nonnegative z j)

theorem safeActionCumulativeAxialCoefficient_mono
    (z : ZeroPoint) :
    Monotone (safeActionCumulativeAxialCoefficient z) := by
  intro M N hMN
  unfold safeActionCumulativeAxialCoefficient
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.range_mono hMN)
    (fun j hj hnot =>
      safeAxialDyadicActionQuarticCoefficient_nonnegative z j)

theorem safeActionCumulativeTransverseCoefficient_mono
    (z : ZeroPoint) :
    Monotone (safeActionCumulativeTransverseCoefficient z) := by
  intro M N hMN
  unfold safeActionCumulativeTransverseCoefficient
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.range_mono hMN)
    (fun j hj hnot =>
      safeTransverseDyadicActionQuarticCoefficient_nonnegative z j)

/-- Exact growing-cell quartic factorization. -/
theorem safeActionCumulativeValue_factor
    (z : ZeroPoint) (N : ℕ) :
    safeActionCumulativeValue z N =
      (zeroDefect z.1)^4 *
          safeActionCumulativeAxialCoefficient z N +
        3 * (zeroDefect z.1)^2 * z.1.im^2 *
          safeActionCumulativeTransverseCoefficient z N := by
  unfold safeActionCumulativeValue
    safeActionCumulativeAxialCoefficient
    safeActionCumulativeTransverseCoefficient
  simp_rw [safeQuarticDyadicActionValue_factor]
  rw [Finset.sum_add_distrib, Finset.mul_sum, Finset.mul_sum]

/-- One finite growing-cell stage, with the cell count explicit. -/
structure MellinNormalizedGrowingCellStage (z : ZeroPoint) where
  cellCount : ℕ
  value : ℝ
  value_eq : value = safeActionCumulativeValue z cellCount

namespace MellinNormalizedGrowingCellStage

theorem nonnegative
    {z : ZeroPoint}
    (stage : MellinNormalizedGrowingCellStage z) :
    0 ≤ stage.value := by
  rw [stage.value_eq]
  exact safeActionCumulativeValue_nonnegative z stage.cellCount

end MellinNormalizedGrowingCellStage

/-- Common lower mass in the two normalized action-Gram channels. This is now a
meaningful density question because the pre-Gram Mellin normalization removed
the automatic raw-block summability. -/
structure MellinNormalizedActionLowerDensityAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) where
  lowerWeight : ℕ → ℝ
  lowerWeight_nonnegative : ∀ j, 0 ≤ lowerWeight j
  axial_lower :
    ∀ j, lowerWeight j ≤ safeAxialDyadicActionQuarticCoefficient z j
  transverse_lower :
    ∀ j, lowerWeight j ≤ safeTransverseDyadicActionQuarticCoefficient z j
  partial_tendsto_atTop :
    Tendsto
      (fun N => ∑ j ∈ Finset.range N, lowerWeight j)
      atTop atTop

namespace MellinNormalizedActionLowerDensityAtZero

def quarticFactor
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (_data : MellinNormalizedActionLowerDensityAtZero z ha) : ℝ :=
  (zeroDefect z.1)^4 +
    3 * (zeroDefect z.1)^2 * z.1.im^2

theorem quarticFactor_pos
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : MellinNormalizedActionLowerDensityAtZero z ha) :
    0 < data.quarticFactor := by
  unfold quarticFactor
  have ha2 : 0 < (zeroDefect z.1)^2 := sq_pos_of_ne_zero ha
  have ha4 : 0 < (zeroDefect z.1)^4 := by
    nlinarith [sq_nonneg ((zeroDefect z.1)^2)]
  nlinarith [sq_nonneg z.1.im]

theorem quarticFactor_mul_partial_le
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : MellinNormalizedActionLowerDensityAtZero z ha)
    (N : ℕ) :
    data.quarticFactor *
        (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
      safeActionCumulativeValue z N := by
  rw [safeActionCumulativeValue_factor]
  unfold quarticFactor
  have hA :
      (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
        safeActionCumulativeAxialCoefficient z N := by
    unfold safeActionCumulativeAxialCoefficient
    exact Finset.sum_le_sum
      (fun j hj => data.axial_lower j)
  have hT :
      (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
        safeActionCumulativeTransverseCoefficient z N := by
    unfold safeActionCumulativeTransverseCoefficient
    exact Finset.sum_le_sum
      (fun j hj => data.transverse_lower j)
  have hw :
      0 ≤ ∑ j ∈ Finset.range N, data.lowerWeight j :=
    Finset.sum_nonneg (fun j hj => data.lowerWeight_nonnegative j)
  have h1 := mul_le_mul_of_nonneg_left hA (by positivity : 0 ≤ (zeroDefect z.1)^4)
  have h2 := mul_le_mul_of_nonneg_left hT
    (by positivity : 0 ≤ 3 * (zeroDefect z.1)^2 * z.1.im^2)
  nlinarith [
    safeActionCumulativeAxialCoefficient_nonnegative z N,
    safeActionCumulativeTransverseCoefficient_nonnegative z N,
    sq_nonneg (zeroDefect z.1),
    sq_nonneg z.1.im]

/-- Any independent uniform upper comparison for the growing action cells would
contradict divergent common lower mass at an off-line zero. -/
theorem false_of_uniform_upper_bound
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : MellinNormalizedActionLowerDensityAtZero z ha)
    (B : ℝ)
    (hupper : ∀ N, safeActionCumulativeValue z N ≤ B) :
    False := by
  have hfactor := data.quarticFactor_pos
  have hevent :
      ∀ᶠ N in atTop,
        B / data.quarticFactor <
          ∑ j ∈ Finset.range N, data.lowerWeight j :=
    data.partial_tendsto_atTop.eventually
      (Ioi_mem_atTop (B / data.quarticFactor))
  obtain ⟨N, hN⟩ := hevent.exists
  have hBlower :
      B <
        data.quarticFactor *
          (∑ j ∈ Finset.range N, data.lowerWeight j) := by
    simpa only [mul_comm] using (div_lt_iff₀ hfactor).mp hN
  have hlower := data.quarticFactor_mul_partial_le N
  have hU := hupper N
  linarith

end MellinNormalizedActionLowerDensityAtZero

/-- Independent global-comparison obligation. It contains only an upper bound
for the source-normalized growing positive stage; it does not assert lower
density. A future explicit-formula/Weil bridge may instantiate this packet. -/
structure MellinNormalizedActionUpperComparisonAtZero (z : ZeroPoint) where
  totalBudget : ℝ
  totalBudget_nonnegative : 0 ≤ totalBudget
  occupiedPartial_le :
    ∀ N, safeActionCumulativeValue z N ≤ totalBudget
  sourceIdentity : String
  normalization : String

/-- Separate lower and upper source facts are enough for the off-line
contradiction. -/
theorem false_of_mellinNormalizedAction_packing
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (lower : MellinNormalizedActionLowerDensityAtZero z ha)
    (upper : MellinNormalizedActionUpperComparisonAtZero z) :
    False :=
  lower.false_of_uniform_upper_bound
    upper.totalBudget upper.occupiedPartial_le

end GRWTSK.RiemannHypothesis
```
