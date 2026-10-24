# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeTentDictionary.Variant9cc3dd167fc9d25984ed5d41be499fbef33e85ad64fba11176491a1e3193801f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bffe5913b0593e812afa668af854f637172d457` · SHA-256 `9cc3dd167fc9d25984ed5d41be499fbef33e85ad64fba11176491a1e3193801f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeCompactRamp

/-!
# Every native weighted split has its literal prime-discrepancy tent

Batch 07's Hodge numerator is reconstructed by a compact cumulative signed
coefficient. Both parent endpoints vanish. Summation by parts identifies the
numerator with integer baseline minus ordinary-prime logarithmic mass against
that very tent. The next consumer places the literal numerator in the binary
energy identity, retaining the root. No bound on the selected tent follows.

Human source/Hodge dictionary direction: grwtsk contributors. Local complete
finite tent adapter and Lean proofs: OpenAI Codex. Mathlib finite sums and
ordinary-prime values retain their upstream identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimeTentDictionary

open ArithmeticPrimitive OpenArithmeticSuppliers NativeRecordConsumer PrimeStorage CausalRecords
open scoped BigOperators
noncomputable section

def firstMass (r : ℕ → ℝ) (M : ℕ) : ℝ := ∑ j ∈ Finset.range M, r j
def secondMass (r : ℕ → ℝ) (M K : ℕ) : ℝ := ∑ j ∈ Finset.range K, r (M + j)
def firstLoad (r B : ℕ → ℝ) (M : ℕ) : ℝ := ∑ j ∈ Finset.range M, r j * B j
def secondLoad (r B : ℕ → ℝ) (M K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, r (M + j) * B (M + j)
def splitCoefficient (r : ℕ → ℝ) (M K j : ℕ) : ℝ :=
  if j < M then secondMass r M K * r j else -(firstMass r M) * r j
def tent (r : ℕ → ℝ) (M K n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n, splitCoefficient r M K j
def numerator (r B : ℕ → ℝ) (M K : ℕ) : ℝ :=
  secondMass r M K * firstLoad r B M - firstMass r M * secondLoad r B M K

theorem weighted_split_sum (r B : ℕ → ℝ) (M K : ℕ) :
    (∑ j ∈ Finset.range (M + K), B j * splitCoefficient r M K j) =
      numerator r B M K := by
  rw [Finset.sum_range_add]
  have hl : (∑ j ∈ Finset.range M, B j * splitCoefficient r M K j) =
      secondMass r M K * firstLoad r B M := by
    unfold firstLoad
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    rw [splitCoefficient, if_pos (Finset.mem_range.mp hj)]
    ring
  have hr : (∑ j ∈ Finset.range K, B (M + j) * splitCoefficient r M K (M + j)) =
      -(firstMass r M) * secondLoad r B M K := by
    unfold secondLoad
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    rw [splitCoefficient, if_neg (by omega : ¬ M + j < M)]
    ring
  rw [hl, hr]
  unfold numerator
  ring

theorem tent_initial (r : ℕ → ℝ) (M K : ℕ) : tent r M K 0 = 0 := by simp [tent]

theorem tent_terminal (r : ℕ → ℝ) (M K : ℕ) : tent r M K (M + K) = 0 := by
  have h := weighted_split_sum r (fun _ => 1) M K
  simp only [one_mul, numerator, firstLoad, secondLoad, mul_one] at h
  change tent r M K (M + K) = _ at h
  change tent r M K (M + K) = 0
  unfold firstMass secondMass at *
  nlinarith

theorem tent_step (r : ℕ → ℝ) (M K j : ℕ) :
    tent r M K (j + 1) - tent r M K j = splitCoefficient r M K j := by
  unfold tent
  rw [Finset.sum_range_succ]
  ring

theorem tent_left_panel (r : ℕ → ℝ) {M n : ℕ} (K : ℕ) (hn : n ≤ M) :
    tent r M K n = secondMass r M K * firstMass r n := by
  unfold tent firstMass
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  exact if_pos (by have h := Finset.mem_range.mp hj; omega)

theorem tent_right_panel (r : ℕ → ℝ) (M K k : ℕ) :
    tent r M K (M + k) = firstMass r M * (secondMass r M K - secondMass r M k) := by
  rw [tent, Finset.sum_range_add]
  have hl : (∑ j ∈ Finset.range M, splitCoefficient r M K j) =
      secondMass r M K * firstMass r M := tent_left_panel r K le_rfl
  have hr : (∑ j ∈ Finset.range k, splitCoefficient r M K (M + j)) =
      -(firstMass r M) * secondMass r M k := by
    unfold secondMass
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    exact if_neg (by omega : ¬ M + j < M)
  rw [hl, hr]
  ring

theorem tent_peak (r : ℕ → ℝ) (M K : ℕ) :
    tent r M K M = firstMass r M * secondMass r M K := by
  rw [tent_left_panel r K le_rfl, mul_comm]

theorem tent_nonneg (r : ℕ → ℝ) (hr : ∀ j, 0 ≤ r j) {M K n : ℕ}
    (hn : n ≤ M + K) : 0 ≤ tent r M K n := by
  by_cases hleft : n ≤ M
  · rw [tent_left_panel r K hleft]
    exact mul_nonneg (Finset.sum_nonneg (fun j _ => hr (M + j)))
      (Finset.sum_nonneg (fun j _ => hr j))
  · obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le (by omega : M ≤ n)
    rw [tent_right_panel]
    have hsub : secondMass r M k ≤ secondMass r M K :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono (by omega : k ≤ K))
        (fun j _ _ => hr (M + j))
    exact mul_nonneg (Finset.sum_nonneg (fun j _ => hr j)) (sub_nonneg.mpr hsub)

theorem numerator_eq_tent_discrepancy (r B : ℕ → ℝ) (M K : ℕ) :
    numerator r B M K =
      -(∑ j ∈ Finset.range (M + K), (B (j + 1) - B j) * tent r M K (j + 1)) := by
  have h := suffix_summation_by_parts B (tent r M K) (M + K)
  simp only [tent_initial, tent_terminal, sub_self, mul_zero, zero_sub, zero_add,
    tent_step, mul_neg, Finset.sum_neg_distrib] at h
  rwa [weighted_split_sum] at h

theorem actual_prime_tent_dictionary {u : ℕ} (hu : 1 ≤ u) (r : ℕ → ℝ) (M K : ℕ) :
    numerator r (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j)) M K =
      (∑ j ∈ Finset.range (M + K), tent r M K (j + 1)) -
        ∑ j ∈ Finset.range (M + K),
          (if (u + j + 1).Prime then Real.log (u + j + 1 : ℕ) else 0) *
            tent r M K (j + 1) := by
  rw [numerator_eq_tent_discrepancy]
  have hstep (j : ℕ) : cumulativeDiscrepancy ordinaryPrimeCoefficient (u + (j + 1)) -
      cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j) =
      (if (u + j + 1).Prime then Real.log (u + j + 1 : ℕ) else 0) - 1 := by
    rw [show u + (j + 1) = u + j + 1 by omega,
      actual_storage_step (by omega : 1 ≤ u + j),
      ordinaryPrimeCoefficient_at_source_index (by omega : 2 ≤ u + j + 1)]
  simp_rw [hstep]
  rw [← Finset.sum_neg_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

def nativeWidth (u j : ℕ) : ℝ := cellClock (u + j) (u + j + 1 : ℕ)
def actualStorage (u j : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient (u + j)

theorem native_first_mass {u : ℕ} (M : ℕ) :
    firstMass (nativeWidth u) M = 2 * (1 / Real.sqrt u - 1 / Real.sqrt (u + M : ℕ)) :=
  native_width_telescope u M

theorem native_second_mass (u M K : ℕ) :
    secondMass (nativeWidth u) M K =
      2 * (1 / Real.sqrt (u + M : ℕ) - 1 / Real.sqrt (u + M + K : ℕ)) := by
  simpa only [secondMass, nativeWidth, Nat.add_assoc] using native_width_telescope (u + M) K

theorem actual_native_tent_nonneg {u : ℕ} (hu : 1 ≤ u) {M K n : ℕ}
    (hn : n ≤ M + K) : 0 ≤ tent (nativeWidth u) M K n :=
  tent_nonneg _ (fun j => (cellClock_pos (by omega : 1 ≤ u + j)).le) hn

theorem native_mass_pos {u : ℕ} (hu : 1 ≤ u) {M : ℕ} (hM : 0 < M) :
    0 < firstMass (nativeWidth u) M := by
  apply Finset.sum_pos
  · intro j _
    exact cellClock_pos (by omega : 1 ≤ u + j)
  · exact ⟨0, Finset.mem_range.mpr hM⟩

theorem native_second_mass_pos {u : ℕ} (hu : 1 ≤ u) (M : ℕ) {K : ℕ} (hK : 0 < K) :
    0 < secondMass (nativeWidth u) M K := by
  apply Finset.sum_pos
  · intro j _
    exact cellClock_pos (by omega : 1 ≤ u + (M + j))
  · exact ⟨0, Finset.mem_range.mpr hK⟩

theorem actual_native_detail_energy {u M K : ℕ} (hu : 1 ≤ u) (hM : 0 < M) (hK : 0 < K) :
    (firstLoad (nativeWidth u) (actualStorage u) M) ^ 2 / firstMass (nativeWidth u) M +
      (secondLoad (nativeWidth u) (actualStorage u) M K) ^ 2 / secondMass (nativeWidth u) M K =
      (firstLoad (nativeWidth u) (actualStorage u) M +
        secondLoad (nativeWidth u) (actualStorage u) M K) ^ 2 /
        (firstMass (nativeWidth u) M + secondMass (nativeWidth u) M K) +
      (numerator (nativeWidth u) (actualStorage u) M K) ^ 2 /
        (firstMass (nativeWidth u) M * secondMass (nativeWidth u) M K *
          (firstMass (nativeWidth u) M + secondMass (nativeWidth u) M K)) := by
  have h := WeightedHodge.binary_refinement_identity (native_mass_pos hu hM)
    (native_second_mass_pos hu M hK)
    (firstLoad (nativeWidth u) (actualStorage u) M)
    (secondLoad (nativeWidth u) (actualStorage u) M K)
  change _ - _ = numerator (nativeWidth u) (actualStorage u) M K ^ 2 / _ at h
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeTentDictionary
```
