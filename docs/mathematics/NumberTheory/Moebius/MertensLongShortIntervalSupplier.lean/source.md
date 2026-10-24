# Complete source: GRWTSK.NumberTheory.Moebius.MertensLongShortIntervalSupplier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6bc749d55b9b627868194eaee9695baea07740f` · SHA-256 `abc8ef98a8c16791944a9b6b7956bfdd2794cf2ca740a3df6fa605f3456ea4d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #541. Direct stacked parent: draft PR #540 at
`93b83a632296a9dc77d24a3873c7f267f85196be`.
-/
import GRWTSK.Analysis.Asymptotics.DyadicLogAbsorption

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The signed short interior packet already paid deterministically. -/
def logarithmicShortSignedPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      harmonicCumulativeShortContribution
        j t (logarithmicShiftThreshold j)

/-- The exact analytic remainder after subtracting the already-paid short
interior from the complete harmonic packet.  This remainder retains the
terminal second-Abel term and every cumulative length at least the threshold. -/
def logarithmicLongHarmonicRemainderPacket (j : ℕ) : ℝ :=
  harmonicWeightedMertensDyadicChowlaPacket j -
    logarithmicShortSignedPacket j

/-- Exact packet decomposition. -/
theorem harmonicPacket_eq_shortSigned_add_longRemainder
    (j : ℕ) :
    harmonicWeightedMertensDyadicChowlaPacket j =
      logarithmicShortSignedPacket j +
        logarithmicLongHarmonicRemainderPacket j := by
  unfold logarithmicLongHarmonicRemainderPacket
  ring

/-- The signed short packet is bounded in absolute value by the deterministic
nonnegative short-packet budget from #531/#535. -/
theorem abs_logarithmicShortSignedPacket_le_budget
    (j : ℕ) :
    |logarithmicShortSignedPacket j| ≤
      normalizedShortPacketBudget j := by
  unfold logarithmicShortSignedPacket normalizedShortPacketBudget
  calc
    |∑ t ∈ Finset.range (2 ^ (j + 1)),
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        |2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
          harmonicCumulativeShortContribution
            j t (logarithmicShiftThreshold j)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ Finset.range (2 ^ (j + 1)),
        normalizedShortDepthBudget j t := by
      apply Finset.sum_le_sum
      intro t _ht
      rw [abs_mul, abs_of_nonneg (by positivity :
        0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
      exact normalized_shortContribution_le_budget j t

/-- A finite first-moment envelope for the exact induced long short intervals. -/
def LongHarmonicShortIntervalL1Envelope
    (j t n : ℕ) (U : ℝ) : Prop :=
  logarithmicShiftThreshold j ≤ n ∧
    n ≤ harmonicShiftCount j t ∧
    0 ≤ U ∧
    (∑ a ∈ Finset.range (t + 1),
      |harmonicShortMobiusSum j t n a|) ≤ U

/-- Source-level scope for a theorem controlling every long induced short
interval.  The exact quantitative majorant is left explicit. -/
structure LongHarmonicShortIntervalL1Source where
  majorant : ℕ → ℕ → ℕ → ℝ
  envelope :
    ∀ j t n : ℕ,
      logarithmicShiftThreshold j ≤ n →
      n ≤ harmonicShiftCount j t →
      LongHarmonicShortIntervalL1Envelope
        j t n (majorant j t n)

/-- A normalized all-scale supplier for the exact analytic remainder.  This is
the only arithmetic supplier remaining on the threshold branch. -/
def SubpolynomialLongHarmonicRemainderPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      logarithmicLongHarmonicRemainderPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Short deterministic control plus a subpolynomial long remainder supplies
the complete harmonic packet. -/
theorem subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_of_longRemainder
    (hLong : SubpolynomialLongHarmonicRemainderPacket) :
    SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket := by
  intro δ hδ
  obtain ⟨Cshort, hCshort, hshort⟩ :=
    subpolynomialLogThresholdShortPacketBudget δ hδ
  obtain ⟨Clong, hClong, hlong⟩ :=
    hLong δ hδ
  refine ⟨Cshort + Clong, add_nonneg hCshort hClong, ?_⟩
  intro j
  rw [harmonicPacket_eq_shortSigned_add_longRemainder]
  calc
    logarithmicShortSignedPacket j +
        logarithmicLongHarmonicRemainderPacket j ≤
      |logarithmicShortSignedPacket j| +
        logarithmicLongHarmonicRemainderPacket j := by
      exact add_le_add (le_abs_self _) le_rfl
    _ ≤ normalizedShortPacketBudget j +
        logarithmicLongHarmonicRemainderPacket j := by
      exact add_le_add (abs_logarithmicShortSignedPacket_le_budget j) le_rfl
    _ ≤ Cshort * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Clong * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hshort j) (hlong j)
    _ = (Cshort + Clong) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional RH endpoint from the exact long-remainder supplier. -/
theorem riemannHypothesis_of_subpolynomialLongHarmonicRemainderPacket
    (hLong : SubpolynomialLongHarmonicRemainderPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_of_longRemainder
      hLong)

/-- Adapter type required from a quantitative long short-interval theorem.

The source theorem may first prove first-moment bounds for every long induced
interval.  A separate proof field must then show those bounds control the exact
long harmonic remainder, including the terminal second-Abel term. -/
structure LongShortIntervalL1ToRemainderAdapter
    (source : Prop) : Type where
  sourceData :
    source → LongHarmonicShortIntervalL1Source
  toRemainder :
    source → SubpolynomialLongHarmonicRemainderPacket

/-- Generic terminal route through a future quantitative short-interval
theorem and an explicit source-faithful adapter. -/
theorem riemannHypothesis_of_longShortIntervalL1Adapter
    {source : Prop}
    (bridge : LongShortIntervalL1ToRemainderAdapter source)
    (hsource : source) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialLongHarmonicRemainderPacket
    (bridge.toRemainder hsource)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_logarithmicShortSignedPacket_le_budget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicHarmonicWeightedMertensChowlaPacket_of_longRemainder
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialLongHarmonicRemainderPacket
```
