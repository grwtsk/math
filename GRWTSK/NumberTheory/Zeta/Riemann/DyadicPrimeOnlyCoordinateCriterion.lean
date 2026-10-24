/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyWitnessComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Prime-only all-scale witness criterion

The complete higher-prime-power witness residual satisfies R_hp(X) <= K/X.
For every eta>0 and every X>=1,

  X^(-1) <= X^(-1+eta).

Combined with the finite-stage comparison

  full <= 2 prime + 2 R_hp,
  prime <= 2 full + 2 R_hp,

this proves that the all-scale prime-only coordinate bound is logically
equivalent to the full recovered coordinate bound, hence to the original
AllDyadicEnergyBound.

This is the exact reduction of RH-G01 to a prime-only weighted-DFT theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ONLY_COORDINATE_BOUND_IFF_FULL_BOUND_SOURCE_WRITTEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence

def AllDyadicPrimeOnlyFourierCoordinateBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N : ℕ,
        fullGreenPrimeOnlyCoordinateStage
            (dyadicScale j) N ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

/-- The inverse-scale residual is always dominated by the target
X^(-1+eta) scale on positive natural source scales. -/
theorem inv_le_rpow_neg_one_add_eta
    {X : ℕ} (hX : 0 < X)
    {η : ℝ} (hη : 0 < η) :
    1 / (X : ℝ) ≤ Real.rpow (X : ℝ) (-1 + η) := by
  have hX1 : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
  rw [one_div, ← Real.rpow_neg_one]
  exact Real.rpow_le_rpow_of_exponent_le hX1 (by linarith)

/-- Controlled higher prime powers fit inside every requested RH-G01 exponent. -/
theorem higherPrimePowerResidual_le_targetScale :
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ {X : ℕ}, 0 < X →
      ∀ {η : ℝ}, 0 < η →
        higherPrimePowerFullWitnessEnergy X ≤
          K * Real.rpow (X : ℝ) (-1 + η) := by
  obtain ⟨K, hK, hres⟩ := higherPrimePowerFullWitnessEnergy_inv_bound
  refine ⟨K, hK, ?_⟩
  intro X hX η hη
  have hinv := inv_le_rpow_neg_one_add_eta hX hη
  calc
    higherPrimePowerFullWitnessEnergy X
        ≤ K / (X : ℝ) := hres X hX
    _ = K * (1 / (X : ℝ)) := by ring
    _ ≤ K * Real.rpow (X : ℝ) (-1 + η) :=
      mul_le_mul_of_nonneg_left hinv hK

/-- Prime-only all-scale control implies the full coordinate bound. -/
theorem primeOnlyBound_to_fullCoordinateBound
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound) :
    AllDyadicArithmeticFourierCoordinateBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hprime⟩ := hP η hη
  obtain ⟨K, hK, hres⟩ := higherPrimePowerResidual_le_targetScale
  let D : ℝ := 2 * C + 2 * K
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj N
  let X := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hPstage :
      fullGreenPrimeOnlyCoordinateStage X N ≤
        C * Real.rpow (X : ℝ) (-1 + η) :=
    hprime j hj N
  have hRstage :
      higherPrimePowerFullWitnessEnergy X ≤
        K * Real.rpow (X : ℝ) (-1 + η) :=
    hres hX hη
  have hcompare :=
    fullStage_le_two_primeOnly_add_residual X N
  have hpow :
      0 ≤ Real.rpow (X : ℝ) (-1 + η) :=
    Real.rpow_nonneg (Nat.cast_nonneg X) _
  dsimp [D, X] at *
  nlinarith

/-- Full all-scale control implies the prime-only coordinate bound. -/
theorem fullCoordinateBound_to_primeOnlyBound
    (hF : AllDyadicArithmeticFourierCoordinateBound) :
    AllDyadicPrimeOnlyFourierCoordinateBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hfull⟩ := hF η hη
  obtain ⟨K, hK, hres⟩ := higherPrimePowerResidual_le_targetScale
  let D : ℝ := 2 * C + 2 * K
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj N
  let X := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hFstage :
      fullGreenArithmeticCoordinateStage X N ≤
        C * Real.rpow (X : ℝ) (-1 + η) :=
    hfull j hj N
  have hRstage :
      higherPrimePowerFullWitnessEnergy X ≤
        K * Real.rpow (X : ℝ) (-1 + η) :=
    hres hX hη
  have hcompare :=
    primeOnlyStage_le_two_full_add_residual X N
  have hpow :
      0 ≤ Real.rpow (X : ℝ) (-1 + η) :=
    Real.rpow_nonneg (Nat.cast_nonneg X) _
  dsimp [D, X] at *
  nlinarith

theorem allDyadicPrimeOnlyFourierCoordinateBound_iff_full :
    AllDyadicPrimeOnlyFourierCoordinateBound ↔
      AllDyadicArithmeticFourierCoordinateBound :=
  ⟨primeOnlyBound_to_fullCoordinateBound,
    fullCoordinateBound_to_primeOnlyBound⟩

/-- Prime-only witness criterion is exactly the original RH-G01 supplier. -/
theorem allDyadicPrimeOnlyFourierCoordinateBound_iff_energy :
    AllDyadicPrimeOnlyFourierCoordinateBound ↔
      AllDyadicEnergyBound := by
  rw [allDyadicPrimeOnlyFourierCoordinateBound_iff_full,
    allDyadicArithmeticFourierCoordinateBound_iff_energy]

/-- Existing conditional RH return, reduced to a prime-only weighted-DFT
supplier. This theorem does not prove the prime-only bound. -/
theorem riemannHypothesis_of_primeOnlyFourierCoordinateBound
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_arithmeticFourierCoordinateBound
    (primeOnlyBound_to_fullCoordinateBound hP)

end GRWTSK.RiemannHypothesis
