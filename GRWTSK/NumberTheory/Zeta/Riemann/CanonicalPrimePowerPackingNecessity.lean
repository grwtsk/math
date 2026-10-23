/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Necessary asymptotics for the canonical packing comparison

A successful comparison against the concrete canonical prime-power packing has
strong consequences before any RH endpoint is invoked:

* the compared nontrivial zero must lie on the critical line; and
* the concrete arithmetic packing values themselves must tend to zero.

Thus V_n -> 0 is an independent necessary arithmetic condition for this
particular packing route. It must be proved from the canonical prime-power
sequence and cannot be hidden inside the residual ledger.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_PACKING_DECAY_NECESSARY / DECAY_PROOF_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

theorem CanonicalPrimePowerPackingComparisonAtZero.forces_critical_line
    {s : ℂ}
    (comparison : CanonicalPrimePowerPackingComparisonAtZero s) :
    s.re = 1 / 2 := by
  have hnonneg := comparison.witnessTrace_nonnegative
  have hcenter :
      s.re - 1 / 2 = 0 :=
    (witnessTrace_nonneg_iff (s.re - 1 / 2) s.im).mp hnonneg
  linarith

theorem CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_eq_zero
    {s : ℂ}
    (comparison : CanonicalPrimePowerPackingComparisonAtZero s) :
    witnessTrace (s.re - 1 / 2) s.im = 0 := by
  have hre := comparison.forces_critical_line
  rw [hre]
  norm_num [witnessTrace_eq]

/-- Any successful comparison forces the concrete arithmetic packing sequence
itself to vanish asymptotically. -/
theorem CanonicalPrimePowerPackingComparisonAtZero.packing_tendsto_zero
    {s : ℂ}
    (comparison : CanonicalPrimePowerPackingComparisonAtZero s) :
    Tendsto canonicalPrimePowerPackingSequence.valueAt atTop (𝓝 0) := by
  have hz := comparison.witnessTrace_eq_zero
  have hfun :
      canonicalPrimePowerPackingSequence.valueAt =
        comparison.residual.total := by
    funext n
    rw [comparison.identity n, hz, mul_zero, zero_add]
  rw [hfun]
  exact comparison.residual.total_tendsto

/-- Contrapositive audit: if the concrete packing values do not tend to zero,
then no comparison with positive limiting coefficient and vanishing complete
residual exists for any nontrivial zero. -/
theorem no_canonical_comparison_of_not_tendsto_zero
    (hnot :
      ¬ Tendsto canonicalPrimePowerPackingSequence.valueAt atTop (𝓝 0)) :
    ∀ s : ℂ, ¬ CanonicalPrimePowerPackingComparisonAtZero s := by
  intro s comparison
  exact hnot comparison.packing_tendsto_zero

end GRWTSK.RiemannHypothesis
