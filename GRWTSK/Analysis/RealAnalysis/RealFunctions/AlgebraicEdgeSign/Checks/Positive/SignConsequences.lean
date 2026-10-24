/-
# Uncompiled individually reviewed candidate: AlgebraicEdgeSignConsequences

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: a3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38
Organized source SHA-256: 21bddb0dacde74dbdaef5dce6aa35f19f3cff878ac4943d33985b537de310e92
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.010.010 real functions; editorial placement only.
The original UNCOMPILED notice and five algebraic sign consequences remain exact.
No checked transport to the normalized source integral or actual state is asserted.
All retained statements, explicit premises and proof/definition text are exact copies.
Namespace, candidate imports and any explicit ambient-context edits are receipted.
Original dependency selection, elaboration and proof checking remain unreplayed.
This candidate is outside the public umbrella. Lean and Lake have not been invoked.
-/

import GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Basic

/-!
UNCOMPILED hostile fixtures for the independent polynomial certificate.
These statements concern the computed algebraic coefficient only. They do not
claim a checked transport to the normalized source integral or actual state.
-/

set_option autoImplicit false
namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Checks.Positive.SignConsequences

open GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Basic

theorem fixed_edge_is_negative : algebraicEdgeCoefficient 10 < 0 :=
  algebraicEdgeCoefficient_neg (by norm_num)

theorem fixed_edge_is_not_nonnegative : ¬ 0 ≤ algebraicEdgeCoefficient 10 := by
  exact not_le_of_gt fixed_edge_is_negative

theorem every_larger_edge_is_negative (A : ℝ) (hA : 10 ≤ A) :
    algebraicEdgeCoefficient A < 0 := algebraicEdgeCoefficient_neg hA

theorem positive_normalization_does_not_repair_sign :
    algebraicEdgeCoefficient 10 / (10 * (123 : ℝ)) < 0 :=
  algebraicEdgeCoefficient_normalized_neg (by norm_num) (by norm_num)

theorem eventual_nonnegative_route_is_refuted :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 0 ≤ algebraicEdgeCoefficient A :=
  not_eventually_algebraicEdgeCoefficient_nonneg

end GRWTSK.Analysis.RealAnalysis.RealFunctions.AlgebraicEdgeSign.Checks.Positive.SignConsequences
