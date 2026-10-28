/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers
import GRWTSK.NumberTheory.Moebius.PickupFinitePhaseLaw
import Mathlib.Tactic

/-!
# A second forcing vector tests the full-layer mass assumption

The second inverse of the independently specified first coordinate is
(k+1)*(-1)^k. Its actual arithmetic coefficients are (1+Omega(n))*mu(n),
where Omega agrees with omega on the squarefree support of mu.
A mass bound on EVERY layer vector consequently controls both this secondary
waveform and the original source. A bound only on the original source does
not have this consequence.

The companion mathematical note proves that the secondary energy has upper
exponential growth rate exactly one. That analytic statement is NOT proved
in this file and is not imported as an axiom. The scripts below prove its
finite arithmetic reduction, both forcing steps, and their quantitative
consequences. They also record a finite scalar pole-slope obstruction.

SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupSecondaryForcing

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse
open RadicalDeletionGenerator PickupPrimeFactorLayers PickupDyadicEndpoint

/-- Apply the genuine causal inverse twice to the independent unit forcing. -/
def secondaryCoordinates (k : ℕ) : ℝ := ((k : ℝ) + 1) * sourceCoordinates k

theorem forward_secondary : forward secondaryCoordinates = sourceCoordinates := by
  funext k
  cases k with
  | zero => norm_num [forward, secondaryCoordinates, sourceCoordinates]
  | succ k =>
      simp only [forward, secondaryCoordinates, sourceCoordinates,
        Nat.cast_add, Nat.cast_one, pow_succ]
      ring

theorem solve_source : solve sourceCoordinates = secondaryCoordinates := by
  rw [← forward_secondary, solve_forward]

theorem forward_twice_secondary :
    forward (forward secondaryCoordinates) = firstCoordinate := by
  rw [forward_secondary]
  exact forward_alternating

/-- The arithmetic weight is fixed, including its value at n=1 and zeros at squares. -/
def secondaryCoefficient (n : ℕ) : ℝ :=
  ((ArithmeticFunction.cardFactors n : ℝ) + 1) * moebiusReal n

@[simp] theorem secondaryCoefficient_one : secondaryCoefficient 1 = 1 := by
  simp [secondaryCoefficient, moebiusReal]

theorem secondaryCoefficient_nonsquarefree {n : ℕ} (hn : ¬ Squarefree n) :
    secondaryCoefficient n = 0 := by
  simp [secondaryCoefficient, moebiusReal,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]

/-- The layer factor equals the actual prime-factor count only on that layer. -/
theorem secondary_layer_term (k n : ℕ) :
    secondaryCoordinates k * layer k n =
      ((ArithmeticFunction.cardFactors n : ℝ) + 1) *
        (sourceCoordinates k * layer k n) := by
  by_cases h : Squarefree n ∧ ArithmeticFunction.cardFactors n = k
  · simp only [secondaryCoordinates, layer, if_pos h, mul_one, h.2]
  · simp [layer, h]

/-- A finite source identity, not a new family of independent coefficients. -/
theorem secondary_coefficient_sum (j n : ℕ) (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) :
    (∑ k ∈ Finset.range (j + 1), secondaryCoordinates k * layer k n) =
      secondaryCoefficient n := by
  calc
    _ = ∑ k ∈ Finset.range (j + 1),
        ((ArithmeticFunction.cardFactors n : ℝ) + 1) *
          (sourceCoordinates k * layer k n) := by
      apply Finset.sum_congr rfl
      intro k _
      exact secondary_layer_term k n
    _ = ((ArithmeticFunction.cardFactors n : ℝ) + 1) *
        (∑ k ∈ Finset.range (j + 1), sourceCoordinates k * layer k n) :=
      (Finset.mul_sum _ _ _).symm
    _ = secondaryCoefficient n := by
      change ((ArithmeticFunction.cardFactors n : ℝ) + 1) *
        (∑ k ∈ Finset.range (j + 1), (-1 : ℝ)^k * layer k n) = _
      rw [← moebius_eq_alternating_layers j n hn hN]
      rfl

