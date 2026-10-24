import FormalResearch.RiemannHypothesis.Conversation.OrderedVariance
import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingConsumer

/-!
# The once-counted variance defect consumes the actual prime suffix

The source suffix height, native clock and chronological theta storage
instantiate the exact finite identity. This retains the positive variance
credit and claims no useful uniform lower gap for the actual primes.

Source: audited RH conversation Batch 13. Human direction:
grwtsk contributors. Local adapter and Lean proof: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeVariance

open OpenArithmeticSuppliers ArithmeticPrimitive AccordionConsumer FirstCrossingGreen
open OrderedVariance
open scoped BigOperators
noncomputable section

theorem actual_suffix_variance {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) *
      profileEnergy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K -
      (actualSuffix N K 0) ^ 2 =
      chronologicalVariance (fun j => cellClock (N + j) (N + j + 1 : ℕ))
        (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) K := by
  have hheight : actualSuffix N K 0 =
      ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) *
        cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) := by
    simpa only [actualSuffix, Nat.add_zero, mul_comm] using actual_signed_work_telescope hN K
  rw [hheight]
  simpa only [profileEnergy, mul_comm] using chronological_variance_identity
    (fun j => cellClock (N + j) (N + j + 1 : ℕ))
    (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) K

end
end GRWTSK.RiemannHypothesis.Conversation.NativeVariance
