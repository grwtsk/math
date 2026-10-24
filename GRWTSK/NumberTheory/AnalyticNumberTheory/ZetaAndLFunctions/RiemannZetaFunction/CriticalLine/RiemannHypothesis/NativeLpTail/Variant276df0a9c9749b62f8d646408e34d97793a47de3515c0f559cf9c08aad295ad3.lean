import FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve
import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound
import FormalResearch.RiemannHypothesis.Conversation.NativeRecordTailEnergy

/-!
# Every fixed real p at least one has its actual native record tail bound

Batch 12's tail barrier retains the fixed real exponent and every integer
native cell. Summable p-energy implies summable actual record height. The tail
Holder estimate then forces the remaining height times (N+J)^((1-1/p)/2) to
tend to zero. At p=2 this recovers the quarter-root barrier; at p=1 the scale
factor is one. Summable actual p-energy is an explicit arithmetic premise.

Human fixed-p and tail-rate direction: grwtsk contributors. Local infinite
actual-source adapter and Lean proof: OpenAI Codex. Mathlib real powers and
sum limits retain their upstream identity; no energy-finiteness instance is
supplied and no RH conclusion follows without the separate reserve and return.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeLpTail

open WeightedLpReserve RecordEndpoint RecordSummability NativeRecordConsumer
open OpenArithmeticSuppliers ArithmeticPrimitive
open Filter
open scoped BigOperators Topology
noncomputable section

/-- The energy term in this module, with the following exact parameterization.

def energyTerm (N : ℕ) (p : ℝ) (j : ℕ) : ℝ := (primeRecordIncrement N j) ^ p / (cellClock (N +
j) (N + j + 1 : ℕ)) ^ (p - 1)
-/
def energyTerm (N : ℕ) (p : ℝ) (j : ℕ) : ℝ :=
  (primeRecordIncrement N j) ^ p / (cellClock (N + j) (N + j + 1 : ℕ)) ^ (p - 1)
/-- The tail energy in this module, with the following exact parameterization.

def tailEnergy (N : ℕ) (p : ℝ) (J : ℕ) : ℝ := ∑' j, energyTerm N p (j + J)
-/
def tailEnergy (N : ℕ) (p : ℝ) (J : ℕ) : ℝ := ∑' j, energyTerm N p (j + J)

theorem energy_term_nonneg {N : ℕ} (hN : 1 ≤ N) (p : ℝ) (j : ℕ) :
    0 ≤ energyTerm N p j :=
  div_nonneg (Real.rpow_nonneg (CausalRecords.recordIncrement_nonneg _ _) p)
    (Real.rpow_nonneg (cellClock_pos (by omega : 1 ≤ N + j)).le (p - 1))

theorem finite_energy_implies_record_summable {N : ℕ} {p : ℝ} (hN : 1 ≤ N)
    (hp : 1 ≤ p) (hfinite : Summable (energyTerm N p)) :
    Summable (primeRecordIncrement N) := by
  apply (record_summable_iff_levels_bounded N).mpr
  let E := ∑' j, energyTerm N p j
  have hE : 0 ≤ E := tsum_nonneg (energy_term_nonneg hN p)
  have hW : 0 ≤ (2 : ℝ) / Real.sqrt N := by positivity
  refine ⟨(2 / Real.sqrt N) ^ (1 - p⁻¹) * E ^ p⁻¹,
    mul_nonneg (Real.rpow_nonneg hW _) (Real.rpow_nonneg hE _), ?_⟩
  intro K
  have he : nativePEnergy N K p ≤ E :=
    hfinite.sum_le_tsum (Finset.range K) (fun j _ => energy_term_nonneg hN p j)
  exact (actual_record_holder hN K hp).trans (mul_le_mul_of_nonneg_left
    (Real.rpow_le_rpow (native_p_energy_nonneg hN K p) he (by positivity : 0 ≤ p⁻¹))
    (Real.rpow_nonneg hW _))

theorem actual_tail_holder {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) (J : ℕ) :
    NativeRecordTailEnergy.remainingRecordHeight N J ≤
      (2 / Real.sqrt (N + J : ℕ)) ^ (1 - p⁻¹) * (tailEnergy N p J) ^ p⁻¹ := by
  have hr := finite_energy_implies_record_summable hN hp hfinite
  have hrJ : Summable (fun j => primeRecordIncrement N (j + J)) := (summable_nat_add_iff J).mpr hr
  have heJ : Summable (fun j => energyTerm N p (j + J)) := (summable_nat_add_iff J).mpr hfinite
  have hexp : 0 ≤ 1 - p⁻¹ := by linarith [inv_le_one_of_one_le₀ hp]
  have hbound (K : ℕ) : (∑ j ∈ Finset.range K, primeRecordIncrement N (j + J)) ≤
      (2 / Real.sqrt (N + J : ℕ)) ^ (1 - p⁻¹) *
        (∑ j ∈ Finset.range K, energyTerm N p (j + J)) ^ p⁻¹ := by
    let w : ℕ → ℝ := fun j => cellClock (N + J + j) (N + J + j + 1 : ℕ)
    let ρ : ℕ → ℝ := fun j => primeRecordIncrement N (j + J)
    have hw (j : ℕ) : 0 < w j := cellClock_pos (by omega)
    have hρ (j : ℕ) : 0 ≤ ρ j := CausalRecords.recordIncrement_nonneg _ _
    have h := finite_weighted_holder (Finset.range K) w ρ hp hw hρ
    have hterms : (∑ j ∈ Finset.range K, (ρ j) ^ p / (w j) ^ (p - 1)) =
        ∑ j ∈ Finset.range K, energyTerm N p (j + J) := by
      apply Finset.sum_congr rfl
      intro j _
      simp only [ρ, w, energyTerm, Nat.add_comm j J, Nat.add_assoc]
    rw [hterms] at h
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt (N + J : ℕ) := by
      change (∑ j ∈ Finset.range K, cellClock (N + J + j) (N + J + j + 1 : ℕ)) ≤ _
      rw [native_width_telescope]
      have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + J + K : ℕ) := by positivity
      rw [show (2 : ℝ) / Real.sqrt (N + J : ℕ) = 2 * (1 / Real.sqrt (N + J : ℕ)) by ring]
      linarith
    exact h.trans (mul_le_mul_of_nonneg_right
      (Real.rpow_le_rpow (Finset.sum_nonneg (fun j _ => (hw j).le)) hwidth hexp)
      (Real.rpow_nonneg (Finset.sum_nonneg (fun j _ => energy_term_nonneg hN p (j + J))) _))
  exact le_of_tendsto_of_tendsto' hrJ.hasSum.tendsto_sum_nat
    (tendsto_const_nhds.mul (heJ.hasSum.tendsto_sum_nat.rpow_const (Or.inr (by positivity)))) hbound

theorem actual_tail_energy_lower_bound {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) (J : ℕ) :
    (NativeRecordTailEnergy.remainingRecordHeight N J) ^ p /
      (2 / Real.sqrt (N + J : ℕ)) ^ (p - 1) ≤ tailEnergy N p J := by
  have hppos : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have hW : 0 < (2 : ℝ) / Real.sqrt (N + J : ℕ) := by
    apply div_pos (by norm_num)
    apply Real.sqrt_pos.mpr
    exact_mod_cast (by omega : 0 < N + J)
  have hE : 0 ≤ tailEnergy N p J := tsum_nonneg (fun j => energy_term_nonneg hN p (j + J))
  have hρ : 0 ≤ NativeRecordTailEnergy.remainingRecordHeight N J :=
    tsum_nonneg (fun j => CausalRecords.recordIncrement_nonneg _ _)
  have h := Real.rpow_le_rpow hρ (actual_tail_holder hN hp hfinite J) hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le, ← Real.rpow_mul hE] at h
  have ha : (1 - p⁻¹) * p = p - 1 := by field_simp
  rw [ha, inv_mul_cancel₀ hppos.ne', Real.rpow_one] at h
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p - 1))).mpr
  simpa only [mul_comm] using h

theorem finite_energy_implies_all_real_prefixes_bounded {N : ℕ} {p : ℝ}
    (hN : 1 ≤ N) (hp : 1 ≤ p) (hfinite : Summable (energyTerm N p)) :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ x : ℝ, (N : ℝ) ≤ x →
      ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ E :=
  (NativeCellBound.record_summable_iff_all_real_prefixes_bounded hN).mp
    (finite_energy_implies_record_summable hN hp hfinite)

theorem native_scale_cancels {x : ℝ} (hx : 0 < x) (a : ℝ) :
    ((2 / Real.sqrt x) ^ a) * x ^ (a / 2) = (2 : ℝ) ^ a := by
  rw [Real.div_rpow (by norm_num : (0 : ℝ) ≤ 2) (Real.sqrt_nonneg x), Real.sqrt_eq_rpow,
    ← Real.rpow_mul hx.le]
  rw [show (1 / 2 : ℝ) * a = a / 2 by ring]
  have hpower : x ^ (a / 2) ≠ 0 := (Real.rpow_pos_of_pos hx _).ne'
  field_simp

theorem fixed_p_native_deficit_decay {N : ℕ} {p : ℝ} (hN : 1 ≤ N) (hp : 1 ≤ p)
    (hfinite : Summable (energyTerm N p)) :
    Tendsto (fun J => NativeRecordTailEnergy.remainingRecordHeight N J *
      (N + J : ℕ) ^ ((1 - p⁻¹) / 2)) atTop (𝓝 0) := by
  have htail : Tendsto (tailEnergy N p) atTop (𝓝 0) := tendsto_sum_nat_add (energyTerm N p)
  have hpinv : 0 < p⁻¹ := inv_pos.mpr (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp)
  have hupper : Tendsto (fun J => (2 : ℝ) ^ (1 - p⁻¹) * (tailEnergy N p J) ^ p⁻¹)
      atTop (𝓝 0) := by
    simpa only [mul_zero] using tendsto_const_nhds.mul (htail.rpow_const_nhds_zero hpinv)
  apply squeeze_zero (fun J => mul_nonneg
    (tsum_nonneg (fun j => CausalRecords.recordIncrement_nonneg _ _))
    (Real.rpow_nonneg (Nat.cast_nonneg _) _)) _ hupper
  intro J
  change NativeRecordTailEnergy.remainingRecordHeight N J *
    (N + J : ℕ) ^ ((1 - p⁻¹) / 2) ≤ _
  have h := mul_le_mul_of_nonneg_right (actual_tail_holder hN hp hfinite J)
    (Real.rpow_nonneg (Nat.cast_nonneg (N + J)) ((1 - p⁻¹) / 2))
  have hx : (0 : ℝ) < (N + J : ℕ) := by exact_mod_cast (by omega : 0 < N + J)
  calc
    _ ≤ _ := h
    _ = _ := by
      rw [mul_assoc, mul_comm ((tailEnergy N p J) ^ p⁻¹), ← mul_assoc, native_scale_cancels hx]

end
end GRWTSK.RiemannHypothesis.Conversation.NativeLpTail
