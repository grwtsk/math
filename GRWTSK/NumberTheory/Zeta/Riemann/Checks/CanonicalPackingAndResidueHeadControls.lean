/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPackingNecessity
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem comparison_requires_arithmetic_decay
    {s : ℂ} (h : CanonicalPrimePowerPackingComparisonAtZero s) :
    Tendsto canonicalPrimePowerPackingSequence.valueAt atTop (𝓝 0) :=
  h.packing_tendsto_zero

theorem zero_multiplier_has_zero_head (T : ℝ) :
    nontrivialZeroResidueHead T (fun _ => 0) = 0 := by
  simp [nontrivialZeroResidueHead]

end GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls
