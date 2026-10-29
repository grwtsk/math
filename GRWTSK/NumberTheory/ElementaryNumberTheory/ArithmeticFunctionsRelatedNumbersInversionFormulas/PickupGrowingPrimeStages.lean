/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.PickupPrimeBlockTransfer
import Mathlib.Data.Nat.Sqrt

/-!
# A growing, fixed-in-advance prime schedule with an independently paid stage budget

At dyadic time j*log 2 select ALL primes <= j. The actual block diagonal is at
most 2*T_j^2*exp(4*sqrt j), and hence pays every positive rate. The complete
absolute sum of same-core signed transfers is at most
8*sqrt(j)*T_j^2*exp(4*sqrt(j)). These are constructed quantitative suppliers,
not assumptions about a hypothetical coercivity constant.

The remaining term is the actual ordered DISTINCT-core interaction. Its growth
bound is not proved here. No source-only mass witness is defined as an energy
ratio and no full-vector coercivity is used. The Euler/Laplace secondary-source
obstruction is not imported or promoted to a Lean result.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockTransfer
open GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- Primes enter in increasing numerical stages, at the head of the stored list.
The schedule is fixed before the requested positive rate is chosen. -/
def stages : ℕ → List ℕ
  | 0 => []
  | j + 1 => if Nat.Prime (j + 1) then (j + 1) :: stages j else stages j

def weightSum : List ℕ → ℝ
  | [] => 0
  | p :: P => (Real.sqrt (p : ℝ))⁻¹ + weightSum P

theorem stages_prime (j : ℕ) : ∀ p ∈ stages j, Nat.Prime p := by
  induction j with
  | zero => simp [stages]
  | succ j ih =>
      by_cases hp : Nat.Prime (j + 1)
      · rw [stages, if_pos hp]
        intro p h
        rcases List.mem_cons.mp h with rfl | h
        · exact hp
        · exact ih p h
      · simpa only [stages, if_neg hp] using ih

theorem stages_bounded (j : ℕ) : ∀ p ∈ stages j, p ≤ j := by
  induction j with
  | zero => simp [stages]
  | succ j ih =>
      by_cases hp : Nat.Prime (j + 1)
      · rw [stages, if_pos hp]
        intro p h
        rcases List.mem_cons.mp h with rfl | h
        · exact le_rfl
        · exact (ih p h).trans (Nat.le_succ j)
      · rw [stages, if_neg hp]
        exact fun p h => (ih p h).trans (Nat.le_succ j)

theorem stages_nodup (j : ℕ) : (stages j).Nodup := by
  induction j with
  | zero => simp [stages]
  | succ j ih =>
      by_cases hp : Nat.Prime (j + 1)
      · rw [stages, if_pos hp]
        apply List.nodup_cons.mpr
        refine ⟨?_, ih⟩
        intro h
        have hh := stages_bounded j (j + 1) h
        omega
      · simpa only [stages, if_neg hp] using ih

theorem weightSum_nonnegative (P : List ℕ) : 0 ≤ weightSum P := by
  induction P with
  | nil => exact le_rfl
  | cons p P ih => exact add_nonneg (inv_nonneg.mpr (Real.sqrt_nonneg _)) ih

/-- Each inverse square root is paid by an exact telescoping square-root increment. -/
theorem inverse_sqrt_increment (k : ℕ) :
    (Real.sqrt ((k + 1 : ℕ) : ℝ))⁻¹ ≤
      2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) := by
  have hx : 0 < Real.sqrt ((k + 1 : ℕ) : ℝ) := Real.sqrt_pos.mpr (by positivity)
  have hx2 := Real.sq_sqrt (Nat.cast_nonneg (k + 1) : (0 : ℝ) ≤ (k + 1 : ℕ))
  have hy2 := Real.sq_sqrt (Nat.cast_nonneg k : (0 : ℝ) ≤ k)
  have hs := sq_nonneg (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))
  have hh : 1 ≤ (2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))) *
      Real.sqrt ((k + 1 : ℕ) : ℝ) := by
    push_cast at hx2
    nlinarith
  simpa only [one_div] using (div_le_iff₀ hx).mpr hh

/-- Every prime is included; composite stages cost zero. No prime-counting estimate is used. -/
theorem stages_weight_le (j : ℕ) : weightSum (stages j) ≤ 2 * Real.sqrt (j : ℝ) := by
  induction j with
  | zero => norm_num [stages, weightSum]
  | succ j ih =>
      by_cases hp : Nat.Prime (j + 1)
      · rw [stages, if_pos hp, weightSum]
        have hs := inverse_sqrt_increment j
        linarith
      · rw [stages, if_neg hp]
        exact ih.trans (mul_le_mul_of_nonneg_left
          (Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ j)) (by norm_num))

