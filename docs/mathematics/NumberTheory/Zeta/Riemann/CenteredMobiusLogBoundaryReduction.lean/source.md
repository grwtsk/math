# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7cbf1035876b00c548102d527a81e126789da1d` · SHA-256 `a43010155f0a585b71436ae33fa1a46a5c344c00312b1e9d3f61595103b7d6f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenSupplierComposition
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def centeredGreenDyadicMangoldtMass (X : ℕ) : ℝ :=
  ∑ n ∈ centeredGreenWindow X,
    ArithmeticFunction.vonMangoldt n

def centeredGreenDyadicMangoldtNormalizedDiscrepancy (X : ℕ) : ℝ :=
  centeredGreenDyadicMangoldtMass X / (X : ℝ) - 1

/-- mass0 is exactly the harmonic von-Mangoldt dyadic discrepancy. -/
theorem mass0_eq_harmonic_mangoldt_discrepancy (X : ℕ) :
    mass0 X =
      (∑ n ∈ centeredGreenWindow X,
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ)) -
      Real.log 2 := by
  rfl

/-- Exact algebraic reduction of the first moment. -/
theorem mass1_eq_normalized_mangoldt_sub_mass0
    {X : ℕ} (hX : 1 ≤ X) :
    mass1 X =
      centeredGreenDyadicMangoldtNormalizedDiscrepancy X - mass0 X := by
  unfold mass1 centeredGreenDyadicMangoldtNormalizedDiscrepancy
    centeredGreenDyadicMangoldtMass mass0
    centeredGreenArithmeticCoefficient centeredGreenLocation
  have hXr : (X : ℝ) ≠ 0 := by exact_mod_cast (by omega : X ≠ 0)
  have hsum :
      (∑ n ∈ centeredGreenWindow X,
        ((ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ)) *
          ((n : ℝ) / (X : ℝ) - 1)) =
      (∑ n ∈ centeredGreenWindow X,
        (ArithmeticFunction.vonMangoldt n : ℝ)) / (X : ℝ) -
      ∑ n ∈ centeredGreenWindow X,
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) := by
    rw [Finset.sum_sub_distrib, ← Finset.sum_div]
    apply congrArg₂ (· - ·)
    · apply Finset.sum_congr rfl
      intro n hn
      have hn0 : (n : ℝ) ≠ 0 := by
        have hnI := Finset.mem_Ioc.mp hn
        positivity
      field_simp
      ring
    · apply Finset.sum_congr rfl
      intro n hn
      ring
  rw [hsum]
  ring

/-- Squared mass1 is controlled by the two scalar discrepancies. -/
theorem mass1_sq_le_two_discrepancies
    {X : ℕ} (hX : 1 ≤ X) :
    mass1 X ^ 2 ≤
      2 * centeredGreenDyadicMangoldtNormalizedDiscrepancy X ^ 2 +
      2 * mass0 X ^ 2 := by
  rw [mass1_eq_normalized_mangoldt_sub_mass0 hX]
  nlinarith [sq_nonneg
    (centeredGreenDyadicMangoldtNormalizedDiscrepancy X + mass0 X)]

/-- Thus a rate for mass0 and the ordinary normalized dyadic Mangoldt
discrepancy supplies the mass1 rate. -/
def AllDyadicNormalizedMangoldtDiscrepancySquareBound : Prop :=
  AllDyadicBoundarySquareBound dyadicScale
    centeredGreenDyadicMangoldtNormalizedDiscrepancy

theorem allDyadicMass1Bound_of_mass0_and_normalizedMangoldt
    (h0 : AllDyadicBoundarySquareBound dyadicScale mass0)
    (hψ : AllDyadicNormalizedMangoldtDiscrepancySquareBound) :
    AllDyadicBoundarySquareBound dyadicScale mass1 := by
  intro η hη
  obtain ⟨C0, hC0, j0, h0b⟩ := h0 η hη
  obtain ⟨Cψ, hCψ, jψ, hψb⟩ := hψ η hη
  refine ⟨2 * Cψ + 2 * C0, by positivity, max j0 jψ, ?_⟩
  intro j hj
  have hj0 : j0 ≤ j := le_trans (le_max_left _ _) hj
  have hjψ : jψ ≤ j := le_trans (le_max_right _ _) hj
  have hmass := mass1_sq_le_two_discrepancies
    (historicalDyadicScale_ge_two j |>.trans' (by omega))
  have h0j := h0b j hj0
  have hψj := hψb j hjψ
  nlinarith [Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ dyadicScale j) (-1 + η)]

end GRWTSK.RiemannHypothesis
```
