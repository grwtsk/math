# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RecordEndpoint.Variant8e5f99c4d6654691e3ed2911ef7fe15ca2a43abe271a8c2472346f115d92bb9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `023b97c3b73d80d5549454ccadce88b5987d2e3a` · SHA-256 `8e5f99c4d6654691e3ed2911ef7fe15ca2a43abe271a8c2472346f115d92bb9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeRecordConsumer
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer
import FormalResearch.RiemannHypothesis.Conversation.AnalyticSuppliers

/-!
# The p=1 regulator endpoint is exactly signed-prefix control

Batch 12's endpoint is formalized on the actual ordinary-prime primitive.
The native p-energy uses the real exponent and exact cell widths. At p=1
it is the finite running-record height, so bounded prefixes and bounded
record height are equivalent. No p>1 finiteness or decay is inferred.

Human direction: grwtsk contributors. Local endpoint and consumer proofs:
OpenAI Codex. The prime estimate and analytic RH return remain separate.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RecordEndpoint

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer AccordionConsumer
open AnalyticSuppliers
open scoped BigOperators
noncomputable section

/-- The native penergy in this module, with the following exact parameterization.

def nativePEnergy (N K : ℕ) (p : ℝ) : ℝ := ∑ j ∈ Finset.range K, (primeRecordIncrement N j) ^
p / (cellClock (N + j) (N + j + 1 : ℕ)) ^ (p - 1)
-/
def nativePEnergy (N K : ℕ) (p : ℝ) : ℝ :=
  ∑ j ∈ Finset.range K, (primeRecordIncrement N j) ^ p /
    (cellClock (N + j) (N + j + 1 : ℕ)) ^ (p - 1)

/-- This is an open real-p supplier on the actual sequence, not an axiom. -/
def NativePEnergySupplier (p : ℝ) : Prop :=
  ∃ N : ℕ, 2 ≤ N ∧ ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ, nativePEnergy N K p ≤ E

theorem nativePEnergy_one (N K : ℕ) : nativePEnergy N K 1 = primeRecordLevel N K := by
  unfold nativePEnergy
  simp only [Real.rpow_one, sub_self, Real.rpow_zero, div_one]
  exact record_sum_eq_level N K

theorem level_le_of_all_prefixes {N : ℕ} {E : ℝ} (hE : 0 ≤ E)
    (hprefix : ∀ K : ℕ, ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ E)
    (K : ℕ) : primeRecordLevel N K ≤ E := by
  induction K with
  | zero => exact hE
  | succ K ih =>
    rw [primeRecordLevel]
    apply max_le ih
    simpa only [Nat.add_assoc] using hprefix (K + 1)

/-- The endpoint captures causal safety rather than separate positive cycle variation. -/
theorem one_energy_bound_iff_prefix_bound {N : ℕ} {E : ℝ} (hE : 0 ≤ E) :
    (∀ K : ℕ, nativePEnergy N K 1 ≤ E) ↔
      (∀ K : ℕ, ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ E) := by
  simp_rw [nativePEnergy_one]
  constructor
  · intro h K
    exact (actual_prefix_le_record N K).trans (h K)
  · exact fun h K => level_le_of_all_prefixes hE h K

theorem one_energy_reserve_implies_eventualSign {N : ℕ} {E R : ℝ} (hN : 2 ≤ N)
    (hE : 0 ≤ E) (hstart : ordinaryPrimePrimitive N ≤ -R) (hreserve : E ≤ R)
    (henergy : ∀ K : ℕ, nativePEnergy N K 1 ≤ E) : OrdinaryPrimeEventualSignSupplier := by
  have hprefix := (one_energy_bound_iff_prefix_bound hE).mp henergy
  apply integer_sign_implies_all_real hN
  intro n hn
  obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
  have h := hprefix K
  linarith

theorem rh_of_one_energy_reserve_and_landauReturn {N : ℕ} {E R : ℝ} (hN : 2 ≤ N)
    (hE : 0 ≤ E) (hstart : ordinaryPrimePrimitive N ≤ -R) (hreserve : E ≤ R)
    (henergy : ∀ K : ℕ, nativePEnergy N K 1 ≤ E)
    (hreturn : OrdinaryPrimeSignLandauReturn) : RiemannHypothesis :=
  rh_of_primeSign_and_landauReturn
    (one_energy_reserve_implies_eventualSign hN hE hstart hreserve henergy) hreturn

end
end GRWTSK.RiemannHypothesis.Conversation.RecordEndpoint
```
