import FormalResearch.RiemannHypothesis.Conversation.PrimeStorage

/-!
# A selected finite Green cap consumes the prime reserve

This proves the finite-profile route from Batch 13, including the least bad
integer endpoint and the all-real interpolation. The arithmetic cap, initial
reserve, and entrance-storage sign remain explicit premises. No estimate on
all intervals or global record square function is assumed or constructed.

Human direction: grwtsk contributors. Local conditional consumers and Lean
implementation: OpenAI Codex. The final RH Landau return is a separate frontier.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FirstCrossingConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer AccordionConsumer
open FirstCrossingGreen
open scoped BigOperators
noncomputable section

/-- Signed work, rather than just positive record work, satisfies the native-width bound. -/
theorem actual_suffix_square_le {N K : ℕ} (hN : 1 ≤ N) :
    (actualSuffix N K 0) ^ 2 ≤ (2 / Real.sqrt N) *
      profileEnergy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K := by
  by_cases hK : K = 0
  · subst K
    simp [actualSuffix, profileEnergy]
  let B := fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)
  let w := fun j => cellClock (N + j) (N + j + 1 : ℕ)
  have hw (j : ℕ) (_hj : j ∈ Finset.range K) : 0 < w j := cellClock_pos (by omega)
  have hW : 0 < ∑ j ∈ Finset.range K, w j := by
    apply Finset.sum_pos hw
    exact ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range K) w (fun j => B j * w j)
    hw hW.ne'
  have hsum : (∑ j ∈ Finset.range K, B j * w j) = actualSuffix N K 0 := by
    simpa only [B, w, actualSuffix, Nat.add_zero] using (actual_signed_work_telescope hN K).symm
  have henergy : (∑ j ∈ Finset.range K, (B j * w j) ^ 2 / w j) =
      profileEnergy B w K := by
    apply Finset.sum_congr rfl
    intro j hj
    field_simp [(hw j hj).ne']
  rw [hsum, henergy] at h
  have hroot := (div_le_iff₀ hW).mp h
  have hE : 0 ≤ profileEnergy B w K :=
    Finset.sum_nonneg (fun j hj => mul_nonneg (sq_nonneg _) (hw j hj).le)
  have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt N := by
    change (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤ _
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  calc
    _ ≤ profileEnergy B w K * (∑ j ∈ Finset.range K, w j) := hroot
    _ ≤ profileEnergy B w K * (2 / Real.sqrt N) := mul_le_mul_of_nonneg_left hwidth hE
    _ = _ := by ring

/-- Under the actual entrance sign and positive suffix, the boundary helps the energy bound. -/
theorem positive_profile_height_bound {N K : ℕ} {C R : ℝ} (hN : 1 ≤ N)
    (hB : cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0)
    (hS : 0 ≤ actualSuffix N K 0) (hR : 0 ≤ R)
    (hQ : profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) K ≤ C)
    (hreserve : (2 / Real.sqrt N) * C ≤ R ^ 2) : actualSuffix N K 0 ≤ R := by
  have hgreen := actual_prime_profile_green hN K
  have hboundary := mul_nonpos_of_nonpos_of_nonneg hB hS
  change cumulativeDiscrepancy ordinaryPrimeCoefficient N *
    (ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) ≤ 0 at hboundary
  have he : profileEnergy
      (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K ≤ C := by
    linarith
  have hsquare := actual_suffix_square_le (K := K) hN
  have hbudget := mul_le_mul_of_nonneg_left he
    (show 0 ≤ (2 : ℝ) / Real.sqrt N by positivity)
  nlinarith

/-- Only actual positive suffix profiles of a forbidden crossing need this cap.
The first-bad-endpoint argument then reaches the all-real prime-sign consumer. -/
theorem selected_green_cap_implies_eventualSign {N : ℕ} {C R : ℝ} (hN : 2 ≤ N)
    (hR : 0 ≤ R) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (hB : cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0)
    (hcap : ∀ K : ℕ, R < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (actualSuffix N K) K ≤ C)
    (hreserve : (2 / Real.sqrt N) * C ≤ R ^ 2) : OrdinaryPrimeEventualSignSupplier := by
  apply integer_sign_implies_all_real hN
  intro n hn
  by_contra hbad
  have hex : ∃ K : ℕ, 0 < ordinaryPrimePrimitive (N + K : ℕ) := by
    obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
    exact ⟨K, lt_of_not_ge hbad⟩
  let K := Nat.find hex
  have hpos : 0 < ordinaryPrimePrimitive (N + K : ℕ) := Nat.find_spec hex
  have hheight : R < actualSuffix N K 0 := by
    unfold actualSuffix
    simp only [Nat.add_zero]
    linarith
  have hpositive (j : ℕ) (hj : j < K) : 0 ≤ actualSuffix N K j := by
    have hnot := Nat.find_min hex hj
    have hprior : ordinaryPrimePrimitive (N + j : ℕ) ≤ 0 := le_of_not_gt hnot
    unfold actualSuffix
    linarith
  have hzero : 0 ≤ actualSuffix N K 0 := hR.trans hheight.le
  have hbound := positive_profile_height_bound (by omega : 1 ≤ N) hB hzero hR
    (hcap K hheight hpositive) hreserve
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FirstCrossingConsumer
