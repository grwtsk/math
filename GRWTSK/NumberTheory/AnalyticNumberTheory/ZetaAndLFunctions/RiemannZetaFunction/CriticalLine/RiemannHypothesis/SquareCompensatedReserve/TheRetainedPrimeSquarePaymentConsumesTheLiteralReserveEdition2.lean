import FormalResearch.RiemannHypothesis.Conversation.PrimeSquareGreen
import FormalResearch.RiemannHypothesis.Conversation.ReserveConsumer

/-!
# The retained prime-square payment consumes the literal reserve

The selected positive suffix is still the actual ordinary-prime source.
An all-horizon cap on complete Mangoldt work minus its literal square sector
is a sufficient input to the existing selected Green consumer. Entrance storage,
the first-cell allowance, 549/350 and the native budget are retained exactly.
The cap is an open proposition; the independent analytic return remains explicit.

Human signed-compensation direction: grwtsk contributors. Local next consumer:
OpenAI Codex. No arithmetic cap or unconditional RH proof is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SquareCompensatedReserve

open PrimeSquareGreen PrimePowerGreen ReserveConsumer FirstCrossingGreen
open OpenArithmeticSuppliers ArithmeticPrimitive AnalyticSuppliers
noncomputable section

/-- The square compensated green supplier in this module, with the following exact
parameterization.

This defines a condition; no witness is supplied by the definition.
def SquareCompensatedGreenSupplier : Prop := ∃ N : ℕ, entranceScale ≤ N ∧
ordinaryPrimePrimitive N ≤ -reserve ∧ cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0 ∧ ∀
K : ℕ, reserve < actualSuffix N K 0 → (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
completeMangoldtWork N K - primeSquareWork N K + (cumulativeDiscrepancy
ordinaryPrimeCoefficient N) ^ 2 *
-/
def SquareCompensatedGreenSupplier : Prop :=
  ∃ N : ℕ, entranceScale ≤ N ∧ ordinaryPrimePrimitive N ≤ -reserve ∧
    cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0 ∧
    ∀ K : ℕ, reserve < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      completeMangoldtWork N K - primeSquareWork N K +
        (cumulativeDiscrepancy ordinaryPrimeCoefficient N) ^ 2 *
          cellClock N (N + 1 : ℕ) ≤ greenBudget

theorem square_compensated_cap_implies_selected_green (h : SquareCompensatedGreenSupplier) :
    SelectedGreenReserveSupplier := by
  obtain ⟨N, hN, hstart, hB, hcap⟩ := h
  refine ⟨N, hN, hstart, hB, ?_⟩
  intro K hheight hpositive
  have hN1 : 1 ≤ N := by
    have : 1 ≤ entranceScale := by norm_num [entranceScale]
    omega
  have hg := actual_prime_green_le_complete_minus_squares hN1 hpositive
  have hc := hcap K hheight hpositive
  linarith

theorem square_compensated_cap_implies_eventual_sign (h : SquareCompensatedGreenSupplier) :
    OrdinaryPrimeEventualSignSupplier :=
  selectedGreenReserve_implies_eventualSign (square_compensated_cap_implies_selected_green h)

theorem rh_of_square_compensated_cap_and_landau_return (h : SquareCompensatedGreenSupplier)
    (hreturn : OrdinaryPrimeSignLandauReturn) : RiemannHypothesis :=
  rh_of_selectedGreenReserve_and_landauReturn (square_compensated_cap_implies_selected_green h)
    hreturn

end
end GRWTSK.RiemannHypothesis.Conversation.SquareCompensatedReserve