/-- The second forcing vector uses the original births, responses and cutoff. -/
theorem secondary_synthesis (j : ℕ) (u : ℝ) :
    synthesis j secondaryCoordinates u =
      ∑ n ∈ Finset.Icc 1 (2 ^ j), secondaryCoefficient n * pickupResponse n u := by
  rw [synthesis_eq_coefficient_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [secondary_coefficient_sum j n (Finset.mem_Icc.mp hn).1
    (Finset.mem_Icc.mp hn).2]

/-- One forward step of the secondary waveform returns the original Mobius source. -/
theorem secondary_forcing (j : ℕ) (u : ℝ) :
    synthesis j secondaryCoordinates u + shiftedSynthesis j secondaryCoordinates u =
      frozenSource j u := by
  rw [← synthesis_forward, forward_secondary, source_synthesis]

def secondaryEnergy (j : ℕ) : ℝ := layerEnergy j secondaryCoordinates

theorem secondaryEnergy_nonnegative (j : ℕ) : 0 ≤ secondaryEnergy j :=
  layerEnergy_nonnegative j secondaryCoordinates

theorem secondaryEnergy_source_integral (j : ℕ) :
    secondaryEnergy j = ∫ u in (0 : ℝ)..dyadicTime j,
      (∑ n ∈ Finset.Icc 1 (2 ^ j), secondaryCoefficient n * pickupResponse n u)^2 := by
  unfold secondaryEnergy layerEnergy
  simp_rw [secondary_synthesis]

/-- The arbitrary-coefficient phase theorem also applies to the second forcing.
A bounded phase change cannot remove a growth obstruction in this vector. -/
theorem secondary_complex_energy (j : ℕ) :
    (∫ u in (0 : ℝ)..dyadicTime j,
      ‖PickupPhaseTransport.waveform (Finset.Icc 1 ⌊Real.exp (dyadicTime j)⌋₊)
        (fun n => (secondaryCoefficient n : ℂ)) u‖^2) = secondaryEnergy j := by
  rw [dyadic_cutoff, secondaryEnergy_source_integral]
  apply intervalIntegral.integral_congr
  intro u _
  have he : PickupPhaseTransport.waveform (Finset.Icc 1 (2^j))
      (fun n => (secondaryCoefficient n : ℂ)) u =
      ((∑ n ∈ Finset.Icc 1 (2^j), secondaryCoefficient n * pickupResponse n u : ℝ) : ℂ) := by
    simp [PickupPhaseTransport.waveform]
  rw [he, Complex.norm_real, Real.norm_eq_abs, sq_abs]

theorem finite_phase_secondary_comparison {ι : Type*} (j : ℕ)
    (S : Finset ι) (w τ : ι → ℝ)
    (hw : ∀ i ∈ S, 0 ≤ w i) (hmass : (∑ i ∈ S, w i) = 1)
    (hτ : ∀ i ∈ S, |τ i| ≤ 1) :
    secondaryEnergy j ≤ 9 * PickupFinitePhaseLaw.quadraticEnergy S w τ (dyadicTime j)
      (fun n => (secondaryCoefficient n : ℂ)) ∧
    PickupFinitePhaseLaw.quadraticEnergy S w τ (dyadicTime j)
      (fun n => (secondaryCoefficient n : ℂ)) ≤ 9 * secondaryEnergy j := by
  have h := PickupFinitePhaseLaw.quadraticEnergy_comparison S w τ
    (dyadicTime_nonnegative j) (fun n => (secondaryCoefficient n : ℂ)) hw hmass hτ
  simpa only [secondary_complex_energy] using h

/-- An all-vector mass claim necessarily applies to the second forcing vector too. -/
theorem mass_controls_secondary (j : ℕ) (m : ℝ)
    (hmass : ∀ a : ℕ → ℝ, m * layerEnergy j a ≤ layerEnergy j (forward a)) :
    m * secondaryEnergy j ≤ pickupEnergy (dyadicTime j) := by
  have h := hmass secondaryCoordinates
  rw [forward_secondary, source_layerEnergy_eq] at h
  exact h

/-- The first and second inverse steps must both be charged to an all-vector estimate. -/
theorem mass_two_steps (j : ℕ) (m : ℝ) (hm : 0 ≤ m)
    (hmass : ∀ a : ℕ → ℝ, m * layerEnergy j a ≤ layerEnergy j (forward a)) :
    m^2 * secondaryEnergy j ≤ layerEnergy j firstCoordinate := by
  have hfirst := hmass sourceCoordinates
  have hf : forward sourceCoordinates = firstCoordinate := forward_alternating
  rw [hf, source_layerEnergy_eq] at hfirst
  calc
    m^2 * secondaryEnergy j = m * (m * secondaryEnergy j) := by ring
    _ ≤ m * pickupEnergy (dyadicTime j) :=
      mul_le_mul_of_nonneg_left (mass_controls_secondary j m hmass) hm
    _ ≤ layerEnergy j firstCoordinate := hfirst

theorem secondary_bound_of_mass (j : ℕ) (m : ℝ) (hm : 0 < m)
    (hmass : ∀ a : ℕ → ℝ, m * layerEnergy j a ≤ layerEnergy j (forward a)) :
    secondaryEnergy j ≤ 4 * dyadicTime j / m^2 := by
  apply (le_div_iff₀ (sq_pos_of_pos hm)).mpr
  have h := (mass_two_steps j m hm.le hmass).trans
    (firstCoordinateEnergy_le_four_time j)
  simpa only [mul_comm] using h

/-- A source-only bound is sufficient and is NOT applied to every layer vector. -/
theorem source_energy_of_observed_mass (j : ℕ) (m : ℝ) (hm : 0 < m)
    (hsource : m * layerEnergy j sourceCoordinates ≤ layerEnergy j firstCoordinate) :
    pickupEnergy (dyadicTime j) ≤ 4 * dyadicTime j / m := by
  rw [source_layerEnergy_eq] at hsource
  apply (le_div_iff₀ hm).mpr
  have h := hsource.trans (firstCoordinateEnergy_le_four_time j)
  simpa only [mul_comm] using h

/-- A bound for the original observed vector alone has no second-forcing premise. -/
theorem layer_bound_of_observed_mass (m : ℝ) (hm : 0 < m)
    (hsource : ∀ j : ℕ,
      m * layerEnergy j sourceCoordinates ≤ layerEnergy j firstCoordinate) :
    LayerEnergyBound := by
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := GoodScaleEnergyCriterion.pickupDiagonal_subexponential δ hδ
  refine ⟨C / m, div_nonneg hC hm.le, ?_⟩
  intro j
  have h := (hsource j).trans (firstCoordinateEnergy_le_diagonal j)
  have hr := hb (dyadicTime j) (dyadicTime_nonnegative j)
  apply (mul_le_mul_right hm).mp
  have he : (C / m * Real.exp (δ * dyadicTime j)) * m =
      C * Real.exp (δ * dyadicTime j) := by
    field_simp [hm.ne']
    <;> ring
  rw [he]
  nlinarith

/-- A finite real-variable obstruction used in the companion written Euler-product proof.
It supplies no Euler-product identity or analytic continuation as an axiom. -/
theorem logarithmic_pole_slope (h Z R L : ℝ)
    (hZ : 0 < Z) (hL : 0 ≤ L) (hR : 0 ≤ R)
    (hscale : h * Z ≤ 2) (hlog : 2 * L + 2 ≤ Real.log Z) :
    (1 - Real.log Z - R) / Z < -L * h := by
  apply (div_lt_iff₀ hZ).mpr
  have hprod := mul_le_mul_of_nonneg_left hscale hL
  nlinarith

end GRWTSK.NumberTheory.Moebius.PickupSecondaryForcing