/-- Finite Euler-factor upper bound, not a zeta assumption. -/
theorem factor_le_exp_weights (P : List ℕ) : factor P ≤ Real.exp (weightSum P) := by
  induction P with
  | nil => simp [factor, weightSum]
  | cons p P ih =>
      have he : 1 + (Real.sqrt (p : ℝ))⁻¹ ≤ Real.exp ((Real.sqrt (p : ℝ))⁻¹) := by
        simpa only [add_comm] using Real.add_one_le_exp ((Real.sqrt (p : ℝ))⁻¹)
      calc
        factor (p :: P) ≤ Real.exp ((Real.sqrt (p : ℝ))⁻¹) * Real.exp (weightSum P) :=
          mul_le_mul he ih (factor_nonnegative P) (Real.exp_pos _).le
        _ = Real.exp (weightSum (p :: P)) := by rw [← Real.exp_add]; rfl

theorem stages_factor_square_le (j : ℕ) :
    factor (stages j) ^ 2 ≤ Real.exp (4 * Real.sqrt (j : ℝ)) := by
  have hs := (sq_le_sq₀ (factor_nonnegative (stages j)) (Real.exp_pos _).le).mpr
    (factor_le_exp_weights (stages j))
  calc
    factor (stages j) ^ 2 ≤ Real.exp (weightSum (stages j)) ^ 2 := hs
    _ = Real.exp (2 * weightSum (stages j)) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    _ ≤ Real.exp (4 * Real.sqrt (j : ℝ)) :=
      Real.exp_le_exp.mpr (by linarith [stages_weight_le j])

/-- Explicit all-scale estimate on a genuine part of the ORIGINAL source split. -/
theorem growing_diagonal_explicit (j : ℕ) :
    diagonal (stages j) (dyadicTime j) ≤
      2 * dyadicTime j ^ 2 * Real.exp (4 * Real.sqrt (j : ℝ)) := by
  have hT := dyadicTime_nonnegative j
  have hd := (pickupDiagonal_quadratic_bound hT).2
  have hd0 := (pickupDiagonal_quadratic_bound hT).1
  calc
    diagonal (stages j) (dyadicTime j) ≤
        factor (stages j)^2 * pickupDiagonal (dyadicTime j) :=
      diagonal_le_factor_sq (stages j) (stages_prime j) hT
    _ ≤ Real.exp (4 * Real.sqrt (j : ℝ)) * (2 * dyadicTime j ^ 2) :=
      mul_le_mul (stages_factor_square_le j) hd hd0 (Real.exp_pos _).le
    _ = _ := by ring

