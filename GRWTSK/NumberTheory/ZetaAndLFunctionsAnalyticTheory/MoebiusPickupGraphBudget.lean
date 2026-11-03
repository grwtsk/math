/- Copyright (c) 2026 grwtsk contributors. MIT.
   Source-level formalization assistance: OpenAI ChatGPT.
   SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
   EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
   TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.GraphSignedGramEdgeBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUniversalWaveformReturn
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual original Möbius signed source: source-exact graph error budget

The immutable arithmetic support is Icc 1 (Nat.floor (exp T)); the
original coefficients are moebiusReal on ORIGINAL natural indices and
pickupResponseGram is the ORIGINAL signed ordered response kernel.

The theorem directly consumes the universal finite-edge Gram budget to
return the original `pickupCross`, WITHOUT replacing its source,
turning negative terms positive before the full comparison, erasing
zero coefficients, dropping either ordered mixed orientation, or
claiming a kernel/operator norm for the RH arithmetic instance.

The endpoint and all-positive-rate growth supplier remain OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.MoebiusPickupGraphBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.MeasureAndIntegration.UniversalWaveformInput
open GRWTSK.MeasureAndIntegration.CERNWaveformSignedGram
open GRWTSK.MeasureAndIntegration.GraphSignedGramEdgeBudget
open GRWTSK.NumberTheory.Moebius.UniversalWaveformReturn

/-- The ORIGINAL Möbius arithmetic coefficients as a special case of
an arbitrary index/sample waveform. No change to the original μ. -/
def immutableMoebiusInput : UniversalInput ℕ ℝ :=
  UniversalInput.ofFunction moebiusReal

/-- The exact ORIGINAL full ordered off-diagonal pickup, without a
surrogate geometric/spectral/elliptic kernel. -/
theorem original_pickupCross_eq_orderedCross (T : ℝ) :
    pickupCross T =
      orderedCross (arithmeticInventory T) immutableMoebiusInput
        (pickupResponseGram T) := rfl

/-- The actual Möbius source, for ANY observed integer-indexed
coefficient vector, has a SOURCE-EXACT computable finite signed-error
upper allowance. Both mixed orientations and every original support
index persist. This does NOT assert a uniform analytic growth bound. -/
theorem pickupCross_le_observed_plus_full_edge_budget
    (T : ℝ) (observed : ℕ → ℝ) :
    pickupCross T ≤
      orderedCross (arithmeticInventory T)
        (UniversalInput.ofFunction observed) (pickupResponseGram T) +
      edgewiseGramBudget (arithmeticInventory T) immutableMoebiusInput
        (UniversalInput.ofFunction observed) (pickupResponseGram T) := by
  rw [original_pickupCross_eq_orderedCross]
  exact signedCross_le_observed_add_budget
    (arithmeticInventory T) immutableMoebiusInput
    (UniversalInput.ofFunction observed) (pickupResponseGram T)

/-- The exact source identity, not only its absolute-error bound,
is available without any assumption on the observation or kernel
positivity. It must remain visible in any later RH estimate. -/
theorem pickupCross_eq_observed_plus_signed_defect
    (T : ℝ) (observed : ℕ → ℝ) :
    pickupCross T =
      orderedCross (arithmeticInventory T)
        (UniversalInput.ofFunction observed) (pickupResponseGram T) +
      signedResidual (arithmeticInventory T) immutableMoebiusInput
        (UniversalInput.ofFunction observed) (pickupResponseGram T) := by
  rw [original_pickupCross_eq_orderedCross]
  exact orderedCross_source_return
    (arithmeticInventory T) immutableMoebiusInput
    (UniversalInput.ofFunction observed) (pickupResponseGram T)

end GRWTSK.NumberTheory.Moebius.MoebiusPickupGraphBudget
