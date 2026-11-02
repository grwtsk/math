/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficBoundedCatalogue

/-!
# Nonvacuous finite original graph, paid loops, exact optimizer equality

The certified two-state graph permits 0->0, 0->1, 1->1, each with cost 1.
The candidate/upper language allows arbitrary reverse shortcuts, but the
certificate enumerator uses only the ORIGINAL monotone lower relation.
For the certified 0->1 target, direct travel costs 1. Every longer route
has at least that budget, so it can be replaced by the direct route.
This proves the required finite-cardinality reduction, not merely assumes it.
The new generic generator constructs ALL bounded traces and discharges the
former `FiniteStateCoverage.enumerated` premise without human cataloguing.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue.Example

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue

/-- The original graph has its true state order; candidates are deliberately
more permissive and cannot be used as certificates. -/
def twoState : DefectSoficSystem (Fin 2) Unit where
  sandwich := {
    lower := fun s _ t => s.val ≤ t.val
    middle := fun _ _ _ => True
    upper := fun _ _ _ => True
    lower_le_middle := by intro s t l h; trivial
    middle_le_upper := by intro s t l h; trivial
  }
  readout := fun s => (s.val : ℝ)
  edgeDefect := fun s _ t => (s.val : ℝ) - (t.val : ℝ)
  edgeAllowance := fun _ _ _ => 1
  edgeReturn := by
    intro s t l h
    dsimp
    ring
  edgeAllowance_nonneg := by
    intro s t l h
    norm_num
  edgeBound := by
    intro s t l h
    fin_cases s <;> fin_cases t <;> norm_num at h ⊢

/-- Each original certified edge has integer (hence rational) exact cost 1. -/
def finiteGraph : FiniteRationalCertifiedGraph (Fin 2) Unit where
  system := twoState
  edgeCost := fun _ _ _ => 1
  decideLower := fun s l t => inferInstance
  rationalAllowance := by
    intro s t l h
    norm_num [twoState]

/-- The original certified direct word retains its signed defect -1. -/
def direct : CertifiedTrace twoState (0 : Fin 2) [()] (1 : Fin 2) (-1) 1 := by
  simpa [twoState] using
    (CertifiedTrace.cons (M := twoState)
      (by decide : twoState.sandwich.lower (0 : Fin 2) () (1 : Fin 2))
      (CertifiedTrace.nil (M := twoState) (1 : Fin 2)))

/-- A source-grounded route: the candidate-only reverse step 1->0 does not
provide such a witness. -/
theorem direct_route_nonempty :
    (CertifiedAllowanceSet twoState (0 : Fin 2) (1 : Fin 2)).Nonempty :=
  certifiedAllowanceSet_nonempty twoState direct

/-- Actual nonnegative cycle reduction on this finite ORIGINAL graph.
Any arbitrary certified 0->1 path pays at least the endpoint discrepancy 1;
the source-faithful direct edge is therefore never more expensive. -/
theorem reduce_to_cardinality :
    finiteGraph.CardinalityReduction (0 : Fin 2) (1 : Fin 2) := by
  intro word defect allowance trace
  refine ⟨[()], -1, 1, direct, by decide, ?_⟩
  have hbound := trace.exact_and_bounded.2.2
  have heq : (twoState.readout (0 : Fin 2) -
      twoState.readout (1 : Fin 2)) = defect := by
    linarith [trace.exact_and_bounded.1]
  rw [← heq] at hbound
  norm_num [twoState] at hbound
  exact hbound

/-- The original start-to-target path and proved reduction now generate
an automatically enumerated full catalogue, not a supplied list of routes. -/
noncomputable def complete : FiniteStateCoverage twoState (0 : Fin 2) (1 : Fin 2) :=
  finiteGraph.completeCoverage 0 1 direct_route_nonempty reduce_to_cardinality

/-- The finite generated optimum is the infimum of ALL original paths. -/
theorem optimum_equals_global :
    (complete.optimizedCost : ℝ) =
      optimalCertifiedBudget twoState direct_route_nonempty := by
  exact finiteGraph.optimized_eq_infimum 0 1 direct_route_nonempty reduce_to_cardinality

/-- The direct exact cost 1 is also a global lower bound, independent of how
many paid cycles another certified route contains. -/
theorem global_optimum_one :
    optimalCertifiedBudget twoState direct_route_nonempty = 1 := by
  exact optimal_eq_tight_certified_allowance twoState direct (by
    norm_num [twoState])

/-- Consequently the optimizer returns rational cost 1 without assuming
that the user supplied the winning route or the full route catalogue. -/
theorem enumerated_cost_one : complete.optimizedCost = (1 : ℚ) := by
  have h := optimum_equals_global
  rw [global_optimum_one] at h
  exact_mod_cast h

/-- False reverse candidate transition cannot be assigned a proof-bearing
zero-allowance route, despite broad lexical/discovery graph inclusion. -/
theorem reverse_candidate_not_certified :
    twoState.sandwich.middle (1 : Fin 2) () (0 : Fin 2) ∧
      ¬ twoState.sandwich.lower (1 : Fin 2) () (0 : Fin 2) := by
  constructor
  · trivial
  · norm_num [twoState]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue.Example
