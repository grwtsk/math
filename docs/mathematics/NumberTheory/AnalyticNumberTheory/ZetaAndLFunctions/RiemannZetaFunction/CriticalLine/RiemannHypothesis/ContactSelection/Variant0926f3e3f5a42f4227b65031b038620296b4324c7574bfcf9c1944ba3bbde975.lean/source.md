# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContactSelection.Variant0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e33b3857550327b8c31b331115200ab9e68512e4` · SHA-256 `0926f3e3f5a42f4227b65031b038620296b4324c7574bfcf9c1944ba3bbde975`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingSelection

/-!
# Record endpoints are exactly backward-ramp contact points

Batch 10's selector characterization is reconstructed on every actual integer
endpoint. Contact is equivalent to nonnegative work on every backward native
ramp. The least forbidden rise consumer selects a genuine contact endpoint
with a strictly positive suffix at every preceding endpoint.

This finite theorem does not construct a measurable real-time contact set or
estimate its energy. Human framework: grwtsk contributors. Local actual-source
selector proof and Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ContactSelection

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer FirstCrossingGreen
open scoped BigOperators
noncomputable section

theorem actual_record_level_le_iff (N K : ℕ) (R : ℝ) :
    primeRecordLevel N K ≤ R ↔ 0 ≤ R ∧
      ∀ j : ℕ, j ≤ K → ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R := by
  induction K with
  | zero => simp [primeRecordLevel]
  | succ K ih =>
      rw [primeRecordLevel, max_le_iff, ih]
      constructor
      · rintro ⟨⟨hR, hprior⟩, hnext⟩
        refine ⟨hR, ?_⟩
        intro j hj
        rcases lt_or_eq_of_le hj with hjlt | hjeq
        · exact hprior j (by omega)
        · subst j
          simpa only [Nat.add_assoc, Nat.succ_eq_add_one] using hnext
      · rintro ⟨hR, hprior⟩
        refine ⟨⟨hR, fun j hj => hprior j (by omega)⟩, ?_⟩
        simpa only [Nat.add_assoc, Nat.succ_eq_add_one] using hprior (K + 1) (by omega)

theorem actual_contact_iff_suffixes_nonnegative (N K : ℕ) :
    primeRecordLevel N K = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ↔
      ∀ j : ℕ, j ≤ K → 0 ≤ actualSuffix N K j := by
  constructor
  · intro hcontact j hj
    have hbound := (actual_record_level_le_iff N K (primeRecordLevel N K)).mp le_rfl
    have hprior := hbound.2 j hj
    rw [hcontact] at hprior
    unfold actualSuffix
    linarith
  · intro hback
    apply le_antisymm
    · apply (actual_record_level_le_iff N K _).mpr
      refine ⟨by simpa only [actualSuffix, Nat.add_zero] using hback 0 (Nat.zero_le K), ?_⟩
      intro j hj
      have h := hback j hj
      unfold actualSuffix at h
      linarith
    · exact actual_prefix_le_record N K

/-- The backward native ramp in this module, with the following exact parameterization.

def backwardNativeRamp (N j K : ℕ) : ℝ := ∑ r ∈ Finset.range (K - j), cumulativeDiscrepancy
ordinaryPrimeCoefficient (N + j + r) * cellClock (N + j + r) (N + j + r + 1 : ℕ)
-/
def backwardNativeRamp (N j K : ℕ) : ℝ := ∑ r ∈ Finset.range (K - j),
  cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j + r) *
    cellClock (N + j + r) (N + j + r + 1 : ℕ)

theorem backward_native_ramp_eq_suffix {N : ℕ} (hN : 1 ≤ N) {j K : ℕ} (hj : j ≤ K) :
    backwardNativeRamp N j K = actualSuffix N K j := by
  have h := AccordionConsumer.actual_signed_work_telescope (N := N + j) (by omega) (K - j)
  rw [show N + j + (K - j) = N + K by omega] at h
  exact h.symm

theorem actual_contact_iff_backward_native_ramps {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    primeRecordLevel N K = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ↔
      ∀ j : ℕ, j ≤ K → 0 ≤ backwardNativeRamp N j K := by
  rw [actual_contact_iff_suffixes_nonnegative]
  constructor <;> intro h j hj
  · simpa only [backward_native_ramp_eq_suffix hN hj] using h j hj
  · simpa only [backward_native_ramp_eq_suffix hN hj] using h j hj

theorem least_forbidden_rise_is_contact (N : ℕ) {R : ℝ} (hR : 0 ≤ R)
    (hex : ∃ K : ℕ, R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) :
    ∃ K : ℕ, 0 < K ∧
      primeRecordLevel N K = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ∧
      R < actualSuffix N K 0 ∧ (∀ j : ℕ, j < K → 0 < actualSuffix N K j) := by
  obtain ⟨K, hK, hRfinal, hpositive, hterminal⟩ :=
    FirstCrossingSelection.least_forbidden_rise_selects_positive_suffix N hR hex
  refine ⟨K, hK, (actual_contact_iff_suffixes_nonnegative N K).mpr ?_, hRfinal, hpositive⟩
  intro j hj
  rcases lt_or_eq_of_le hj with hjlt | hjeq
  · exact (hpositive j hjlt).le
  · subst j
    rw [hterminal]

end
end GRWTSK.RiemannHypothesis.Conversation.ContactSelection
```
