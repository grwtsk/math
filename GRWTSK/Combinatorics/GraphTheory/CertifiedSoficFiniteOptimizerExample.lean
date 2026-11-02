/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficFiniteOptimizer

/-!
# Nontrivial finite example: one paid loop and a cheaper direct route

The actual finite certified graph has three states, one label, all monotone
edges, an exact real readout, and a positive allowance for a stationary loop.
The source/target 0->2 route has a certified direct cost 2; the loop+direct
route has a certified cost 3. The finite catalogue carries BOTH ORIGINAL
traces. The coverage hypotheses are discharged by the direct trace and the
exact source-discrepancy inequality for EVERY certified original trace.

Candidate-only reverse shortcuts remain excluded by the lower relation.
This is a source proof candidate, not native checked compilation.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer.Example

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer

/-- Every certified edge is monotone, but discovery accepts anything. -/
def threeState : DefectSoficSystem (Fin 3) Unit where
  sandwich := {
    lower := fun s _ t => s.val ≤ t.val
    middle := fun _ _ _ => True
    upper := fun _ _ _ => True
    lower_le_middle := by intro s t label h; trivial
    middle_le_upper := by intro s t label h; trivial
  }
  readout := fun s => (s.val : ℝ)
  edgeDefect := fun s _ t => (s.val : ℝ) - (t.val : ℝ)
  edgeAllowance := fun s _ t =>
    |(s.val : ℝ) - (t.val : ℝ)| + (if s = t then 1 else 0)
  edgeReturn := by
    intro s t label h
    dsimp
    ring
  edgeAllowance_nonneg := by
    intro s t label h
    dsimp
    apply add_nonneg (abs_nonneg _)
    split_ifs <;> norm_num
  edgeBound := by
    intro s t label h
    dsimp
    apply le_add_of_nonneg_right
    split_ifs <;> norm_num

/-- A directly certified route, with exact signed defect -2 and cost 2. -/
def direct : RationalCertifiedRoute threeState (0 : Fin 3) (2 : Fin 3) where
  word := [()]
  defect := -2
  allowance := 2
  rationalCost := 2
  trace := by
    simpa [threeState] using
      (CertifiedTrace.cons (M := threeState)
        (by decide : threeState.sandwich.lower (0 : Fin 3) () (2 : Fin 3))
        (CertifiedTrace.nil (M := threeState) (2 : Fin 3)))
  cost_correct := by norm_num

/-- A legal extra loop costs 1, so loop+direct costs 3, not 2. -/
def loopThenDirect : RationalCertifiedRoute threeState (0 : Fin 3) (2 : Fin 3) where
  word := [(), ()]
  defect := -2
  allowance := 3
  rationalCost := 3
  trace := by
    simpa [threeState] using
      (CertifiedTrace.cons (M := threeState)
        (by decide : threeState.sandwich.lower (0 : Fin 3) () (0 : Fin 3))
        (CertifiedTrace.cons (M := threeState)
          (by decide : threeState.sandwich.lower (0 : Fin 3) () (2 : Fin 3))
          (CertifiedTrace.nil (M := threeState) (2 : Fin 3))))
  cost_correct := by norm_num

/-- All certified paths from 0 to 2 cost at least the ACTUAL signed endpoint
readout discrepancy. This does not rely on a particular path's length. -/
theorem direct_is_lower_bound {word : List Unit} {d b : ℝ}
    (trace : CertifiedTrace threeState (0 : Fin 3) word (2 : Fin 3) d b) :
    (2 : ℝ) ≤ b := by
  obtain ⟨hreturn, _, hbound⟩ := trace.exact_and_bounded
  have hd : threeState.readout (0 : Fin 3) -
      threeState.readout (2 : Fin 3) = d := by linarith
  rw [← hd] at hbound
  norm_num [threeState] at hbound
  exact hbound

/-- Genuine finite-state coverage: a direct certified path of length 1
replaces any path without increasing the original allowance, including
arbitrarily many costly loops. Both catalogue paths remain source-exact. -/
def covered : FiniteStateCoverage threeState (0 : Fin 3) (2 : Fin 3) where
  cutoff := 2
  cutoff_le_card := by decide
  first := loopThenDirect
  rest := [direct]
  first_bounded := by decide
  rest_bounded := by
    intro r hr
    simp only [List.mem_singleton] at hr
    subst r
    decide
  reduced := by
    intro word defect allowance trace
    refine ⟨direct.word, direct.defect, direct.allowance,
      direct.trace, ?_, ?_⟩
    · decide
    · exact direct_is_lower_bound trace
  enumerated := by
    intro word defect allowance trace hlength
    exact ⟨direct, Or.inr (by simp), direct_is_lower_bound trace⟩

/-- In this finite ORIGINAL graph, the finite optimizer attains the full
unbounded certified infimum; no graph-similarity implication is assumed. -/
theorem finite_example_matches_global_infimum :
    (covered.optimizedCost : ℝ) =
      optimalCertifiedBudget threeState
        (certifiedAllowanceSet_nonempty threeState loopThenDirect.trace) :=
  covered.optimized_eq_global_infimum

/-- The decision really uses the cheaper route, not the first listed route. -/
theorem finite_example_returns_cost_two : covered.optimizedCost = (2 : ℚ) := by
  norm_num [FiniteStateCoverage.optimizedCost, FiniteStateCoverage.optimizedRoute,
    covered, minimumFrom, chooseCheaper, direct, loopThenDirect]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer.Example
