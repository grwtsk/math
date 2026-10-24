import FormalResearch.RiemannHypothesis.Conversation.GroupedHodgeEnergy
import FormalResearch.RiemannHypothesis.Conversation.NativeCellBound

/-!
# A complete grouped-energy cap pays the unchanged native root

The next HC03 consumer retains the full signed primitive and full native clock
after compression. Positive active fibers give a root lower bound for the
compressed energy itself. Thus compression is not a license to discard the
common root. A uniform cap is an explicit arithmetic hypothesis, not proved
by the grouping law or by an unspecified zero-seam selector.

Human retained-root direction: grwtsk contributors. Local exact grouped-root
and actual prime-prefix consumer: OpenAI Codex. Mathlib finite sums and roots
remain upstream infrastructure.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.GroupedRootConsumer
open GroupedHodgeEnergy NativeRecordConsumer ArithmeticPrimitive OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

theorem grouped_energy_retains_root {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (label : ι → κ) (hs : Function.Surjective label)
    (w v : ι → ℝ) (hw : ∀ i, 0 < w i) (hW : (∑ i, w i) ≠ 0) :
    (∑ i, v i) ^ 2 / (∑ i, w i) ≤ groupedEnergy label w v := by
  have hp := surjective_grouping_positive_width label hs w hw
  have htot := complete_grouping_retains_total label w
  have h := WeightedHodge.finite_refinement_mono Finset.univ
    (fiberTotal label w) (fiberTotal label v) (fun k _ ↦ hp k) (by simpa [htot] using hW)
  simpa only [Finset.mem_univ, forall_true_left, complete_grouping_retains_total, groupedEnergy]
    using h

theorem actual_compressed_energy_pays_primitive {κ : Type*} [Fintype κ] [DecidableEq κ]
    {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) (label : Fin K → κ)
    (hs : Function.Surjective label) :
    (ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) ^ 2 ≤
      (2 / Real.sqrt N) * groupedEnergy label
        (fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ))
        (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
          cellClock (N + j.val) (N + j.val + 1 : ℕ)) := by
  let w : Fin K → ℝ := fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ)
  let v : Fin K → ℝ := fun j ↦ NativeSuperlevelConsumer.storage N j.val * w j
  have hw : ∀ j, 0 < w j := fun j ↦ cellClock_pos (by omega)
  have hn : (Finset.univ : Finset (Fin K)).Nonempty := ⟨⟨0,hK⟩, Finset.mem_univ _⟩
  have hW : 0 < ∑ j, w j := Finset.sum_pos (fun j _ ↦ hw j) hn
  have h := grouped_energy_retains_root label hs w v hw hW.ne'
  have hv : (∑ j, v j) = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N := by
    rw [← complete_grouping_retains_total label v]
    exact actual_native_grouping_retains_primitive hN K label
  have hwidth : (∑ j, w j) ≤ 2 / Real.sqrt N := by
    change (∑ j : Fin K, cellClock (N + j.val) (N + j.val + 1 : ℕ)) ≤ _
    rw [Fin.sum_univ_eq_sum_range (fun j : ℕ ↦ cellClock (N + j) (N + j + 1 : ℕ)),
      native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  have hE : 0 ≤ groupedEnergy label w v := by
    unfold groupedEnergy
    apply Finset.sum_nonneg
    intro k _
    exact div_nonneg (sq_nonneg _) (surjective_grouping_positive_width label hs w hw k).le
  have hroot := (div_le_iff₀ hW).mp h
  rw [hv] at hroot
  exact hroot.trans (by simpa [w, v, mul_comm] using mul_le_mul_of_nonneg_left hwidth hE)

theorem uniform_grouped_cap_bounds_every_real_prefix {N : ℕ} (hN : 1 ≤ N)
    {E : ℝ} (hE : 0 ≤ E) (κ : ℕ → Type*) [∀ K, Fintype (κ K)]
    [∀ K, DecidableEq (κ K)] (label : (K : ℕ) → Fin K → κ K)
    (hs : ∀ K, 0 < K → Function.Surjective (label K))
    (hcap : ∀ K, 0 < K → groupedEnergy (label K)
      (fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ))
      (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
        cellClock (N + j.val) (N + j.val + 1 : ℕ)) ≤ E) :
    Summable (primeRecordIncrement N) ∧ ∀ x : ℝ, (N : ℝ) ≤ x →
      ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ Real.sqrt ((2 / Real.sqrt N) * E) := by
  have hB : 0 ≤ (2 / Real.sqrt N) * E := mul_nonneg (by positivity) hE
  have hint : ∀ K : ℕ, ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤
      Real.sqrt ((2 / Real.sqrt N) * E) := by
    intro K
    by_cases hK : K = 0
    · simp [hK, Real.sqrt_nonneg]
    · have hp : 0 < K := Nat.pos_of_ne_zero hK
      have h := (actual_compressed_energy_pays_primitive hN hp (label K) (hs K hp)).trans
        (mul_le_mul_of_nonneg_left (hcap K hp) (by positivity : 0 ≤ 2 / Real.sqrt N))
      nlinarith [Real.sq_sqrt hB, Real.sqrt_nonneg ((2 / Real.sqrt N) * E)]
  have hreal := NativeCellBound.actual_integer_upper_implies_all_real hN hint
  exact ⟨(NativeCellBound.record_summable_iff_all_real_prefixes_bounded hN).mpr
    ⟨_, Real.sqrt_nonneg _, hreal⟩, hreal⟩

end
end GRWTSK.RiemannHypothesis.Conversation.GroupedRootConsumer
