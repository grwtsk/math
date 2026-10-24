# Complete source: GRWTSK.Analysis.WeightedLpReserve.Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c65e6ca79cb68d6336beccc6b0f111fce983cd4c` · SHA-256 `f4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RecordEndpoint
import Mathlib.Analysis.MeanInequalities

/-!
# Fixed-p record energy on the unchanged native clock

Batches 06 and 12 retain every fixed real p>1 and the exact weighted payment.
The weighted Holder inequality is instantiated on nonnegative actual prime
record increments and positive inverse-root cell widths. A supplied all-horizon
energy bound with its explicit reserve protects every future real source point.
The energy estimate itself and the analytic RH return are separate premises.

Human p-interpolation direction: grwtsk contributors. Local adapters and consumer:
OpenAI Codex. Holder and real powers retain their Mathlib source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.WeightedLpReserve

open RecordEndpoint NativeRecordConsumer OpenArithmeticSuppliers ArithmeticPrimitive
open AccordionConsumer
open scoped BigOperators
noncomputable section

theorem weighted_power_payment {w ρ p : ℝ} (hw : 0 < w) (hρ : 0 ≤ ρ) :
    w * (ρ / w) ^ p = ρ ^ p / w ^ (p - 1) := by
  rw [Real.div_rpow hρ hw.le, Real.rpow_sub hw, Real.rpow_one]
  have hwp : w ^ p ≠ 0 := (Real.rpow_pos_of_pos hw p).ne'
  field_simp

theorem finite_weighted_holder {ι : Type*} (s : Finset ι) (w ρ : ι → ℝ)
    {p : ℝ} (hp : 1 ≤ p) (hw : ∀ i, 0 < w i) (hρ : ∀ i, 0 ≤ ρ i) :
    (∑ i ∈ s, ρ i) ≤ (∑ i ∈ s, w i) ^ (1 - p⁻¹) *
      (∑ i ∈ s, (ρ i) ^ p / (w i) ^ (p - 1)) ^ p⁻¹ := by
  have h := Real.inner_le_weight_mul_Lp_of_nonneg s hp w (fun i => ρ i / w i)
    (fun i => (hw i).le) (fun i => div_nonneg (hρ i) (hw i).le)
  have hleft : (∑ i ∈ s, w i * (ρ i / w i)) = ∑ i ∈ s, ρ i := by
    apply Finset.sum_congr rfl
    intro i _
    field_simp [(hw i).ne']
  have hright : (∑ i ∈ s, w i * (ρ i / w i) ^ p) =
      ∑ i ∈ s, (ρ i) ^ p / (w i) ^ (p - 1) := by
    apply Finset.sum_congr rfl
    intro i _
    exact weighted_power_payment (hw i) (hρ i)
  rwa [hleft, hright] at h

theorem native_p_energy_nonneg {N : ℕ} (hN : 1 ≤ N) (K : ℕ) (p : ℝ) :
    0 ≤ nativePEnergy N K p := by
  apply Finset.sum_nonneg
  intro j _
  exact div_nonneg
    (Real.rpow_nonneg (CausalRecords.recordIncrement_nonneg _ _) p)
    (Real.rpow_nonneg (cellClock_pos (by omega : 1 ≤ N + j)).le (p - 1))

theorem actual_record_holder {N : ℕ} (hN : 1 ≤ N) (K : ℕ)
    {p : ℝ} (hp : 1 ≤ p) :
    primeRecordLevel N K ≤ (2 / Real.sqrt N) ^ (1 - p⁻¹) *
      (nativePEnergy N K p) ^ p⁻¹ := by
  have hw (j : ℕ) : 0 < cellClock (N + j) (N + j + 1 : ℕ) := cellClock_pos (by omega)
  have hρ (j : ℕ) : 0 ≤ primeRecordIncrement N j := CausalRecords.recordIncrement_nonneg _ _
  have h := finite_weighted_holder (Finset.range K)
    (fun j => cellClock (N + j) (N + j + 1 : ℕ)) (primeRecordIncrement N) hp hw hρ
  rw [record_sum_eq_level] at h
  have hsum0 : 0 ≤ ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) :=
    Finset.sum_nonneg (fun j _ => (hw j).le)
  have hwidth : (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤
      2 / Real.sqrt N := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  have hexponent : 0 ≤ 1 - p⁻¹ := by
    have hpinv : p⁻¹ ≤ 1 := inv_le_one_of_one_le₀ hp
    linarith
  change primeRecordLevel N K ≤
    (∑ i ∈ Finset.range K, cellClock (N + i) (N + i + 1 : ℕ)) ^ (1 - p⁻¹) *
      (nativePEnergy N K p) ^ p⁻¹ at h
  exact h.trans (mul_le_mul_of_nonneg_right
    (Real.rpow_le_rpow hsum0 hwidth hexponent)
    (Real.rpow_nonneg (native_p_energy_nonneg hN K p) p⁻¹))

theorem fixed_p_reserve_implies_eventual_sign {N : ℕ} {p E R : ℝ}
    (hN : 2 ≤ N) (hp : 1 ≤ p) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (henergy : ∀ K : ℕ, nativePEnergy N K p ≤ E)
    (hreserve : (2 / Real.sqrt N) ^ (1 - p⁻¹) * E ^ p⁻¹ ≤ R) :
    OrdinaryPrimeEventualSignSupplier := by
  have hint (K : ℕ) : ordinaryPrimePrimitive (N + K : ℕ) ≤ 0 := by
    have h := actual_record_holder (by omega : 1 ≤ N) K hp
    have hE0 := native_p_energy_nonneg (by omega : 1 ≤ N) K p
    have hpow := Real.rpow_le_rpow hE0 (henergy K) (by positivity : 0 ≤ p⁻¹)
    have hbound := h.trans (mul_le_mul_of_nonneg_left hpow
      (Real.rpow_nonneg (by positivity : 0 ≤ (2 : ℝ) / Real.sqrt N) (1 - p⁻¹)))
    have hprefix := actual_prefix_le_record N K
    linarith
  apply integer_sign_implies_all_real hN
  intro n hn
  obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
  exact hint K

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedLpReserve
```
