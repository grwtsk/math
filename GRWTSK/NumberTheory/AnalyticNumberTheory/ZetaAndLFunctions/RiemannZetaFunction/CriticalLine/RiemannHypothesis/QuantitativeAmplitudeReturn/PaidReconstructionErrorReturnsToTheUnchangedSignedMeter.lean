import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceSupplierReturn

/-!
# Paid reconstruction error returns to the unchanged signed meter

Written direction 2026-10-09: grwtsk contributors. Local conditional consumers:
OpenAI Codex. Reconstruction and the retained signed estimate remain explicit
hypotheses. The generic candidate set is supplied, never replaced by a
convenient smaller set. The final consumer uses the original strict sectors,
centered pickup and common supplier allowance. No arithmetic cap is proved.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.QuantitativeAmplitudeReturn
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
open Set MeasureTheory
noncomputable section

theorem paid_candidate_return {A h retained error baseline D C p q : ℝ}
    (hA : 1 ≤ A) (hD : 0 ≤ D) (hC : 0 ≤ C)
    (hexact : h = retained + error) (herror : |error| ≤ C * A ^ q)
    (hretained : retained ≤ baseline + D * A ^ p) :
    h ≤ baseline + (D + C) * A ^ (max p q) := by
  have hd := mul_le_mul_of_nonneg_left
    (Real.rpow_le_rpow_of_exponent_le hA (le_max_left p q)) hD
  have hc := mul_le_mul_of_nonneg_left
    (Real.rpow_le_rpow_of_exponent_le hA (le_max_right p q)) hC
  have he := (le_abs_self error).trans herror
  rw [hexact]
  nlinarith

/-- All original candidates and all real scales are quantified by the caller. -/
theorem all_candidates_paid_return (candidates : ℝ → Set ℝ)
    (retained error : ℝ → ℝ → ℝ) (baseline : ℝ → ℝ)
    {R D C p q : ℝ} (hR : 1 ≤ R) (hD : 0 ≤ D) (hC : 0 ≤ C)
    (hexact : ∀ A, R ≤ A → ∀ h ∈ candidates A, h = retained A h + error A h)
    (herror : ∀ A, R ≤ A → ∀ h ∈ candidates A, |error A h| ≤ C * A ^ q)
    (hretained : ∀ A, R ≤ A → ∀ h ∈ candidates A,
      retained A h ≤ baseline A + D * A ^ p) :
    ∀ A, R ≤ A → ∀ h ∈ candidates A,
      h ≤ baseline A + (D + C) * A ^ (max p q) := by
  intro A hA h hh
  exact paid_candidate_return (hR.trans hA) hD hC
    (hexact A hA h hh) (herror A hA h hh) (hretained A hA h hh)

theorem original_allowance_paid_return {A K D C p q σ t retained error : ℝ}
    (hA : 1 ≤ A) (hD : 0 ≤ D) (hC : 0 ≤ C)
    (hexact : σ * centeredPickup A t = retained + error)
    (herror : |error| ≤ C * A ^ q)
    (hretained : retained ≤ supplierAllowance K D p A) :
    σ * centeredPickup A t ≤ supplierAllowance K (D + C) (max p q) A := by
  exact paid_candidate_return hA hD hC hexact herror hretained

/-- A genuine next consumer: both original strict polarities feed the original
essential-supremum supplier, with the same K and enlarged D and exponent. -/
theorem original_supplier_of_paid_signed_reconstruction
    (retained error : ℝ → ℝ → ℝ → ℝ) {K D C p q R : ℝ}
    (hK : 0 ≤ K) (hD : 0 ≤ D) (hC : 0 ≤ C) (hp : 0 ≤ p) (_hq : 0 ≤ q)
    (hR : max 1 (4 * K) ≤ R)
    (hexact : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ,
        σ * centeredPickup A t = retained A σ t + error A σ t)
    (herror : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ, |error A σ t| ≤ C * A ^ q)
    (hretained : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ, retained A σ t ≤ supplierAllowance K D p A) :
    SupplierEstimate := by
  refine ⟨K, D + C, max p q, R, hK, add_nonneg hD hC,
    hp.trans (le_max_left p q), hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left 1 (4 * K)).trans (hR.trans hA)
  have hallowance : 0 ≤ supplierAllowance K (D + C) (max p q) A := by
    unfold supplierAllowance
    exact add_nonneg (mul_nonneg (div_nonneg (by positivity) (Real.sqrt_nonneg _))
      (runningPositiveMaximum_nonneg pickup_continuous (2 * A)))
      (mul_nonneg (add_nonneg hD hC) (Real.rpow_nonneg (by linarith) _))
  apply (signedMeter_le_iff A _ hallowance).mpr
  constructor
  · apply ae_of_all
    intro t ht
    simpa using original_allowance_paid_return hA1 hD hC
      (hexact A hA 1 (by simp) t ht) (herror A hA 1 (by simp) t ht)
      (hretained A hA 1 (by simp) t ht)
  · apply ae_of_all
    intro t ht
    simpa using original_allowance_paid_return hA1 hD hC
      (hexact A hA (-1) (by simp) t ht) (herror A hA (-1) (by simp) t ht)
      (hretained A hA (-1) (by simp) t ht)

end
end GRWTSK.RiemannHypothesis.Conversation.QuantitativeAmplitudeReturn
