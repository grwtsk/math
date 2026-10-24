# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a48d33635131b7a36ca7df0ef616875209e35e7` · SHA-256 `c9eb679aeac1bd85b026d26d78e90a357fe730cdd5f7ebc2c9d31953bd2b362d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Abstract finite smoothing packet for one normalized cutoff scale.

The packet deliberately separates the three pieces a concrete Fejer/Selberg-like
construction would have to supply:
* finite frequency support;
* an L2 coefficient budget linear in the cutoff;
* a boundary approximation budget of order X/N.
-/
structure PrimeIntervalSmoothingPacket where
  cutoff : ℕ
  cutoff_pos : 0 < cutoff
  coefficientL2Budget : ℝ
  coefficientL2Budget_nonnegative : 0 ≤ coefficientL2Budget
  boundaryWidthFactor : ℝ
  boundaryWidthFactor_nonnegative : 0 ≤ boundaryWidthFactor
  coefficientBudget_le_cutoff :
    coefficientL2Budget ≤ (cutoff : ℝ)
  boundaryPowerCost :
    boundaryWidthFactor ≤ 1 / (cutoff : ℝ)

/-- Source-facing family of smoothing packets indexed by the dyadic scale. -/
structure DyadicPrimeIntervalSmoothingFamily where
  packet : ℕ → PrimeIntervalSmoothingPacket
  cutoffExponent : ℝ
  cutoffExponent_nonnegative : 0 ≤ cutoffExponent
  cutoffExponent_le_one : cutoffExponent ≤ 1
  cutoffUpper :
    ∀ j,
      (packet j).cutoff ≤
        Nat.ceil (Real.rpow (dyadicScale j : ℝ) cutoffExponent) + 1

/-- Exact theorem interface still missing: combine one explicit smoothing family
with the existing prime-only Fourier energy and prove the finite partial-prime
discrepancy estimate. -/
def PrimeDFTSmoothingPacketReadoutAt
    (family : DyadicPrimeIntervalSmoothingFamily)
    (ρ : ℝ) : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBound →
    DyadicPrimePartialDiscrepancyLogSqAt ρ

/-- The exponent window from the previous module is inherited directly by any
family whose cutoff exponent lies in [1/4,1/2]. -/
def SmoothingFamilyInThreeQuarterWindow
    (family : DyadicPrimeIntervalSmoothingFamily) : Prop :=
  (1 : ℝ) / 4 ≤ family.cutoffExponent ∧
    family.cutoffExponent ≤ (1 : ℝ) / 2

/-- A smoothing packet readout at a valid cutoff exponent is sufficient for the
seven-eighths partial-prime target. -/
theorem smoothingPacketReadout_to_sevenEighthsPartialDiscrepancy
    (family : DyadicPrimeIntervalSmoothingFamily)
    (hwindow : SmoothingFamilyInThreeQuarterWindow family)
    (hfourier : AllDyadicPrimeOnlyFourierCoordinateBound)
    (hreadout :
      PrimeDFTSmoothingPacketReadoutAt
        family ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy := by
  exact hreadout hfourier

/-- Balanced cutoff exponent 1/3 lies strictly inside the admissible window. -/
theorem oneThird_in_smoothing_window :
    (1 : ℝ) / 4 < (1 : ℝ) / 3 ∧
      (1 : ℝ) / 3 < (1 : ℝ) / 2 := by
  norm_num

/-- The two schematic power exponents for the balanced family are both 2/3. -/
theorem oneThird_balanced_smoothing_exponents :
    truncatedFourierLowExponent ((1 : ℝ) / 3) = (2 : ℝ) / 3 ∧
      truncatedFourierBoundaryExponent ((1 : ℝ) / 3) = (2 : ℝ) / 3 := by
  exact ⟨truncatedFourierLowExponent_oneThird,
    truncatedFourierBoundaryExponent_oneThird⟩

end GRWTSK.RiemannHypothesis
```
