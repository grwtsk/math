import FormalResearch.RiemannHypothesis.Conversation.ReserveConsumer

/-!
# A finite theta envelope consumes the head certificate at the actual entrance

Batch 04's external theta range and its short numerical head are independent
inputs. This proves their precise local consumers on the unchanged primitive.
The endpoint N-star is composite: its storage sign follows from the preceding
integer envelope and the actual -1 step, without extending the external
strict range to an unverified endpoint. No instance of either input is supplied.

Human programme: grwtsk contributors. Local source-preserving finite consumers
and Lean implementation: OpenAI Codex. The published computation needs its
own source/checker receipt; the global Green cap and RH return stay open.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteHeadConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive PrimeStorage AccordionConsumer
open NativeRecordConsumer FirstCrossingGreen ReserveConsumer
open scoped BigOperators
noncomputable section

/-- The short prime head certificate in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def ShortPrimeHeadCertificate : Prop := ordinaryPrimePrimitive 54 ≤ -(107 / 50)
-/
def ShortPrimeHeadCertificate : Prop := ordinaryPrimePrimitive 54 ≤ -(107 / 50)

/-- Only integers strictly below the external upper endpoint are required. -/
def FiniteThetaEnvelope : Prop :=
  ∀ n : ℕ, 54 ≤ n → n < entranceScale → Chebyshev.theta n ≤ n

theorem entranceScale_composite : ¬ entranceScale.Prime := by
  norm_num [entranceScale]

theorem finiteThetaEnvelope_implies_entranceStorageSign (h : FiniteThetaEnvelope) :
    cumulativeDiscrepancy ordinaryPrimeCoefficient entranceScale ≤ 0 := by
  have hlarge : 55 ≤ entranceScale := by norm_num [entranceScale]
  have hp := h (entranceScale - 1) (by omega) (by omega)
  have hstep := actual_storage_step (n := entranceScale - 1) (by omega)
  rw [show entranceScale - 1 + 1 = entranceScale by omega] at hstep
  rw [ordinaryPrimeCoefficient_at_source_index (by omega),
    if_neg entranceScale_composite] at hstep
  have hstorage := actual_storage_eq_theta (entranceScale - 1) (by omega)
  linarith

/-- The discrete native clock gives a slightly stronger finite-head margin. -/
theorem finiteThetaEnvelope_and_head_imply_entranceReserve
    (h : FiniteThetaEnvelope) (hhead : ShortPrimeHeadCertificate) :
    ordinaryPrimePrimitive entranceScale ≤ -reserve := by
  have hscale : 54 ≤ entranceScale := by norm_num [entranceScale]
  obtain ⟨K, hK⟩ := Nat.exists_eq_add_of_le hscale
  have hN : 1 ≤ (54 : ℕ) := by omega
  have hwork := actual_signed_work_telescope hN K
  have hsum : (∑ j ∈ Finset.range K,
      cumulativeDiscrepancy ordinaryPrimeCoefficient (54 + j) *
        cellClock (54 + j) (54 + j + 1 : ℕ)) ≤
      ∑ j ∈ Finset.range K, cellClock (54 + j) (54 + j + 1 : ℕ) := by
    apply Finset.sum_le_sum
    intro j hj
    have hjK := Finset.mem_range.mp hj
    have hn : 1 ≤ 54 + j := by omega
    have hp := h (54 + j) (by omega) (by omega)
    have hb : cumulativeDiscrepancy ordinaryPrimeCoefficient (54 + j) ≤ 1 := by
      rw [actual_storage_eq_theta _ hn]
      linarith
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hb
      (cellClock_pos hn).le
  have hwidth : (∑ j ∈ Finset.range K, cellClock (54 + j) (54 + j + 1 : ℕ)) ≤
      2 / Real.sqrt 54 := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (54 + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt 54 = 2 * (1 / Real.sqrt 54) by ring]
    linarith
  have hsqrt : (7 : ℝ) ≤ Real.sqrt 54 := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 54)
    have hp := Real.sqrt_nonneg (54 : ℝ)
    nlinarith
  have hprice : (2 : ℝ) / Real.sqrt 54 ≤ 2 / 7 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsqrt
  rw [← hK] at hwork
  norm_num only [Nat.cast_ofNat] at hwork
  unfold ShortPrimeHeadCertificate at hhead
  unfold reserve
  linarith

/-- The finite inputs discharge only the entrance; the selected Green cap remains explicit. -/
theorem finite_head_and_selected_cap_imply_eventualSign
    (h : FiniteThetaEnvelope) (hhead : ShortPrimeHeadCertificate)
    (hcap : ∀ K : ℕ, reserve < actualSuffix entranceScale K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix entranceScale K j) →
      profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (entranceScale + j))
        (actualSuffix entranceScale K) K +
        (cumulativeDiscrepancy ordinaryPrimeCoefficient entranceScale) ^ 2 *
          cellClock entranceScale (entranceScale + 1 : ℕ) ≤ greenBudget) :
    OrdinaryPrimeEventualSignSupplier := by
  apply selectedGreenReserve_implies_eventualSign
  exact ⟨entranceScale, le_rfl, finiteThetaEnvelope_and_head_imply_entranceReserve h hhead,
    finiteThetaEnvelope_implies_entranceStorageSign h, hcap⟩

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteHeadConsumer
