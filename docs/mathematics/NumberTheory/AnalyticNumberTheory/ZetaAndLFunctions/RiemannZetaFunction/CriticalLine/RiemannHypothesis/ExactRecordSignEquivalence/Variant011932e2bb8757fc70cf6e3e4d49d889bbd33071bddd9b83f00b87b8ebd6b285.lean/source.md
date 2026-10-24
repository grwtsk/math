# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactRecordSignEquivalence.Variant011932e2bb8757fc70cf6e3e4d49d889bbd33071bddd9b83f00b87b8ebd6b285

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d727bb7be1499b535cbd223f9d6aa9532c75eb13` · SHA-256 `011932e2bb8757fc70cf6e3e4d49d889bbd33071bddd9b83f00b87b8ebd6b285`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RecordEndpoint

/-!
# The exact p=1 reserve is equivalent to the actual all-real sign target

Batch 12's weakest record supplier is not independent arithmetic evidence.
With the literal entrance value as its reserve, it is exactly the unchanged
eventual prime-primitive sign target. The reverse direction selects an integer
entrance after the supplied real threshold and retains every future endpoint.
The forward direction uses the checked native interpolation consumer.

Human endpoint and quantifier direction: grwtsk contributors. Local exact-source
equivalence and Lean proof: OpenAI Codex. No instance of either side is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ExactRecordSignEquivalence

open OpenArithmeticSuppliers RecordEndpoint
noncomputable section

/-- The exact one record reserve in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def ExactOneRecordReserve : Prop := ∃ N : ℕ, 2 ≤ N ∧ ordinaryPrimePrimitive N ≤ 0 ∧ ∀ K : ℕ,
nativePEnergy N K 1 ≤ -ordinaryPrimePrimitive N
-/
def ExactOneRecordReserve : Prop :=
  ∃ N : ℕ, 2 ≤ N ∧ ordinaryPrimePrimitive N ≤ 0 ∧
    ∀ K : ℕ, nativePEnergy N K 1 ≤ -ordinaryPrimePrimitive N

theorem exact_one_reserve_iff_eventual_sign :
    ExactOneRecordReserve ↔ OrdinaryPrimeEventualSignSupplier := by
  constructor
  · rintro ⟨N, hN, hstart, hbound⟩
    have hE : 0 ≤ -ordinaryPrimePrimitive N := by linarith
    apply one_energy_reserve_implies_eventualSign (R := -ordinaryPrimePrimitive N)
      hN hE _ le_rfl hbound
    linarith
  · rintro ⟨R, hR, hpath⟩
    obtain ⟨N, hRN⟩ := exists_nat_gt R
    have hN : 2 ≤ N := by exact_mod_cast (hR.trans hRN.le)
    have hstart := hpath N hRN.le
    have hE : 0 ≤ -ordinaryPrimePrimitive N := by linarith
    refine ⟨N, hN, hstart, (one_energy_bound_iff_prefix_bound hE).mpr ?_⟩
    intro K
    have hNK : R ≤ (N + K : ℕ) := by
      have hcast : (N : ℝ) ≤ (N + K : ℕ) := by exact_mod_cast (Nat.le_add_right N K)
      exact hRN.le.trans hcast
    have h := hpath (N + K : ℕ) hNK
    linarith

theorem exact_reserve_and_sign_have_same_instances :
    Nonempty ExactOneRecordReserve ↔ Nonempty OrdinaryPrimeEventualSignSupplier := by
  simp only [nonempty_prop]
  exact exact_one_reserve_iff_eventual_sign

end
end GRWTSK.RiemannHypothesis.Conversation.ExactRecordSignEquivalence
```
