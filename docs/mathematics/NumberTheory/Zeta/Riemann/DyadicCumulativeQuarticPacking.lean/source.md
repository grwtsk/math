# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicCumulativeQuarticPacking

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aa02842b822a774f557f90b146151e07c2278b7` · SHA-256 `7d8d73cf5f59cb3c976ca1aecb78b0cf42b36d85d0733a4b8b5ea83e8219ae8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Cumulative dyadic quartic volume packing

The previous same-stage scale packet asked simultaneously for

  r_j A_j -> L>0

and for the SAME stage envelope dominating a^4 A_j to satisfy

  r_j envelope_j -> 0.

For an off-line a!=0 these conditions are intrinsically incompatible.  That
packet is therefore a contradiction certificate, not a useful constructive
source interface.

A genuine packing theorem should aggregate many positive cells into one bounded
ambient budget.

For a hypothetical off-line zero, suppose a nonnegative source weight lambda_j
satisfies

  lambda_j <= A_j^D,
  lambda_j <= T_j^D,

and its partial sums diverge.  If the cumulative occupied dyadic volume has one
uniform finite upper bound, then

  sum_{j<N} Q_j^D
    >= (a^4+3a^2t^2) * sum_{j<N} lambda_j

eventually exceeds that finite budget whenever a!=0.  This is the cumulative
volume-packing contradiction.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAME_STAGE_SCALE_PACKET_REJECTED / CUMULATIVE_PACKING_ENDPOINT_TYPED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open CanonicalZeroDivisor

/-- The previous same-stage packet is uninhabited under its own off-line
premise. This classifies it as a contradiction certificate, not a source
construction target. -/
theorem no_offLineDyadicQuarticScaleDataAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) :
    ¬ Nonempty (OffLineDyadicQuarticScaleDataAtZero z ha) := by
  rintro ⟨data⟩
  have hline := data.forces_critical_line
  apply ha
  unfold zeroDefect
  linarith

/-- Cumulative source packet for a genuine volume-packing contradiction. -/
structure OffLineDyadicCumulativePackingDataAtZero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) where
  lowerWeight : ℕ → ℝ
  lowerWeight_nonnegative : ∀ j, 0 ≤ lowerWeight j
  axial_lower :
    ∀ j, lowerWeight j ≤ safeAxialDyadicQuarticCoefficient z j
  transverse_lower :
    ∀ j, lowerWeight j ≤ safeTransverseDyadicQuarticCoefficient z j
  lowerWeightPartial_tendsto_atTop :
    Tendsto
      (fun N => ∑ j ∈ Finset.range N, lowerWeight j)
      atTop atTop
  totalBudget : ℝ
  totalBudget_nonnegative : 0 ≤ totalBudget
  occupiedPartial_le :
    ∀ N,
      (∑ j ∈ Finset.range N, safeQuarticDyadicPackingValue z j) ≤
        totalBudget

namespace OffLineDyadicCumulativePackingDataAtZero

def quarticFactor
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (_data : OffLineDyadicCumulativePackingDataAtZero z ha) : ℝ :=
  (zeroDefect z.1) ^ 4 +
    3 * (zeroDefect z.1) ^ 2 * z.1.im ^ 2

theorem quarticFactor_pos
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCumulativePackingDataAtZero z ha) :
    0 < data.quarticFactor := by
  unfold quarticFactor
  have ha2 : 0 < (zeroDefect z.1) ^ 2 :=
    sq_pos_of_ne_zero ha
  have ha4 : 0 < (zeroDefect z.1) ^ 4 := by
    nlinarith [sq_nonneg ((zeroDefect z.1) ^ 2)]
  nlinarith [sq_nonneg z.1.im]

/-- Every occupied dyadic cell contains at least the common lower source weight
times the exact positive quartic factor. -/
theorem quarticFactor_mul_lowerWeight_le
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCumulativePackingDataAtZero z ha)
    (j : ℕ) :
    data.quarticFactor * data.lowerWeight j ≤
      safeQuarticDyadicPackingValue z j := by
  rw [safeQuarticDyadicPackingValue_factor]
  unfold quarticFactor
  have hA := data.axial_lower j
  have hT := data.transverse_lower j
  have hw := data.lowerWeight_nonnegative j
  have ha2 : 0 ≤ (zeroDefect z.1) ^ 2 := sq_nonneg _
  have ha4 : 0 ≤ (zeroDefect z.1) ^ 4 := by positivity
  have ht2 : 0 ≤ z.1.im ^ 2 := sq_nonneg _
  have h1 := mul_le_mul_of_nonneg_left hA ha4
  have h2 := mul_le_mul_of_nonneg_left hT (mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 3) ha2) ht2)
  nlinarith

/-- The cumulative occupied volume dominates the divergent lower packing mass. -/
theorem quarticFactor_mul_partial_le
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCumulativePackingDataAtZero z ha)
    (N : ℕ) :
    data.quarticFactor *
        (∑ j ∈ Finset.range N, data.lowerWeight j) ≤
      ∑ j ∈ Finset.range N, safeQuarticDyadicPackingValue z j := by
  rw [Finset.mul_sum]
  exact Finset.sum_le_sum
    (fun j hj => data.quarticFactor_mul_lowerWeight_le j)

/-- Divergent occupied mass cannot fit inside one finite total budget. -/
theorem false_of_cumulative_packing
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCumulativePackingDataAtZero z ha) :
    False := by
  have hfactor := data.quarticFactor_pos
  have hevent :
      ∀ᶠ N in atTop,
        data.totalBudget / data.quarticFactor <
          ∑ j ∈ Finset.range N, data.lowerWeight j :=
    data.lowerWeightPartial_tendsto_atTop.eventually
      (Ioi_mem_atTop (data.totalBudget / data.quarticFactor))
  obtain ⟨N, hN⟩ := hevent.exists
  have hbudget_lt :
      data.totalBudget <
        data.quarticFactor *
          (∑ j ∈ Finset.range N, data.lowerWeight j) := by
    have h' :=
      (div_lt_iff₀ hfactor).mp hN
    nlinarith
  have hlower := data.quarticFactor_mul_partial_le N
  have hupper := data.occupiedPartial_le N
  linarith

end OffLineDyadicCumulativePackingDataAtZero

/-- Correct cumulative supplier scope: only a hypothetical off-line actual zero
must produce the divergent-positive-packing packet. -/
def OffLineDyadicCumulativePackingClaim : Prop :=
  ∀ z : ZeroPoint, ∀ ha : zeroDefect z.1 ≠ 0,
    Nonempty (OffLineDyadicCumulativePackingDataAtZero z ha)

theorem riemannHypothesis_of_offLineDyadicCumulativePacking
    (supplier : OffLineDyadicCumulativePackingClaim) :
    _root_.RiemannHypothesis := by
  intro s hz htrivial hpole
  let z : ZeroPoint := ⟨s, hz, htrivial, hpole⟩
  by_contra hline
  have ha : zeroDefect z.1 ≠ 0 := by
    intro hzero
    apply hline
    unfold zeroDefect at hzero
    dsimp [z] at hzero
    linarith
  obtain ⟨data⟩ := supplier z ha
  exact data.false_of_cumulative_packing.elim

end GRWTSK.RiemannHypothesis
```
