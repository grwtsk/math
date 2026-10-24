/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenDFTCoordinate
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The original dyadic RH supplier in explicit arithmetic-coordinate form

The exact recovered witness coordinates are finite weighted von Mangoldt DFT
discrepancies. Form the finite source stage

  mass0(X)^2 + mass1(X)^2
    + finite symmetric sum of abs(c_X(k))^2.

For every positive octave X this is exactly the already-defined admissible
action stage, hence it increases to augmentedEnergy X.

Therefore an all-scale bound on these explicit finite arithmetic-coordinate
stages is logically equivalent to the original AllDyadicEnergyBound.

This is a reformulation of the open arithmetic supplier, not a proof of it.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXPLICIT_ARITHMETIC_COORDINATE_BOUND_IFF_ENERGY_BOUND_SOURCE_WRITTEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence

def fullGreenArithmeticCoordinateStage
    (X N : ℕ) : ℝ :=
  (mass0 X)^2 + (mass1 X)^2 +
    greenArithmeticFourierHead X N

theorem fullGreenArithmeticCoordinateStage_eq_admissible
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    fullGreenArithmeticCoordinateStage X N =
      fullGreenAdmissibleActionStage X N := by
  unfold fullGreenArithmeticCoordinateStage
    fullGreenAdmissibleActionStage
  rw [greenArithmeticFourierHead_eq_admissible hX N]

theorem fullGreenArithmeticCoordinateStage_nonnegative
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    0 ≤ fullGreenArithmeticCoordinateStage X N := by
  rw [fullGreenArithmeticCoordinateStage_eq_admissible hX]
  exact fullGreenAdmissibleActionStage_nonnegative X N

theorem fullGreenArithmeticCoordinateStage_mono
    {X : ℕ} (hX : 0 < X) :
    Monotone (fullGreenArithmeticCoordinateStage X) := by
  intro M N hMN
  rw [fullGreenArithmeticCoordinateStage_eq_admissible hX M,
    fullGreenArithmeticCoordinateStage_eq_admissible hX N]
  exact fullGreenAdmissibleActionStage_mono X hMN

theorem fullGreenArithmeticCoordinateStage_tendsto
    {X : ℕ} (hX : 0 < X) :
    Tendsto (fullGreenArithmeticCoordinateStage X)
      atTop (𝓝 (augmentedEnergy X)) := by
  have h :=
    fullGreenAdmissibleActionStage_tendsto hX
  convert h using 1
  funext N
  exact fullGreenArithmeticCoordinateStage_eq_admissible hX N

theorem fullGreenArithmeticCoordinateStage_le_augmentedEnergy
    {X : ℕ} (hX : 0 < X)
    (N : ℕ) :
    fullGreenArithmeticCoordinateStage X N ≤
      augmentedEnergy X := by
  rw [fullGreenArithmeticCoordinateStage_eq_admissible hX N]
  exact fullGreenAdmissibleActionStage_le_augmentedEnergy hX N

def AllDyadicArithmeticFourierCoordinateBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N : ℕ,
        fullGreenArithmeticCoordinateStage
            (dyadicScale j) N ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

theorem arithmeticCoordinateBound_to_actionFrameBound
    (hC : AllDyadicArithmeticFourierCoordinateBound) :
    AllDyadicAdmissibleActionFrameBound := by
  intro η hη
  obtain ⟨C, hC0, j₀, hbound⟩ := hC η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj N
  rw [← fullGreenArithmeticCoordinateStage_eq_admissible
    (dyadicScale_pos j) N]
  exact hbound j hj N

theorem actionFrameBound_to_arithmeticCoordinateBound
    (hF : AllDyadicAdmissibleActionFrameBound) :
    AllDyadicArithmeticFourierCoordinateBound := by
  intro η hη
  obtain ⟨C, hC0, j₀, hbound⟩ := hF η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj N
  rw [fullGreenArithmeticCoordinateStage_eq_admissible
    (dyadicScale_pos j) N]
  exact hbound j hj N

theorem allDyadicArithmeticFourierCoordinateBound_iff_actionFrame :
    AllDyadicArithmeticFourierCoordinateBound ↔
      AllDyadicAdmissibleActionFrameBound :=
  ⟨arithmeticCoordinateBound_to_actionFrameBound,
    actionFrameBound_to_arithmeticCoordinateBound⟩

theorem allDyadicArithmeticFourierCoordinateBound_iff_energy :
    AllDyadicArithmeticFourierCoordinateBound ↔
      AllDyadicEnergyBound := by
  rw [allDyadicArithmeticFourierCoordinateBound_iff_actionFrame,
    allDyadicAdmissibleActionFrameBound_iff_energy]

theorem riemannHypothesis_of_arithmeticFourierCoordinateBound
    (hC : AllDyadicArithmeticFourierCoordinateBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_admissibleActionFrameBound
    (arithmeticCoordinateBound_to_actionFrameBound hC)

end GRWTSK.RiemannHypothesis
