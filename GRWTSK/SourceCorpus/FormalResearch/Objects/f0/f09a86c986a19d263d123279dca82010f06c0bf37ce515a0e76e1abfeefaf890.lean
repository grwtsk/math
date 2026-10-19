import Zeta23.WeilEF.Main

/-!
# The pinned external explicit formula

Only the dependency closure of the literature-form explicit formula is imported.
The theorem concerns Mathlib's actual zeta function and carries no mathematical
premise. Source specialization and occurrence transport are separate lemmas.
The external Apache-2.0 source remains a pinned dependency, not relicensed MIT code.
-/

namespace FormalResearch.RiemannHypothesis.WeilSource

/-- The unconditional external formula, before specializing its test function. -/
theorem explicit_formula : Zeta23.EF.EF_lit Zeta23.zetaZeroConfig :=
  Zeta23.WeilEF.EF_lit_zetaZeroConfig

end FormalResearch.RiemannHypothesis.WeilSource
