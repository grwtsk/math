import SourceCutoffOneLedger

/-! Conditional consumption of the exact independently defined cutoff-one baseline.
AI attribution: prepared with OpenAI Codex from the source-bound cutoff-one ledger.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffOneEstimateConsumer

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateSourceMobiusKernel SourcePairing SourceCutoffFlux

/-- The existing finite-prefix receiver consumes the exact cutoff-one baseline tail. -/
theorem estimate_of_cutoffOne_baseline_tail
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (SourceCutoffOneLedger.cutoffOne_baseline_tail_iff_residualTail.mp h)

end FormalResearch.RiemannHypothesis.SourceCutoffOneEstimateConsumer
