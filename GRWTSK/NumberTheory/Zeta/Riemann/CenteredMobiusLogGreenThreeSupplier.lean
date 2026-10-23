/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHistoricalEnergyBridge
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Dyadic-rate supplier for the centered Möbius-log Fourier energy. -/
def AllDyadicCenteredMobiusLogEnergyBound
    (dyadicScale : ℕ → ℕ) : Prop :=
  (∀ j : ℕ, Summable (fun k : ℤ =>
      if k = 0 then 0
      else ‖centeredMobiusLogFourierCoordinate (dyadicScale j) k‖^2)) ∧
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        centeredMobiusLogFourierEnergy (dyadicScale j) ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

/-- Dyadic-rate supplier for one retained real boundary channel. -/
def AllDyadicBoundarySquareBound
    (dyadicScale : ℕ → ℕ) (mass : ℕ → ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        mass (dyadicScale j)^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

/-- Deterministic residual majorant is absorbable into every X^(-1+eta)
scale once X>=1. -/
theorem greenFullResidualEnergyBound_le_rpow
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ X : ℕ, 2 ≤ X →
        greenFullResidualEnergyBound X ≤
          C * Real.rpow (X : ℝ) (-1 + η) := by
  let C : ℝ :=
    (1 + 1 / Real.pi)^2 +
    ((15 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 +
      ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2) +
    ((243 / (16 * Real.pi^4)) *
        greenPSeriesC4 * greenPSeriesC4 +
      (15 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 +
      (9 / (4 * Real.pi^4)) * greenPSeriesC4)
  refine ⟨C, ?_, ?_⟩
  · dsimp [C]
    positivity [greenPSeriesC2_nonneg, greenPSeriesC4_nonneg]
  · intro X hX
    have hXr : (1 : ℝ) ≤ X := by exact_mod_cast (by omega : 1 ≤ X)
    have hpow1 : 1 / (X : ℝ) ≤ Real.rpow (X : ℝ) (-1 + η) := by
      rw [one_div, ← Real.rpow_neg_one]
      exact Real.rpow_le_rpow_of_exponent_le hXr (by linarith)
    have hpow2 : 1 / (X : ℝ)^2 ≤ Real.rpow (X : ℝ) (-1 + η) := by
      calc
        1 / (X : ℝ)^2 ≤ 1 / (X : ℝ) := by
          have hXp : 0 < (X : ℝ) := by positivity
          exact one_div_sq_le_one_div hXr
        _ ≤ _ := hpow1
    have hpow4 : 1 / (X : ℝ)^4 ≤ Real.rpow (X : ℝ) (-1 + η) := by
      calc
        1 / (X : ℝ)^4 ≤ 1 / (X : ℝ) := by
          have hXp : 0 < (X : ℝ) := by positivity
          have : (X : ℝ) ≤ X^4 := by nlinarith [sq_nonneg ((X : ℝ)^2 - 1)]
          exact one_div_le_one_div_of_le hXp this
        _ ≤ _ := hpow1
    unfold greenFullResidualEnergyBound
    dsimp [C]
    have hC2 := greenPSeriesC2_nonneg
    have hC4 := greenPSeriesC4_nonneg
    nlinarith

/-- Three genuine arithmetic suppliers suffice for the complete thin augmented
energy. The deterministic comparison residual is absorbed automatically. -/
theorem thinAllDyadicAugmentedEnergyBound_of_three_suppliers
    (dyadicScale : ℕ → ℕ)
    (mass0 mass1 : ℕ → ℝ)
    (hscale : ∀ j, 2 ≤ dyadicScale j)
    (hM : AllDyadicCenteredMobiusLogEnergyBound dyadicScale)
    (h0 : AllDyadicBoundarySquareBound dyadicScale mass0)
    (h1 : AllDyadicBoundarySquareBound dyadicScale mass1) :
    ThinAllDyadicAugmentedEnergyBound dyadicScale mass0 mass1 thinGreenEnergy := by
  intro η hη
  obtain ⟨hMsummable, hMrate⟩ := hM
  obtain ⟨CM, hCM, jM, hMbound⟩ := hMrate η hη
  obtain ⟨C0, hC0, j0, h0bound⟩ := h0 η hη
  obtain ⟨C1, hC1, j1, h1bound⟩ := h1 η hη
  obtain ⟨CR, hCR, hRbound⟩ := greenFullResidualEnergyBound_le_rpow hη
  refine ⟨2 * CM + 2 * CR + C0 + C1, by positivity, max jM (max j0 j1), ?_⟩
  intro j hj
  have hjM : jM ≤ j := le_trans (le_max_left _ _) hj
  have hj0 : j0 ≤ j := le_trans (le_max_left _ _) (le_trans (le_max_right _ _) hj)
  have hj1 : j1 ≤ j := le_trans (le_max_right _ _) (le_trans (le_max_right _ _) hj)
  have hgreenPair := thinGreenEnergy_le_of_centered_summable
    (hscale j) (hMsummable j)
  have hgreen := hgreenPair.2
  have hMb := hMbound j hjM
  have h0b := h0bound j hj0
  have h1b := h1bound j hj1
  have hRb := hRbound (dyadicScale j) (hscale j)
  have hrpow_nonneg :
      0 ≤ Real.rpow (dyadicScale j : ℝ) (-1 + η) := by positivity
  nlinarith

end GRWTSK.RiemannHypothesis