/-- The scale loss exp(a*sqrt(j)) pays every positive outer-time rate explicitly. -/
theorem sqrt_exponent_bound (a ε : ℝ) (ha : 0 ≤ a) (hε : 0 < ε) (j : ℕ) :
    Real.exp (a * Real.sqrt (j : ℝ)) ≤
      Real.exp (a^2 / (4 * ε * Real.log 2)) * Real.exp (ε * dyadicTime j) := by
  let b : ℝ := ε * Real.log 2
  have hb : 0 < b := mul_pos hε log_two_positive
  have hx2 := Real.sq_sqrt (Nat.cast_nonneg j : (0 : ℝ) ≤ j)
  have hs := sq_nonneg (2 * b * Real.sqrt (j : ℝ) - a)
  have he : a * Real.sqrt (j : ℝ) ≤ b * (j : ℝ) + a^2 / (4 * b) := by
    apply (mul_le_mul_right (show 0 < 4 * b by positivity)).mp
    have hcancel : (b * (j : ℝ) + a^2 / (4 * b)) * (4 * b) =
        4 * b^2 * (j : ℝ) + a^2 := by field_simp [hb.ne'] <;> ring
    rw [hcancel]
    nlinarith
  rw [← Real.exp_add]
  apply Real.exp_le_exp.mpr
  convert he using 1 <;>
    simp only [b, dyadicTime, GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential.time] <;>
    ring

/-- No growth hypothesis is supplied by the caller; the selected stage is fixed. -/
theorem growing_diagonal_every_positive_rate :
    ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      diagonal (stages j) (dyadicTime j) ≤ C * Real.exp (δ * dyadicTime j) := by
  intro δ hδ
  obtain ⟨D, hD, hb⟩ := pickupDiagonal_subexponential (δ / 2) (by linarith)
  let A := Real.exp (16 / (4 * (δ / 2) * Real.log 2))
  refine ⟨A * D, mul_nonneg (Real.exp_pos _).le hD, ?_⟩
  intro j
  have hfactor : factor (stages j)^2 ≤ A * Real.exp ((δ / 2) * dyadicTime j) :=
    (stages_factor_square_le j).trans
      (by simpa only [A, show (4 : ℝ)^2 = 16 by norm_num] using
        sqrt_exponent_bound 4 (δ / 2) (by norm_num) (by linarith) j)
  have hd := hb (dyadicTime j) (dyadicTime_nonnegative j)
  have hd0 := (pickupDiagonal_quadratic_bound (dyadicTime_nonnegative j)).1
  calc
    diagonal (stages j) (dyadicTime j) ≤ factor (stages j)^2 * pickupDiagonal (dyadicTime j) :=
      diagonal_le_factor_sq (stages j) (stages_prime j) (dyadicTime_nonnegative j)
    _ ≤ (A * Real.exp ((δ / 2) * dyadicTime j)) *
        (D * Real.exp ((δ / 2) * dyadicTime j)) :=
      mul_le_mul hfactor hd hd0 (mul_nonneg (Real.exp_pos _).le (Real.exp_pos _).le)
    _ = (A * D) * Real.exp (δ * dyadicTime j) := by
      have he : Real.exp ((δ / 2) * dyadicTime j) * Real.exp ((δ / 2) * dyadicTime j) =
          Real.exp (δ * dyadicTime j) := by
        rw [← Real.exp_add]
        congr 1
        ring
      calc
        _ = (A * D) * (Real.exp ((δ / 2) * dyadicTime j) *
          Real.exp ((δ / 2) * dyadicTime j)) := by ring
        _ = _ := by rw [he]

/-- Actual absolute accumulated same-core transfers; no sign assumption is made. -/
def transferVariation : List ℕ → ℝ → ℝ
  | [], _ => 0
  | p :: P, T => transferVariation P T + 2 * |credit P p T|

theorem transferVariation_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) :
    transferVariation P T ≤ 2 * factor P^2 * weightSum P * pickupDiagonal T := by
  have hD := (pickupDiagonal_quadratic_bound hT).1
  induction P with
  | nil => simp [transferVariation, factor, weightSum]
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      have hb : 0 ≤ (Real.sqrt (p : ℝ))⁻¹ := inv_nonneg.mpr (Real.sqrt_nonneg _)
      have hf : factor P ≤ factor (p :: P) := by
        simp only [factor]
        nlinarith [factor_nonnegative P]
      have hf2 := (sq_le_sq₀ (factor_nonnegative P) (factor_nonnegative (p :: P))).mpr hf
      have hC := credit_abs_le P htail p hp hT
      have hi := ih htail
      calc
        transferVariation (p :: P) T ≤
            2 * factor P^2 * (weightSum P + (Real.sqrt (p : ℝ))⁻¹) * pickupDiagonal T := by
          simp only [transferVariation]
          nlinarith
        _ ≤ 2 * factor (p :: P)^2 * weightSum (p :: P) * pickupDiagonal T := by
          have hh := mul_le_mul_of_nonneg_right hf2
            (show 0 ≤ 2 * weightSum (p :: P) * pickupDiagonal T from
              mul_nonneg (mul_nonneg (by norm_num) (weightSum_nonnegative _)) hD)
          simp only [weightSum] at hh ⊢
          nlinarith

theorem growing_transfer_explicit (j : ℕ) :
    transferVariation (stages j) (dyadicTime j) ≤
      8 * Real.sqrt (j : ℝ) * dyadicTime j^2 * Real.exp (4 * Real.sqrt (j : ℝ)) := by
  have hT := dyadicTime_nonnegative j
  have hD0 := (pickupDiagonal_quadratic_bound hT).1
  have hD := (pickupDiagonal_quadratic_bound hT).2
  have hs := transferVariation_le (stages j) (stages_prime j) hT
  have hprod := mul_le_mul (stages_factor_square_le j) (stages_weight_le j)
    (weightSum_nonnegative _) (Real.exp_pos _).le
  have hprod2 := mul_le_mul hprod hD hD0
    (mul_nonneg (Real.exp_pos _).le (mul_nonneg (by norm_num) (Real.sqrt_nonneg _)))
  nlinarith

