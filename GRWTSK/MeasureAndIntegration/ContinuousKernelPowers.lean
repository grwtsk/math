/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib continuous linear operator algebra retains upstream authorship and
Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelComposition

/-!
# Positive-length continuous kernel powers

The natural index n denotes length n+1. No zero-length continuous identity
kernel is postulated. The consumer is the two positive arcs in a finite
periodic Wilson insertion integral; their cyclic integral identification
remains a separate obligation.
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and expected-interface checks: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelPowers
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

/-- Index n is the positive path length n+1, with leftmost original kernel. -/
def positivePower : ℕ → C(X × X, ℝ)
  | 0 => K
  | n + 1 => convolution μ K (positivePower μ K n)

@[simp] theorem positivePower_zero : positivePower μ K 0 = K := rfl

@[simp] theorem positivePower_succ (n : ℕ) :
    positivePower μ K (n+1) = convolution μ K (positivePower μ K n) := rfl

/-- The literal next-arc integral retains the order of the two factors. -/
theorem positivePower_succ_apply (n : ℕ) (x y : X) :
    positivePower μ K (n+1) (x,y) =
      ∫ z, K (x,z) * positivePower μ K n (z,y) ∂μ := rfl

/-- Equality with powers of the actual maintained L2 operator. -/
theorem operator_positivePower (n : ℕ) :
    operator μ (positivePower μ K n) = (operator μ K) ^ (n+1) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [positivePower_succ, operator_convolution, ih]
    change (operator μ K) * (operator μ K) ^ (n+1) =
      (operator μ K) ^ ((n+1)+1)
    exact (pow_succ' (operator μ K) (n+1)).symm

end GRWTSK.Analysis.Integration.ContinuousKernelPowers
