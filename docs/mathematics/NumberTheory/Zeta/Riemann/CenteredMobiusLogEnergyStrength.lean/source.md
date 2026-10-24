# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogEnergyStrength

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66cf533b7c7ef6104f2accf3856fa9f99e896b41` · SHA-256 `7c1052a870f4f08c1621b8c6978a79c8e1af178906056d15db703d8a1b8d02e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogTwoSupplierReduction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- At each scale, authenticated Parseval identifies thin Green energy with the
historical Green L2 energy. -/
theorem centeredMobiusLogEnergy_le_historicalGreenEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    centeredMobiusLogFourierEnergy X ≤
      2 * greenEnergy X + 2 * greenFullResidualEnergyBound X := by
  have hGsum :
      Summable (fun k : ℤ =>
        if k = 0 then 0 else ‖thinGreenArithmeticFourierCoordinate X k‖^2) := by
    have hmem := thinHistoricalGreenResidual_memLp X
    have hs := thinHistoricalGreenFourier_parseval_hasSum X hmem
    have hcoeff := fun k =>
      thinGreenArithmeticFourierCoordinate_eq_historicalCoeff
        (by omega : 1 ≤ X) k
    have hsThin :
        HasSum
          (fun k : ℤ =>
            if k = 0 then 0
            else ‖thinGreenArithmeticFourierCoordinate X k‖^2)
          (greenEnergy X) := by
      apply hs.congr_fun
      intro k
      by_cases hk : k = 0
      · subst k
        simp [thinHistoricalGreenFourierCoeff_zero (by omega : 1 ≤ X)]
      · simp only [hk, ↓reduceIte]
        rw [hcoeff k]
    exact hsThin.summable
  have htransfer := centeredEnergy_le_of_thinGreen_summable hX hGsum
  rw [thinGreenEnergy_eq_historicalGreenEnergy hX] at htransfer
  exact htransfer.2

/-- Conversely, centered Möbius-log energy controls the historical Green
energy, provided its series is summable. -/
theorem historicalGreenEnergy_le_centeredMobiusLogEnergy
    {X : ℕ} (hX : 2 ≤ X)
    (hM : Summable (fun k : ℤ =>
      if k = 0 then 0 else ‖centeredMobiusLogFourierCoordinate X k‖^2)) :
    greenEnergy X ≤
      2 * centeredMobiusLogFourierEnergy X +
      2 * greenFullResidualEnergyBound X := by
  have htransfer := thinGreenEnergy_le_of_centered_summable hX hM
  rw [thinGreenEnergy_eq_historicalGreenEnergy hX] at htransfer
  exact htransfer.2

/-- The centered-energy supplier is therefore, up to the deterministic
O(X^-1) residual, a supplier for the historical Green L2 energy itself. -/
def AllDyadicHistoricalGreenEnergyBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        greenEnergy (dyadicScale j) ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

end GRWTSK.RiemannHypothesis
```