/-- An explicit exponential envelope for the complete absolute stage-transfer budget. -/
theorem growing_transfer_envelope (j : ℕ) :
    transferVariation (stages j) (dyadicTime j) ≤
      4 * Real.exp (5 * Real.sqrt (j : ℝ)) * pickupDiagonal (dyadicTime j) := by
  have hD := (pickupDiagonal_quadratic_bound (dyadicTime_nonnegative j)).1
  have hp := mul_le_mul (stages_factor_square_le j) (stages_weight_le j)
    (weightSum_nonnegative _) (Real.exp_pos _).le
  have hq : Real.sqrt (j : ℝ) ≤ Real.exp (Real.sqrt (j : ℝ)) := by
    have hh := Real.add_one_le_exp (Real.sqrt (j : ℝ))
    linarith
  have he : Real.exp (4 * Real.sqrt (j : ℝ)) * Real.exp (Real.sqrt (j : ℝ)) =
      Real.exp (5 * Real.sqrt (j : ℝ)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hq' := mul_le_mul_of_nonneg_left hq (Real.exp_pos (4 * Real.sqrt (j : ℝ))).le
  rw [he] at hq'
  have hc : 2 * factor (stages j)^2 * weightSum (stages j) ≤
      4 * Real.exp (5 * Real.sqrt (j : ℝ)) := by nlinarith
  exact (transferVariation_le (stages j) (stages_prime j) (dyadicTime_nonnegative j)).trans
    (mul_le_mul_of_nonneg_right hc hD)

/-- The entire internal signed-stage allowance, in absolute variation, is supplied. -/
theorem growing_transfer_every_positive_rate :
    ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      transferVariation (stages j) (dyadicTime j) ≤ C * Real.exp (δ * dyadicTime j) := by
  intro δ hδ
  obtain ⟨D, hD, hb⟩ := pickupDiagonal_subexponential (δ / 2) (by linarith)
  let A := Real.exp (25 / (4 * (δ / 2) * Real.log 2))
  refine ⟨4 * A * D, by dsimp [A]; positivity, ?_⟩
  intro j
  have he : Real.exp (5 * Real.sqrt (j : ℝ)) ≤ A * Real.exp ((δ / 2) * dyadicTime j) := by
    simpa only [A, show (5 : ℝ)^2 = 25 by norm_num] using
      sqrt_exponent_bound 5 (δ / 2) (by norm_num) (by linarith) j
  have hd := hb (dyadicTime j) (dyadicTime_nonnegative j)
  have hd0 := (pickupDiagonal_quadratic_bound (dyadicTime_nonnegative j)).1
  have hp := mul_le_mul he hd hd0 (mul_nonneg (Real.exp_pos _).le (Real.exp_pos _).le)
  have hrate : Real.exp ((δ / 2) * dyadicTime j) * Real.exp ((δ / 2) * dyadicTime j) =
      Real.exp (δ * dyadicTime j) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    transferVariation (stages j) (dyadicTime j) ≤
        4 * Real.exp (5 * Real.sqrt (j : ℝ)) * pickupDiagonal (dyadicTime j) :=
      growing_transfer_envelope j
    _ ≤ (4 * A * D) * Real.exp (δ * dyadicTime j) := by
      have hh := mul_le_mul_of_nonneg_left hp (by norm_num : (0 : ℝ) ≤ 4)
      calc
        _ ≤ 4 * ((A * Real.exp ((δ / 2) * dyadicTime j)) *
          (D * Real.exp ((δ / 2) * dyadicTime j))) := by nlinarith
        _ = _ := by
          calc
            _ = (4 * A * D) * (Real.exp ((δ / 2) * dyadicTime j) *
                Real.exp ((δ / 2) * dyadicTime j)) := by ring
            _ = _ := by rw [hrate]

/-- This is the actual remaining ordered interaction, not a source-dependent mass ratio. -/
def DistinctCoreBound : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
    interaction (stages j) (dyadicTime j) ≤ C * Real.exp (δ * dyadicTime j)

/-- The growing diagonal is PAID above, not another hypothesis of the return. -/
theorem distinct_core_bound_iff_layer_bound : DistinctCoreBound ↔ LayerEnergyBound := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hc⟩ := h δ hδ
    obtain ⟨D, hD, hd⟩ := growing_diagonal_every_positive_rate δ hδ
    refine ⟨D + C, add_nonneg hD hC, ?_⟩
    intro j
    rw [source_layerEnergy_eq,
      source_energy_split (stages j) (stages_prime j) (stages_nodup j) (dyadicTime_nonnegative j)]
    simpa only [add_mul] using add_le_add (hd j) (hc j)
  · intro h δ hδ
    obtain ⟨C, hC, hc⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have hs := source_energy_split (stages j) (stages_prime j) (stages_nodup j)
      (dyadicTime_nonnegative j)
    have hd := diagonal_nonnegative (stages j) (dyadicTime_nonnegative j)
    have hb := hc j
    rw [source_layerEnergy_eq] at hb
    linarith

theorem distinct_core_bound_iff_dyadicBirthBound : DistinctCoreBound ↔ DyadicBirthBound :=
  distinct_core_bound_iff_layer_bound.trans layer_bound_iff_dyadicBirthBound

/-- An explicit original-source upper allowance; its remaining signed term is visible. -/
theorem original_energy_le_distinct_core_plus_paid (j : ℕ) :
    pickupEnergy (dyadicTime j) ≤ interaction (stages j) (dyadicTime j) +
      2 * dyadicTime j^2 * Real.exp (4 * Real.sqrt (j : ℝ)) := by
  rw [source_energy_split (stages j) (stages_prime j) (stages_nodup j) (dyadicTime_nonnegative j)]
  linarith [growing_diagonal_explicit j]

end GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
