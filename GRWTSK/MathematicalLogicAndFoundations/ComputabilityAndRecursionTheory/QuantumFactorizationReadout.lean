/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import OAI.Computability.QuantumFactoring.Basic
import GRWTSK.NumberTheory.CompleteIntegerFactorization

/-!
# Prime-power certificates from the exact quantum readout

The imported definitions are OpenAI #279, pinned at
`7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The probability measure, wire
order and padding are those of the supplied circuit. Grouping the classical
readout preserves all repeated entries. See the adjacent provenance record.
-/

namespace GRWTSK.IntegerFactorization.QuantumReadout

open OAI.ExactQuantumFactoring

/-- Number of slots, ordering and the whole zero suffix all belong to the event. -/
def paddedAnswer (n : ℕ) (slots : List ℕ) (answer : List (ℕ × ℕ)) : Prop :=
  (expand answer).length ≤ n ∧
    slots = expand answer ++ List.replicate (n - (expand answer).length) 0

theorem correctEncoding_iff {N n : ℕ} (hN : 2 ≤ N) (slots : List ℕ) :
    CorrectEncoding N n slots ↔
      ∃ answer, CompleteFactorization N answer ∧ paddedAnswer n slots answer := by
  constructor
  · rintro ⟨ps, hp, hs, hprod, hlen, he⟩
    have hps := (Nat.primeFactorsList_unique hprod hp).eq_of_pairwise' hs
      (Nat.primeFactorsList_sorted N).pairwise
    refine ⟨canonical N, canonical_complete hN, ?_⟩
    simpa only [paddedAnswer, expand_canonical hN, hps] using And.intro hlen he
  · rintro ⟨answer, ha, hlen, he⟩
    rw [ha.expand_eq] at hlen he
    exact ⟨N.primeFactorsList, fun _ h => Nat.prime_of_mem_primeFactorsList h,
      (Nat.primeFactorsList_sorted N).pairwise, Nat.prod_primeFactorsList (by omega), hlen, he⟩

/-- Observable classical postprocessing of measured slots. Its correctness
claim below requires the upstream acceptance event, including correct padding. -/
def decodeSlots (slots : List ℕ) : List (ℕ × ℕ) :=
  (compressRuns (slots.filter (fun p => p != 0))).1

theorem decodeSlots_of_correct {N n : ℕ} {slots : List ℕ} (hN : 2 ≤ N)
    (h : CorrectEncoding N n slots) : decodeSlots slots = canonical N := by
  obtain ⟨ps, hp, hs, hprod, _, rfl⟩ := h
  have hps := (Nat.primeFactorsList_unique hprod hp).eq_of_pairwise' hs
    (Nat.primeFactorsList_sorted N).pairwise
  have hf : ps.filter (fun p => p != 0) = ps := by
    apply List.filter_eq_self.mpr
    intro p h
    simpa using (hp p h).ne_zero
  unfold decodeSlots
  rw [List.filter_append, hf]
  simp [hps, compressRuns_primeFactorsList hN]

noncomputable def canonicalProbability (c : Circuit) (ℓ N : ℕ) : ℝ := by
  classical
  exact ∑ x : Basis c.qubits,
    if ∃ answer, CompleteFactorization N answer ∧ paddedAnswer (paddedLength ℓ) (outputList ℓ x) answer
    then Complex.normSq (c.outputState ℓ N x) else 0

theorem probability_eq (c : Circuit) (ℓ N : ℕ) (hN : 2 ≤ N) :
    canonicalProbability c ℓ N = c.correctProbability ℓ N := by
  classical
  unfold canonicalProbability Circuit.correctProbability
  apply Finset.sum_congr rfl
  intro x _
  rw [correctEncoding_iff hN]

/-- The generator still receives only ℓ. Both polynomial resource bounds
and the output-wire capacity are preserved without measuring other wires. -/
def CanonicalFamily : Prop :=
  ∃ family : ℕ → Circuit, Uniform family ∧ PolynomialResources family ∧
    ∀ ℓ N : ℕ, 2 ≤ N → N.size = ℓ →
      ℓ + (paddedLength ℓ)^2 ≤ (family ℓ).qubits ∧ canonicalProbability (family ℓ) ℓ N = 1

theorem canonicalFamily_of_mainTheorem (h : MainTheorem) : CanonicalFamily := by
  obtain ⟨f, hu, hr, he⟩ := h
  refine ⟨f, hu, hr, fun ℓ N hN hsize => ?_⟩
  obtain ⟨hcapacity, hsuccess⟩ := he ℓ N hN hsize
  exact ⟨hcapacity, (probability_eq _ _ _ hN).trans hsuccess⟩

-- Repeated factors and trailing zero slots are classical readout data.
example : decodeSlots [2, 0, 0] = [(2, 1)] := by decide
example : decodeSlots [13, 0, 0] = [(13, 1)] := by decide
example : decodeSlots (List.replicate 12 2 ++ [0]) = [(2, 12)] := by decide
example : decodeSlots [2, 2, 3, 13, 0] = [(2, 2), (3, 1), (13, 1)] := by decide

-- Removing zeros recovers these entries, but their placement fails the event.
example : ¬ paddedAnswer 3 [2, 0, 3] [(2, 1), (3, 1)] := by
  unfold paddedAnswer
  decide

end GRWTSK.IntegerFactorization.QuantumReadout
