# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `117142b9f17a4a5bcda5dcbf8b462d3cee1806dc` · SHA-256 `9d463b79e54275d109cc54c3b0f98f3b0a361c5502304feb10080d6e9f24e4d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Concrete canonical prime-power three-point packing

The arithmetic schedule and raw von Mangoldt coordinate are now both canonical,
so the positive sliding packing sequence can be instantiated with no detector
choice and no free geometric data.

Stage n uses the three consecutive prime-power points

  P_n, P_(n+1), P_(n+2),

where P_j=(k_j log p_j, log p_j) for the j-th canonical natural prime power.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_POSITIVE_PACKING_DEFINED / QUARTIC_COMPARISON_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- Concrete global sequence of canonical prime-power packing points. -/
def canonicalPrimePowerPackingSequence : SequentialThreePointPrimePacking where
  point := canonicalPrimePowerPackingPoint
  source := canonicalPrimePowerValueSequence
  IsPrimePowerSource := IsPrimePow
  source_ok := canonicalPrimePowerValueSequence_isPrimePow

namespace canonicalPrimePowerPackingSequence

/-- Every source label is the exact natural value of its canonical event. -/
theorem source_eq_event_value (n : ℕ) :
    canonicalPrimePowerPackingSequence.source n =
      (canonicalPrimePowerEventSequence n).natValue := by
  symm
  exact canonicalPrimePowerEventSequence_natValue n

/-- The source labels are strictly increasing. -/
theorem source_strict (n : ℕ) :
    canonicalPrimePowerPackingSequence.source n <
      canonicalPrimePowerPackingSequence.source (n + 1) :=
  canonicalPrimePowerValueSequence_strict n

/-- Every stage is the squared volume of three consecutive canonical arithmetic
prime-power points. -/
theorem valueAt_eq_canonical_window (n : ℕ) :
    canonicalPrimePowerPackingSequence.valueAt n =
      (ThreePointPacking.mk
        (canonicalPrimePowerPackingPoint n)
        (canonicalPrimePowerPackingPoint (n + 1))
        (canonicalPrimePowerPackingPoint (n + 2))).gramVolume := by
  rfl

/-- Structural positivity is now a theorem about the concrete arithmetic
sequence itself. -/
theorem valueAt_nonnegative (n : ℕ) :
    0 ≤ canonicalPrimePowerPackingSequence.valueAt n :=
  SequentialThreePointPrimePacking.valueAt_nonnegative
    canonicalPrimePowerPackingSequence n

/-- Adjacent arithmetic packing stages share exactly two canonical points. -/
theorem adjacent_overlap (n : ℕ) :
    (canonicalPrimePowerPackingSequence.packingAt (n + 1)).first =
        (canonicalPrimePowerPackingSequence.packingAt n).second ∧
      (canonicalPrimePowerPackingSequence.packingAt (n + 1)).second =
        (canonicalPrimePowerPackingSequence.packingAt n).third := by
  exact
    ⟨SequentialThreePointPrimePacking.packingAt_succ_first
        canonicalPrimePowerPackingSequence n,
      SequentialThreePointPrimePacking.packingAt_succ_second
        canonicalPrimePowerPackingSequence n⟩

/-- If any prime power lies above the current source value, the next canonical
source value is no larger; hence the packing schedule skips none. -/
theorem next_source_le_of_primePower
    (n q : ℕ)
    (hleft : canonicalPrimePowerPackingSequence.source n < q)
    (hq : IsPrimePow q) :
    canonicalPrimePowerPackingSequence.source (n + 1) ≤ q :=
  canonicalPrimePowerValueSequence_next_le n q hleft hq

end canonicalPrimePowerPackingSequence

/-- The remaining zeta-facing data for one actual nontrivial zero: only the
comparison coefficient and complete residual ledger remain analytic. -/
structure CanonicalPrimePowerPackingComparisonAtZero (s : ℂ) where
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      canonicalPrimePowerPackingSequence.valueAt n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- Once a canonical packing comparison is proved, structural arithmetic
positivity forces the signed quartic nonnegative. -/
theorem CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_nonnegative
    {s : ℂ}
    (comparison : CanonicalPrimePowerPackingComparisonAtZero s) :
    0 ≤ witnessTrace (s.re - 1 / 2) s.im := by
  have hlim :
      Tendsto canonicalPrimePowerPackingSequence.valueAt atTop
        (𝓝 (comparison.limitWeight *
          witnessTrace (s.re - 1 / 2) s.im)) := by
    simp_rw [funext comparison.identity]
    simpa using
      (comparison.weight_tendsto.mul_const
        (witnessTrace (s.re - 1 / 2) s.im)).add
          comparison.residual.total_tendsto
  have hnonneg :
      0 ≤ comparison.limitWeight *
        witnessTrace (s.re - 1 / 2) s.im :=
    ge_of_tendsto hlim
      (Eventually.of_forall
        canonicalPrimePowerPackingSequence.valueAt_nonnegative)
  exact
    (mul_nonneg_iff_of_pos_left comparison.limitWeight_pos).mp hnonneg

end GRWTSK.RiemannHypothesis
```
