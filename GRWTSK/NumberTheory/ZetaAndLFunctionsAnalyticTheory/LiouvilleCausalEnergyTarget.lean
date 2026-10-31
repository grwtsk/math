/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive

/-!
# Primary arithmetic supplier: original-weight Liouville causal energy

The response is imported verbatim from the original Möbius source. The
coefficient is the actual integer Liouville function cast to the reals.
No cancellation theorem, independent-prime model, shifted-coefficient proxy
or smallness instance is supplied. The square-divisor delay return to Möbius
energy remains a separate source-bound mathematical transfer.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
namespace GRWTSK.NumberTheory.LiouvilleCausalEnergy

def coefficient (n : ℕ) : ℝ := (ArithmeticFunction.liouville n : ℤ)

def waveform (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, coefficient n * pickupResponse n u

def energy (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..T, |waveform u| ^ 2

/-- The prioritized open supplier, with one constant per positive exponent. -/
def UniformEnergySupplier : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ Cε : ℝ, 0 ≤ Cε ∧ ∀ T : ℝ, 0 ≤ T →
    energy T ≤ Cε * Real.exp (ε * T)

/-- Preserve complete multiplicativity of the actual integer source. -/
theorem coefficient_mul (m n : ℕ) :
    coefficient (m * n) = coefficient m * coefficient n := by
  unfold coefficient
  rw [ArithmeticFunction.liouville_apply_mul, Int.cast_mul]

end GRWTSK.NumberTheory.LiouvilleCausalEnergy
