import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeNativeClock
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeEnergyBarrier
import FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve

/-!
# Complete native record p-energy of the unchanged two-frequency path

The actual chosen record heights and disjoint native intervals retain their
whole natural-index inventory. Weighted Holder and exact infinite height
telescoping supply the missing tail-price interface. Summability contradicts
the polynomial record deficit on the exponentially compressed clock for every
fixed real p>1. At p=1 the exact total remains 2-L(t0). The selection is an
explicit source-faithful record partition, not actual prime arithmetic.
Human native-clock and complete-quantifier direction: grwtsk contributors.
Local infinite Holder and divergence consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativeEnergy
open CriticalTwoModeDiophantine CriticalTwoModeRecordSequence CriticalTwoModeNativeClock
open CriticalTwoModeEnergyBarrier WeightedLpReserve Filter
open scoped BigOperators Topology
noncomputable section

/-- The energy term in this module, with the following exact parameterization.

def energyTerm {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (p : ℝ) (j : ℕ) : ℝ :=
(recordHeight hα ht₀ j)^p / (nativeClock hα ht₀ j)^(p-1)
-/
def energyTerm {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (p : ℝ) (j : ℕ) : ℝ :=
  (recordHeight hα ht₀ j)^p / (nativeClock hα ht₀ j)^(p-1)

/-- The tail energy in this module, with the following exact parameterization.

def tailEnergy {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (p : ℝ) (J : ℕ) : ℝ := ∑'
j : ℕ, energyTerm hα ht₀ p (j+J)
-/
def tailEnergy {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (p : ℝ) (J : ℕ) : ℝ :=
  ∑' j : ℕ, energyTerm hα ht₀ p (j+J)

theorem literal_energy_term_nonneg {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (p : ℝ) (j : ℕ) : 0 ≤ energyTerm hα ht₀ p j :=
  div_nonneg (Real.rpow_nonneg (literal_record_height_pos hα ht₀ j).le _)
    (Real.rpow_nonneg (literal_native_clock_pos hα ht₀ j).le _)

theorem literal_native_record_tail_holder {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 ≤ p) (hfinite : Summable (energyTerm hα ht₀ p)) (J : ℕ) :
    2-recordLevel hα ht₀ J ≤
      (2*Real.exp (-recordTime hα ht₀ J/2))^(1-p⁻¹) * (tailEnergy hα ht₀ p J)^p⁻¹ := by
  have heJ : Summable (fun j : ℕ ↦ energyTerm hα ht₀ p (j+J)) := (summable_nat_add_iff J).mpr
    hfinite
  have hexp : 0 ≤ 1-p⁻¹ := by linarith [inv_le_one_of_one_le₀ hp]
  have hbound (K : ℕ) : (∑ j ∈ Finset.range K, recordHeight hα ht₀ (j+J)) ≤
      (2*Real.exp (-recordTime hα ht₀ J/2))^(1-p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm hα ht₀ p (j+J))^p⁻¹ := by
    let w : ℕ → ℝ := fun j ↦ nativeClock hα ht₀ (j+J)
    let ρ : ℕ → ℝ := fun j ↦ recordHeight hα ht₀ (j+J)
    have hw (j : ℕ) : 0 < w j := literal_native_clock_pos hα ht₀ (j+J)
    have hρ (j : ℕ) : 0 ≤ ρ j := (literal_record_height_pos hα ht₀ (j+J)).le
    have h := finite_weighted_holder (Finset.range K) w ρ hp hw hρ
    change (∑ j ∈ Finset.range K, recordHeight hα ht₀ (j+J)) ≤
      (∑ j ∈ Finset.range K, w j)^(1-p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm hα ht₀ p (j+J))^p⁻¹ at h
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2*Real.exp (-recordTime hα ht₀ J/2) :=
      literal_native_clock_prefix_le_remaining_width hα ht₀ J K
    exact h.trans (mul_le_mul_of_nonneg_right
      (Real.rpow_le_rpow (Finset.sum_nonneg (fun j _ ↦ (hw j).le)) hwidth hexp)
      (Real.rpow_nonneg (Finset.sum_nonneg (fun j _ ↦ literal_energy_term_nonneg hα ht₀ p
        (j+J))) _))
  exact le_of_tendsto_of_tendsto' (literal_record_height_tail_has_sum hα ht₀ J).tendsto_sum_nat
    (tendsto_const_nhds.mul (heJ.hasSum.tendsto_sum_nat.rpow_const (Or.inr (by positivity)))) hbound

theorem literal_native_record_tail_price {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 ≤ p) (hfinite : Summable (energyTerm hα ht₀ p)) (J : ℕ) :
    nativeTailPrice α t₀ p (recordTime hα ht₀ J) ≤ tailEnergy hα ht₀ p J := by
  have hppos : 0 < p := by linarith
  have hW : 0 < 2*Real.exp (-recordTime hα ht₀ J/2) := by positivity
  have hE : 0 ≤ tailEnergy hα ht₀ p J :=
    tsum_nonneg (fun j ↦ literal_energy_term_nonneg hα ht₀ p (j+J))
  have hδ : 0 ≤ 2-recordLevel hα ht₀ J := by linarith [literal_record_level_lt_two hα ht₀ J]
  have h := Real.rpow_le_rpow hδ (literal_native_record_tail_holder hα ht₀ hp hfinite J) hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le,← Real.rpow_mul hE] at h
  have ha : (1-p⁻¹)*p=p-1 := by field_simp
  rw [ha,inv_mul_cancel₀ hppos.ne',Real.rpow_one] at h
  unfold nativeTailPrice
  change (2-recordLevel hα ht₀ J)^p / (2*Real.exp (-recordTime hα ht₀ J/2))^(p-1) ≤ _
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p-1))).mpr
  simpa only [mul_comm] using h

theorem literal_fixed_p_native_energy_not_summable {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 < p) : ¬ Summable (energyTerm hα ht₀ p) := by
  intro hfinite
  have hprice := (literal_native_tail_price_tends_to_infinity hα ht₀ hp).comp
    (literal_record_time_tends_to_infinity hα ht₀)
  have hdiverge : Tendsto (tailEnergy hα ht₀ p) atTop atTop :=
    tendsto_atTop_mono (literal_native_record_tail_price hα ht₀ hp.le hfinite) hprice
  exact not_tendsto_nhds_of_tendsto_atTop hdiverge 0 (tendsto_sum_nat_add (energyTerm hα ht₀ p))

theorem literal_p_one_energy_has_sum {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    HasSum (energyTerm hα ht₀ 1) (2-recordLevel hα ht₀ 0) := by
  have he : energyTerm hα ht₀ 1 = recordHeight hα ht₀ := by
    funext j
    simp only [energyTerm,sub_self,Real.rpow_zero,Real.rpow_one,div_one]
  rw [he]
  simpa only [Nat.add_zero] using literal_record_height_tail_has_sum hα ht₀ 0

theorem literal_fixed_p_native_energy_eq_top {α t₀ p : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (hp : 1 < p) :
    (∑' j : ℕ, ENNReal.ofReal (energyTerm hα ht₀ p j)) = ⊤ := by
  by_contra htop
  have hsNN : Summable (fun j : ℕ ↦ (energyTerm hα ht₀ p j).toNNReal) :=
    ENNReal.tsum_coe_ne_top_iff_summable.mp (by simpa only [ENNReal.ofReal] using htop)
  have hsR := NNReal.summable_coe.mpr hsNN
  have he : (fun j : ℕ ↦ ((energyTerm hα ht₀ p j).toNNReal : ℝ)) = energyTerm hα ht₀ p := by
    funext j
    rw [Real.coe_toNNReal',max_eq_left (literal_energy_term_nonneg hα ht₀ p j)]
  rw [he] at hsR
  exact literal_fixed_p_native_energy_not_summable hα ht₀ hp hsR

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativeEnergy
