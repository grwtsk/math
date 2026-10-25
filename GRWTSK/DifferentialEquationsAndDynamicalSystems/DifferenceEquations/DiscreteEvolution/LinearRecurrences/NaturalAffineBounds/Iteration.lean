/-
# Uncompiled source split candidate: Integral affine recurrence bounds

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: a52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a
Review: attribution-254-review-000009.
Both results remain scoped to Nat gain and Nat defects. The explicit source
warning about general sub-unit geometric convergence is copied verbatim.
The required natural-number recurrence supplier is extracted into the sibling
Basic module with its immutable archived source identity. Native compilation,
proof acceptance and public umbrella admission remain separate obligations.
-/

import GRWTSK.DifferentialEquationsAndDynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds.Basic

/-! # Certified contraction boundaries -/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds.Iteration

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds

theorem certified_integral_traversal_obeys_affine_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ n, actual (n + 1) ≤
        gain * actual n + localDefect) :
    ∀ n, actual n ≤
      constantAffineBound gain localDefect initialDefect n :=
  iterated_affine_defect_bound
    actual gain localDefect initialDefect initial step

/-!
This theorem is intentionally scoped to an integral gain.  In particular it
does not establish general sub-unit geometric convergence.  Such claims use a
`ScaledDerivativeGainCertificate` plus separately discharged completeness and
basin obligations.
-/

theorem exact_zero_gain_converges_after_one_step
    (initialDefect : Nat)
    (n : Nat) :
    constantAffineBound 0 0 initialDefect (n + 1) = 0 := by
  calc
    constantAffineBound 0 0 initialDefect (n + 1) =
        0 * constantAffineBound 0 0 initialDefect n + 0 := rfl
    _ = 0 * constantAffineBound 0 0 initialDefect n := Nat.add_zero _
    _ = 0 := Nat.zero_mul _

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds.Iteration
