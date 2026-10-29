/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.RadicalDeletionGenerator
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupOptimizationGap
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CausalBidiagonalInverse

/-!
# Exact factor-layer synthesis of the maintained causal pickup

All j+1 coordinates, including empty and zero-energy terminal layers, remain
present. The finite Gram is positive semidefinite, not asserted invertible.
The layer energy is identified with the native pickup energy. No spectral gap,
Jacobi tridiagonalization, phase norm comparison, or RH witness is assumed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers

open MeasureTheory
open GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse
open GRWTSK.RiemannHypothesis.CCC
open RadicalDeletionGenerator PickupOptimizationGap PickupDyadicEndpoint
open PickupEndpointQuadrature GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential

def layerWave (j k : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (2 ^ j), layer k n * pickupResponse n u

def frozenSource (j : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (2 ^ j), moebiusReal n * pickupResponse n u

def synthesis (j : ℕ) (a : ℕ → ℝ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range (j + 1), a k * layerWave j k u

def sourceCoordinates (k : ℕ) : ℝ := (-1 : ℝ) ^ k

/-- Exact aggregation of the original labelled responses, not a moment reconstruction. -/
theorem synthesis_eq_coefficient_sum (j : ℕ) (a : ℕ → ℝ) (u : ℝ) :
    synthesis j a u = ∑ n ∈ Finset.Icc 1 (2 ^ j),
      (∑ k ∈ Finset.range (j + 1), a k * layer k n) * pickupResponse n u := by
  unfold synthesis layerWave
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem source_synthesis (j : ℕ) (u : ℝ) :
    synthesis j sourceCoordinates u = frozenSource j u := by
  rw [synthesis_eq_coefficient_sum]
  unfold frozenSource
  apply Finset.sum_congr rfl
  intro n hn
  have he := moebius_eq_alternating_layers j n (Finset.mem_Icc.mp hn).1
    (Finset.mem_Icc.mp hn).2
  change (∑ k ∈ Finset.range (j + 1), (-1 : ℝ)^k * layer k n) * pickupResponse n u = _
  exact congrArg (fun c : ℝ => c * pickupResponse n u) he.symm

theorem layerWave_zero (j : ℕ) (u : ℝ) : layerWave j 0 u = pickupResponse 1 u := by
  have hN : 1 ≤ (2 : ℕ) ^ j := by have hp : 0 < (2 : ℕ) ^ j := by positivity; omega
  simp [layerWave, layer_zero, seed, hN]

theorem layerWave_terminal (j : ℕ) (u : ℝ) : layerWave j (j + 1) u = 0 := by
  apply Finset.sum_eq_zero
  intro n hn
  rw [terminal_layer_zero j n (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).2,
    zero_mul]

def shiftedSynthesis (j : ℕ) (a : ℕ → ℝ) (u : ℝ) : ℝ :=
  ∑ k ∈ Finset.range (j + 1), a k * layerWave j (k + 1) u

/-- The represented shift is the actual divisor generator before response synthesis. -/
theorem shiftedSynthesis_eq_generator (j : ℕ) (a : ℕ → ℝ) (u : ℝ) :
    shiftedSynthesis j a u =
      ∑ n ∈ Finset.Icc 1 (2 ^ j),
        step (fun m => ∑ k ∈ Finset.range (j + 1), a k * layer k m) n *
          pickupResponse n u := by
  unfold shiftedSynthesis layerWave
  rw [step_sum]
  simp only [step_smul, step_layer, Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- Exact forcing by r_1. No fitted remainder or assumed operator return appears. -/
theorem source_forcing (j : ℕ) (u : ℝ) :
    frozenSource j u + shiftedSynthesis j sourceCoordinates u = pickupResponse 1 u := by
  rw [← source_synthesis]
  unfold synthesis shiftedSynthesis sourceCoordinates
  rw [← Finset.sum_add_distrib]
  have he : (∑ k ∈ Finset.range (j + 1),
      ((-1 : ℝ) ^ k * layerWave j k u + (-1 : ℝ) ^ k * layerWave j (k + 1) u)) =
      ∑ k ∈ Finset.range (j + 1),
        (-1 : ℝ) ^ k * (layerWave j k u + layerWave j (k + 1) u) := by
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he, alternating_telescope, layerWave_terminal, mul_zero, add_zero, layerWave_zero]

theorem layerWave_continuous (j k : ℕ) : Continuous (layerWave j k) := by
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

def layerGram (j k l : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime j, layerWave j k u * layerWave j l u

def layerEnergy (j : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime j, (synthesis j a u) ^ 2

theorem layerGram_symmetric (j k l : ℕ) : layerGram j k l = layerGram j l k := by
  unfold layerGram
  apply intervalIntegral.integral_congr
  intro u _
  exact mul_comm _ _

/-- The complete Gram includes every mixed term and every zero row. -/
theorem layerEnergy_eq_gram (j : ℕ) (a : ℕ → ℝ) :
    layerEnergy j a = ∑ k ∈ Finset.range (j + 1),
      ∑ l ∈ Finset.range (j + 1), a k * a l * layerGram j k l := by
  have hc (k l : ℕ) : Continuous
      (fun u => a k * a l * (layerWave j k u * layerWave j l u)) :=
    continuous_const.mul ((layerWave_continuous j k).mul (layerWave_continuous j l))
  calc
    _ = ∫ u in (0 : ℝ)..dyadicTime j,
        ∑ k ∈ Finset.range (j + 1), ∑ l ∈ Finset.range (j + 1),
          a k * a l * (layerWave j k u * layerWave j l u) := by
      apply intervalIntegral.integral_congr
      intro u _
      unfold synthesis
      rw [pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro l _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro k _
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro l _
          exact intervalIntegral.integral_const_mul _ _
        · intro l _
          exact (hc k l).intervalIntegrable _ _
      · intro k _
        apply Continuous.intervalIntegrable
        apply continuous_finsetSum
        intro l _
        exact hc k l

theorem layerEnergy_nonnegative (j : ℕ) (a : ℕ → ℝ) : 0 ≤ layerEnergy j a := by
  unfold layerEnergy
  rw [intervalIntegral.integral_of_le (dyadicTime_nonnegative j)]
  exact integral_nonneg (fun u => sq_nonneg _)

/-- The original native energy, not a replacement analytic object. -/
theorem source_layerEnergy_eq (j : ℕ) :
    layerEnergy j sourceCoordinates = pickupEnergy (dyadicTime j) := by
  have hgram := response_gram_quadratic_identity (dyadicTime j) moebiusReal
  rw [dyadic_cutoff] at hgram
  have he : layerEnergy j sourceCoordinates = pickupFullGram (dyadicTime j) := by
    unfold layerEnergy
    simp_rw [source_synthesis]
    change (∫ u in (0 : ℝ)..dyadicTime j, frozenSource j u ^ 2) = _
    unfold frozenSource pickupFullGram
    rw [dyadic_cutoff]
    exact hgram
  rw [he, pickup_full_gram_split,
    pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)]

/-- Empty terminal layers cannot be used as an invertible Gram basis. -/
theorem layerGram_terminal (j k : ℕ) : layerGram j (j + 1) k = 0 := by
  simp [layerGram, layerWave_terminal]

def LayerEnergyBound : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    layerEnergy j sourceCoordinates ≤ C * Real.exp (δ * dyadicTime j)

theorem layer_bound_iff_energy_on :
    LayerEnergyBound ↔ SubexponentialOn pickupEnergy dyadicScales := by
  have he : LayerEnergyBound ↔ AllGridUpper pickupEnergy (Real.log 2) := by
    simp only [LayerEnergyBound, AllGridUpper, source_layerEnergy_eq, dyadicTime]
  exact he.trans (allGridUpper_iff_subexponentialOn log_two_positive)

/-- Only the inherited polynomial diagonal separates energy and signed cross bounds. -/
theorem energy_on_iff_cross_on {G : Set ℝ} :
    SubexponentialOn pickupEnergy G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro h
    exact subexponentialOn_mono h (fun T _ hT => by
      have he := pickupEnergy_eq_diagonal_add_cross hT
      have hd := (pickupDiagonal_quadratic_bound hT).1
      linarith)
  · exact energy_on_of_cross_on

/-- The constructed j+1-coordinate synthesis has exactly the original growth target. -/
theorem layer_bound_iff_dyadicBirthBound : LayerEnergyBound ↔ DyadicBirthBound := by
  exact layer_bound_iff_energy_on.trans
    (energy_on_iff_cross_on.trans
      (endpoint_subexponential_iff.symm.trans
        (dyadicEndpointBound_iff_good_scales.symm.trans dyadicBirthBound_iff_endpoint.symm)))

theorem riemannHypothesis_of_layer_bound (h : LayerEnergyBound) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound (layer_bound_iff_dyadicBirthBound.mp h)

/-- The finite source synthesis intertwines the genuine coefficient map and generator. -/
theorem synthesis_forward (j : ℕ) (a : ℕ → ℝ) (u : ℝ) :
    synthesis j (forward a) u = synthesis j a u + shiftedSynthesis j a u := by
  have h := forward_pairing j a (fun k => layerWave j k u)
  rw [layerWave_terminal, mul_zero, sub_zero] at h
  exact h

def firstCoordinate (k : ℕ) : ℝ := if k = 0 then 1 else 0

theorem solve_firstCoordinate : solve firstCoordinate = sourceCoordinates := by
  funext k
  exact solve_first k

theorem synthesis_firstCoordinate (j : ℕ) (u : ℝ) :
    synthesis j firstCoordinate u = pickupResponse 1 u := by
  simp [synthesis, firstCoordinate, layerWave_zero]

/-- The inverse is first applied to independent coordinates, then measured in
THE ACTUAL layer Gram. No Euclidean transpose replaces the source adjoint. -/
def inverseGram (j k l : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime j,
    synthesis j (solve (fun n => if n = k then 1 else 0)) u *
      synthesis j (solve (fun n => if n = l then 1 else 0)) u

theorem inverseGram_symmetric (j k l : ℕ) : inverseGram j k l = inverseGram j l k := by
  unfold inverseGram
  apply intervalIntegral.integral_congr
  intro u _
  exact mul_comm _ _

/-- Constructed boundary Green observation, before any orthonormal Jacobi reduction. -/
theorem inverseGram_zero_zero (j : ℕ) : inverseGram j 0 0 = pickupEnergy (dyadicTime j) := by
  have he : inverseGram j 0 0 = layerEnergy j sourceCoordinates := by
    unfold inverseGram layerEnergy
    change (∫ u in (0 : ℝ)..dyadicTime j,
      synthesis j (solve firstCoordinate) u * synthesis j (solve firstCoordinate) u) = _
    rw [solve_firstCoordinate]
    apply intervalIntegral.integral_congr
    intro u _
    exact (pow_two _).symm
  rw [he, source_layerEnergy_eq]

/-- The original diagonal pays the independently defined forcing; no initial atom is dropped. -/
theorem firstCoordinateEnergy_le_diagonal (j : ℕ) :
    layerEnergy j firstCoordinate ≤ pickupDiagonal (dyadicTime j) := by
  have he : layerEnergy j firstCoordinate = pickupResponseGram (dyadicTime j) 1 1 := by
    unfold layerEnergy pickupResponseGram
    simp_rw [synthesis_firstCoordinate, pow_two]
  rw [he]
  have hN : 1 ≤ (2 : ℕ) ^ j := by have hp : 0 < (2 : ℕ) ^ j := by positivity; omega
  have hm : (1 : ℕ) ∈ Finset.Icc 1 ⌊Real.exp (dyadicTime j)⌋₊ := by
    rw [dyadic_cutoff]
    exact Finset.mem_Icc.mpr ⟨le_rfl, hN⟩
  have hs := Finset.single_le_sum
    (s := Finset.Icc 1 ⌊Real.exp (dyadicTime j)⌋₊)
    (f := fun n => moebiusReal n ^ 2 * pickupResponseGram (dyadicTime j) n n)
    (fun n hn => mul_nonneg (sq_nonneg _)
      (GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent.responseGram_nonneg
        (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).1 (dyadicTime_nonnegative j))) hm
  simpa [pickupDiagonal, moebiusReal, ArithmeticFunction.moebius_apply_one] using hs

/-- The independent forcing has the sharper linear energy cost from its literal response. -/
theorem firstCoordinateEnergy_le_four_time (j : ℕ) :
    layerEnergy j firstCoordinate ≤ 4 * dyadicTime j := by
  have he : layerEnergy j firstCoordinate =
      ∫ u in (0 : ℝ)..dyadicTime j, pickupResponse 1 u ^ 2 := by
    unfold layerEnergy
    simp_rw [synthesis_firstCoordinate]
  rw [he]
  have hi := intervalIntegral.integral_mono_on (dyadicTime_nonnegative j)
    (((pickupResponse_continuous (by norm_num : 1 ≤ (1 : ℕ))).pow 2).intervalIntegrable _ _)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (4 : ℝ)) volume 0 (dyadicTime j))
    (fun u hu => show pickupResponse 1 u ^ 2 ≤ 4 from by
      have hr0 := GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent.response_nonneg
        (by norm_num : 1 ≤ (1 : ℕ)) u
      have hr2 : pickupResponse 1 u ≤ 2 := by
        simp only [pickupResponse, Nat.cast_one, Real.log_one, if_pos hu.1,
          Real.sqrt_one, inv_one]
        linarith [Real.exp_pos (-u / 2)]
      have hs := (sq_le_sq₀ hr0 (by norm_num : (0 : ℝ) ≤ 2)).mpr hr2
      norm_num at hs
      exact hs)
  simpa only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_comm] using hi

/-! ## Scale-dependent mass only on the actual source direction

These sufficient hypotheses retain the original layer Gram and dyadic clock.
They require neither a common positive mass nor a comparison for every layer
vector. The mass sequence and its every-positive-rate reciprocal bound remain
unresolved arithmetic inputs. No such sequence is constructed here.
Compilation, fresh kernel checking and transitive axiom auditing are NOT_RUN.
-/

/-- Only the actual alternating source is tested, with the mass at its own scale. -/
def SourceMassComparison (mass : ℕ → ℝ) : Prop :=
  ∀ j : ℕ, mass j * layerEnergy j sourceCoordinates ≤
    layerEnergy j (forward sourceCoordinates)

/-- A single mass sequence has a reciprocal bound at EVERY positive rate.
The constant may depend on the rate; a fixed exponential loss does not suffice. -/
def SourceInverseMassSubexponential (mass : ℕ → ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    1 / mass j ≤ C * Real.exp (δ * dyadicTime j)

/-- Split the desired rate in half between the reciprocal mass and the original
polynomial forcing allowance. This is a conditional transfer, not a mass witness. -/
theorem layer_bound_of_source_mass_inverse_subexponential (mass : ℕ → ℝ)
    (hpos : ∀ j : ℕ, 0 < mass j) (hmass : SourceMassComparison mass)
    (hinverse : SourceInverseMassSubexponential mass) : LayerEnergyBound := by
  intro δ hδ
  have hhalf : 0 < δ / 2 := half_pos hδ
  obtain ⟨C, hC, hCbound⟩ := hinverse (δ / 2) hhalf
  obtain ⟨D, hD, hDbound⟩ := pickupDiagonal_subexponential (δ / 2) hhalf
  refine ⟨C * D, mul_nonneg hC hD, ?_⟩
  intro j
  have hs := hmass j
  have hf : forward sourceCoordinates = firstCoordinate := forward_alternating
  rw [hf] at hs
  have hsource : layerEnergy j sourceCoordinates ≤
      layerEnergy j firstCoordinate / mass j := by
    apply (le_div_iff₀ (hpos j)).mpr
    simpa only [mul_comm] using hs
  have hrate := hDbound (dyadicTime j) (dyadicTime_nonnegative j)
  have hexponents : (δ / 2) * dyadicTime j + (δ / 2) * dyadicTime j =
      δ * dyadicTime j := by ring
  calc
    layerEnergy j sourceCoordinates ≤ layerEnergy j firstCoordinate / mass j := hsource
    _ ≤ pickupDiagonal (dyadicTime j) / mass j :=
      div_le_div_of_nonneg_right (firstCoordinateEnergy_le_diagonal j) (hpos j).le
    _ = pickupDiagonal (dyadicTime j) * (1 / mass j) := by ring
    _ ≤ (D * Real.exp ((δ / 2) * dyadicTime j)) *
        (C * Real.exp ((δ / 2) * dyadicTime j)) :=
      mul_le_mul hrate (hCbound j) (one_div_nonneg.mpr (hpos j).le)
        (mul_nonneg hD (Real.exp_pos _).le)
    _ = (C * D) * (Real.exp ((δ / 2) * dyadicTime j) *
        Real.exp ((δ / 2) * dyadicTime j)) := by ring
    _ = (C * D) * Real.exp (δ * dyadicTime j) := by
      rw [← Real.exp_add, hexponents]

/-- Actual source mass implies a linear energy estimate, with all constants displayed. -/
theorem energy_le_four_time_of_uniform_mass (m : ℝ) (hm : 0 < m)
    (hmass : ∀ j : ℕ, ∀ a : ℕ → ℝ,
      m * layerEnergy j a ≤ layerEnergy j (forward a)) (j : ℕ) :
    pickupEnergy (dyadicTime j) ≤ 4 * dyadicTime j / m := by
  have hs := hmass j sourceCoordinates
  have hf : forward sourceCoordinates = firstCoordinate := forward_alternating
  rw [hf, source_layerEnergy_eq] at hs
  have hb := firstCoordinateEnergy_le_four_time j
  apply (le_div_iff₀ hm).mpr
  nlinarith

/-- A source-specific uniform mass condition suffices. Its witness is NOT asserted.
The finite coefficient map, source matching, forcing, and polynomial cost are proved above. -/
theorem layer_bound_of_uniform_mass (m : ℝ) (hm : 0 < m)
    (hmass : ∀ j : ℕ, ∀ a : ℕ → ℝ,
      m * layerEnergy j a ≤ layerEnergy j (forward a)) : LayerEnergyBound := by
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := pickupDiagonal_subexponential δ hδ
  refine ⟨C / m, div_nonneg hC hm.le, ?_⟩
  intro j
  have hs := hmass j sourceCoordinates
  have hf : forward sourceCoordinates = firstCoordinate := forward_alternating
  rw [hf] at hs
  have hd := firstCoordinateEnergy_le_diagonal j
  have hrate := hb (dyadicTime j) (dyadicTime_nonnegative j)
  apply (mul_le_mul_right hm).mp
  have he : (C / m * Real.exp (δ * dyadicTime j)) * m =
      C * Real.exp (δ * dyadicTime j) := by field_simp [hm.ne'] <;> ring
  rw [he]
  nlinarith

/-- The existing analytic return is reused; no independent RH premise is added. -/
theorem riemannHypothesis_of_uniform_layer_mass (m : ℝ) (hm : 0 < m)
    (hmass : ∀ j : ℕ, ∀ a : ℕ → ℝ,
      m * layerEnergy j a ≤ layerEnergy j (forward a)) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_layer_bound (layer_bound_of_uniform_mass m hm hmass)

end GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers
