import FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve

/-!
# Immediate positive cell energy is stronger than actual record energy

The actual chronological record increment is bounded by positive work on its
literal cell. Raising that inequality to a fixed nonnegative real power and
retaining the exact width yields a sufficient positive-cell energy supplier.
The next consumer reaches the all-real prime sign with an explicit reserve.
This does not identify compressed cycle or panel energy with cell energy.

Human weakest-supplier direction: grwtsk contributors. Local actual-source
power comparison and consumer: OpenAI Codex. Real powers retain Mathlib origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.EnergySupplierHierarchy

open WeightedLpReserve RecordEndpoint NativeRecordConsumer OpenArithmeticSuppliers
open AccordionConsumer ArithmeticPrimitive
open scoped BigOperators
noncomputable section

/-- The positive cell penergy in this module, with the following exact parameterization.

def positiveCellPEnergy (N K : ℕ) (p : ℝ) : ℝ := ∑ j ∈ Finset.range K, (max
(cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0) ^ p * cellClock (N + j) (N + j + 1
: ℕ)
-/
def positiveCellPEnergy (N K : ℕ) (p : ℝ) : ℝ :=
  ∑ j ∈ Finset.range K,
    (max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0) ^ p *
      cellClock (N + j) (N + j + 1 : ℕ)

theorem density_power_payment {w a p : ℝ} (hw : 0 < w) (ha : 0 ≤ a) :
    (a * w) ^ p / w ^ (p - 1) = a ^ p * w := by
  rw [Real.mul_rpow ha hw.le, Real.rpow_sub hw, Real.rpow_one]
  have hwp : w ^ p ≠ 0 := (Real.rpow_pos_of_pos hw p).ne'
  field_simp

theorem actual_record_energy_le_positive_cell_energy {N : ℕ} (hN : 1 ≤ N)
    (K : ℕ) {p : ℝ} (hp : 0 ≤ p) : nativePEnergy N K p ≤ positiveCellPEnergy N K p := by
  apply Finset.sum_le_sum
  intro j _
  have hw : 0 < cellClock (N + j) (N + j + 1 : ℕ) := cellClock_pos (by omega)
  have hρ : 0 ≤ primeRecordIncrement N j := CausalRecords.recordIncrement_nonneg _ _
  have h := Real.rpow_le_rpow hρ (actual_record_increment_le_cell_debt hN j) hp
  have hdiv := div_le_div_of_nonneg_right h (Real.rpow_pos_of_pos hw (p - 1)).le
  simpa only [density_power_payment hw (le_max_right _ _)] using hdiv

theorem positive_cell_p_reserve_implies_eventual_sign {N : ℕ} {p E R : ℝ}
    (hN : 2 ≤ N) (hp : 1 ≤ p) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (henergy : ∀ K : ℕ, positiveCellPEnergy N K p ≤ E)
    (hreserve : (2 / Real.sqrt N) ^ (1 - p⁻¹) * E ^ p⁻¹ ≤ R) :
    OrdinaryPrimeEventualSignSupplier := by
  apply fixed_p_reserve_implies_eventual_sign hN hp hstart _ hreserve
  intro K
  exact (actual_record_energy_le_positive_cell_energy (by omega : 1 ≤ N) K
    (by linarith : 0 ≤ p)).trans (henergy K)

theorem pure_power_envelope_summable_iff (α p : ℝ) :
    Summable (fun n : ℕ => (n : ℝ) ^ (α * p - (3 / 2 : ℝ))) ↔ α * p < 1 / 2 := by
  rw [Real.summable_nat_rpow]
  constructor <;> intro h <;> linarith

end
end GRWTSK.RiemannHypothesis.Conversation.EnergySupplierHierarchy
