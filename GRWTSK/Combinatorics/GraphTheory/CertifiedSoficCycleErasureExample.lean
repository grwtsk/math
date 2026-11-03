/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficCycleErasure
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficBoundedCatalogueExample

/-!
# A paid-loop, nonvacuous instance of automatic certified cycle erasure

The already published two-state graph has certified 0→0, 0→1, 1→1
transitions at allowance 1 and only monotone original certified edges.
The candidate graph additionally contains the false reverse shortcut.

This module removes the previously hand-proved path-shortening assumption
from the actual finite rational optimizer, proves exact global optimum 1,
and shows that a one-edge positive-cost closed loop can be erased to the
empty word without changing its ZERO signed endpoint defect.

No additional graph edges, theorem applications, arithmetic estimates,
source equivalences or new axioms are supplied.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCycleErasure.Example

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCycleErasure
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue.Example

/-- Formerly a separate user-supplied `CardinalityReduction` witness;
now a theorem for the original two-state certified lower relation. -/
theorem automatic_two_state_reduction :
    finiteGraph.CardinalityReduction (0 : Fin 2) (1 : Fin 2) :=
  finiteGraph.cardinalityReduction 0 1

/-- The already constructed exhaustive certified catalogue has optimal
real cost exactly 1, WITHOUT the former manual cycle-reduction input. -/
theorem automatic_two_state_optimum_one :
    (((finiteGraph.completeCoverage 0 1 direct_route_nonempty
      (finiteGraph.cardinalityReduction 0 1)).optimizedCost : ℚ) : ℝ) = 1 := by
  calc
    (((finiteGraph.completeCoverage 0 1 direct_route_nonempty
      (finiteGraph.cardinalityReduction 0 1)).optimizedCost : ℚ) : ℝ) =
        optimalCertifiedBudget twoState direct_route_nonempty :=
      finiteGraph.optimized_eq_infimum_unconditional 0 1 direct_route_nonempty
    _ = 1 := global_optimum_one

/-- A true original certified 0→0 loop pays allowance 1, but contributes
signed endpoint defect 0. Erasure removes its cost, not an arithmetic term. -/
def paidLoop : CertifiedTrace twoState (0 : Fin 2) [()] (0 : Fin 2) 0 1 := by
  simpa [twoState] using
    (CertifiedTrace.cons (M := twoState)
      (by decide : twoState.sandwich.lower (0 : Fin 2) () (0 : Fin 2))
      (CertifiedTrace.nil (M := twoState) (0 : Fin 2)))

/-- Applying the generic theorem to a positive-cost certified cycle
preserves the exact signed defect and produces a route shorter than two
edges with no larger allowance. -/
theorem paid_loop_reduces :
    ∃ (w : List Unit) (d b : ℝ),
      CertifiedTrace twoState (0 : Fin 2) w (0 : Fin 2) d b ∧
      w.length < Fintype.card (Fin 2) ∧ b ≤ (1 : ℝ) ∧ d = 0 := by
  exact certifiedTrace_cycle_erase twoState paidLoop

/-- A candidate-only reverse shortcut cannot be certified; the optimizer
only ever enumerates the true lower relation, before and after erasure. -/
theorem reverse_shortcut_still_unproved :
    twoState.sandwich.middle (1 : Fin 2) () (0 : Fin 2) ∧
      ¬ twoState.sandwich.lower (1 : Fin 2) () (0 : Fin 2) :=
  reverse_candidate_not_certified

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCycleErasure.Example
