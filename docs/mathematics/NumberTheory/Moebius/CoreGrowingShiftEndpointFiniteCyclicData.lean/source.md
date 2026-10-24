# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d418057b7e5175eeb3cea355ec1317bac2020fef` · SHA-256 `cb9d49900ab54b5fdfd4f3db608d76353fd604e01a3e2c056693bf76a139056b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #967.

This is a Mathlib-only endpoint data layer.  It reproduces the exact formulas
used by the existing endpoint stack while avoiding that stack's current
import-closure failures.  A separate dictionary module binds these formulas
to the legacy declarations; this file does not claim that the legacy closure
has replayed.
-/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicDistance

set_option autoImplicit false
noncomputable section
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.NumberTheory.CharacterSums

/-- Exact doubled endpoint modulus, definitionally equal to
`2 * coreGrowingShiftEndpointFourierModulus j` in the existing stack. -/
def coreGrowingShiftEndpointFiniteCyclicModulus (j : ℕ) : ℕ :=
  2 * 2 ^ (j + 1)

instance coreGrowingShiftEndpointFiniteCyclicModulus_neZero (j : ℕ) :
    NeZero (coreGrowingShiftEndpointFiniteCyclicModulus j) :=
  ⟨by unfold coreGrowingShiftEndpointFiniteCyclicModulus; positivity⟩

/-- Minimal endpoint coordinate/frequency group. -/
abbrev CoreGrowingShiftEndpointFiniteCyclicIndex (j : ℕ) :=
  ZMod (coreGrowingShiftEndpointFiniteCyclicModulus j)

/-- Exact negative-phase character used by the endpoint summation-by-parts
route. -/
def coreGrowingShiftEndpointFiniteCyclicNegativePhase
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (n : ℕ) : ℂ :=
  ZMod.stdAddChar
    (-((n : CoreGrowingShiftEndpointFiniteCyclicIndex j) * t))

/-- Exact endpoint finite-difference multiplier. -/
def coreGrowingShiftEndpointFiniteCyclicMultiplier
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℂ :=
  ZMod.stdAddChar t - 1

/-- Exact endpoint circular distance. -/
def coreGrowingShiftEndpointFiniteCyclicDistance
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) : ℕ :=
  min t.val (-t).val

/-- Dictionary to the Mathlib-only generic multiplier. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicMultiplier j t =
      finiteCyclicMultiplier t :=
  rfl

/-- Dictionary to the Mathlib-only generic circular distance. -/
theorem coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicDistance j t =
      finiteCyclicCircularDistance t :=
  rfl

/-- The endpoint modulus is positive. -/
theorem coreGrowingShiftEndpointFiniteCyclicModulus_pos
    (j : ℕ) :
    0 < coreGrowingShiftEndpointFiniteCyclicModulus j := by
  unfold coreGrowingShiftEndpointFiniteCyclicModulus
  positivity

/-- Endpoint circular distance vanishes exactly at zero. -/
theorem coreGrowingShiftEndpointFiniteCyclicDistance_eq_zero_iff
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicDistance j t = 0 ↔ t = 0 := by
  simpa [coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic] using
    finiteCyclicCircularDistance_eq_zero_iff t

/-- Endpoint multiplier vanishes exactly at zero. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_zero_iff
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    coreGrowingShiftEndpointFiniteCyclicMultiplier j t = 0 ↔ t = 0 := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic] using
    finiteCyclicMultiplier_eq_zero_iff t

/-- Jordan lower bound specialized to the exact endpoint modulus. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    4 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ) /
        (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) ≤
      ‖coreGrowingShiftEndpointFiniteCyclicMultiplier j t‖ := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic,
    finiteCyclicJordanLowerScale] using
    finiteCyclicMultiplier_norm_lowerBound
      (coreGrowingShiftEndpointFiniteCyclicModulus_pos j) t

/-- Actual endpoint inverse-multiplier bound at nonzero frequency. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
    {j : ℕ}
    {t : CoreGrowingShiftEndpointFiniteCyclicIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic] using
    finiteCyclicMultiplier_inv_norm_le_distance
      (coreGrowingShiftEndpointFiniteCyclicModulus_pos j) ht

/-- Uniform endpoint inverse-multiplier bound beyond a circular cutoff. -/
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_cutoff
    {j L : ℕ}
    {t : CoreGrowingShiftEndpointFiniteCyclicIndex j}
    (hLt : L < coreGrowingShiftEndpointFiniteCyclicDistance j t) :
    ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (4 * ((L + 1 : ℕ) : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic] using
    finiteCyclicMultiplier_inv_norm_le_cutoff
      (coreGrowingShiftEndpointFiniteCyclicModulus_pos j) hLt

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_cutoff
```
