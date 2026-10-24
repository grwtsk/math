# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContactRecordConsumer.Variant54743907eae718a9ab9558ee64928e62a74f355208059f1fdfc43b76624ec27c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34b51a376014f4bd02a597be241558bf027a2207` · SHA-256 `54743907eae718a9ab9558ee64928e62a74f355208059f1fdfc43b76624ec27c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer
import FormalResearch.RiemannHypothesis.Conversation.AnalyticSuppliers

/-!
# Actual record-height contact payment and its affine reserve consumer

Batch 11's finite contact payment is smaller than payment on every positive
cell. The actual ordinary-prime record increments below retain their native
cell clock and the theta-storage coefficient. Their record energy is bounded
by storage times new record height. The finite contact-length identity does
not assert a separately constructed measurable ladder-contact set.

An affine bound on these actual payments feeds the all-real sign consumer and
then the explicitly hypothesized Landau return. No affine arithmetic bound,
entrance certificate or analytic return is supplied.

Human direction: grwtsk contributors. Local adapter and Lean implementation:
OpenAI Codex. Dependencies retain their own formal-source identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ContactRecordConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer
open scoped BigOperators
noncomputable section

/-- The contact energy in this module, with the following exact parameterization.

def contactEnergy (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, cumulativeDiscrepancy
ordinaryPrimeCoefficient (N + j) * primeRecordIncrement N j
-/
def contactEnergy (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) * primeRecordIncrement N j

theorem positive_record_forces_positive_slope {ρ b w : ℝ}
    (hρ : 0 < ρ) (hwork : ρ ≤ max b 0 * w) : 0 < b := by
  by_contra hb
  rw [max_eq_right (le_of_not_gt hb), zero_mul] at hwork
  linarith

theorem contact_cell_payment {ρ b w : ℝ} (hw : 0 < w) (hρ : 0 ≤ ρ)
    (hwork : ρ ≤ max b 0 * w) : ρ ^ 2 / w ≤ b * ρ := by
  rcases eq_or_lt_of_le hρ with hzero | hpos
  · rw [← hzero]
    simp
  · have hb := positive_record_forces_positive_slope hpos hwork
    rw [max_eq_left hb.le] at hwork
    apply (div_le_iff₀ hw).mpr
    nlinarith [mul_le_mul_of_nonneg_right hwork hρ]

/-- The contact length in this module, with the following exact parameterization.

def contactLength (ρ b : ℝ) : ℝ := if ρ = 0 then 0 else ρ / b
-/
def contactLength (ρ b : ℝ) : ℝ := if ρ = 0 then 0 else ρ / b

theorem contact_length_bounds {ρ b w : ℝ} (hw : 0 < w) (hρ : 0 ≤ ρ)
    (hwork : ρ ≤ max b 0 * w) : 0 ≤ contactLength ρ b ∧ contactLength ρ b ≤ w := by
  by_cases hz : ρ = 0
  · simp [contactLength, hz, hw.le]
  · have hpos : 0 < ρ := lt_of_le_of_ne hρ (Ne.symm hz)
    have hb := positive_record_forces_positive_slope hpos hwork
    rw [max_eq_left hb.le] at hwork
    simp only [contactLength, hz, if_false]
    constructor
    · exact div_nonneg hρ hb.le
    · exact (div_le_iff₀ hb).mpr (by nlinarith)

theorem contact_length_energy {ρ b w : ℝ} (_hw : 0 < w) (hρ : 0 ≤ ρ)
    (hwork : ρ ≤ max b 0 * w) : b ^ 2 * contactLength ρ b = b * ρ := by
  by_cases hz : ρ = 0
  · simp [contactLength, hz]
  · have hb := positive_record_forces_positive_slope (lt_of_le_of_ne hρ (Ne.symm hz)) hwork
    simp only [contactLength, hz, if_false]
    field_simp

theorem actual_record_increment_nonneg (N j : ℕ) : 0 ≤ primeRecordIncrement N j := by
  unfold primeRecordIncrement CausalRecords.recordIncrement
  exact sub_nonneg.mpr (le_max_left _ _)

theorem actual_record_energy_le_contact {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    recordEnergy N K ≤ contactEnergy N K := by
  apply Finset.sum_le_sum
  intro j _hj
  exact contact_cell_payment (cellClock_pos (by omega))
    (actual_record_increment_nonneg N j)
    (AccordionConsumer.actual_record_increment_le_cell_debt hN j)

theorem actual_contact_energy_nonneg {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    0 ≤ contactEnergy N K := by
  have hE : 0 ≤ recordEnergy N K := by
    apply Finset.sum_nonneg
    intro j _hj
    exact div_nonneg (sq_nonneg _) (cellClock_pos (by omega)).le
  exact hE.trans (actual_record_energy_le_contact hN K)

theorem actual_record_square_le_contact {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    (primeRecordLevel N K) ^ 2 ≤ (2 / Real.sqrt N) * contactEnergy N K := by
  exact (actual_record_square_le (K := K) hN).trans
    (mul_le_mul_of_nonneg_left (actual_record_energy_le_contact hN K) (by positivity))

/-- A fixed all-horizon affine contact budget is an open arithmetic supplier. -/
def AffineContactReserveSupplier : Prop :=
  ∃ N : ℕ, 2 ≤ N ∧ ∃ a e R : ℝ, 0 ≤ a ∧ 0 ≤ e ∧ 0 < R ∧
    ordinaryPrimePrimitive N ≤ -R ∧
    (∀ K : ℕ, contactEnergy N K ≤ a * primeRecordLevel N K + e) ∧
    (2 / Real.sqrt N) * (a * R + e) ≤ R ^ 2

theorem affine_contact_reserve_implies_eventualSign (h : AffineContactReserveSupplier) :
    OrdinaryPrimeEventualSignSupplier := by
  obtain ⟨N, hN, a, e, R, ha, he, hR, hstart, hbudget, hreserve⟩ := h
  apply AccordionConsumer.integer_sign_implies_all_real hN
  intro n hn
  obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
  have hL := CausalRecords.affine_contact_reserve
    (primeRecordLevel_nonneg N K) (by positivity : 0 < (2 : ℝ) / Real.sqrt N)
    ha he hR (actual_record_square_le_contact (by omega) K) (hbudget K) hreserve
  have hp := actual_prefix_le_record N K
  linarith

theorem rh_of_affine_contact_reserve_and_landauReturn (h : AffineContactReserveSupplier)
    (hreturn : AnalyticSuppliers.OrdinaryPrimeSignLandauReturn) : RiemannHypothesis :=
  hreturn (affine_contact_reserve_implies_eventualSign h)

end
end GRWTSK.RiemannHypothesis.Conversation.ContactRecordConsumer
```
