/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficBoundedCatalogue
import GRWTSK.Combinatorics.GraphTheory.CheckedApplicationSoficBridge

/-!
# A genuine proof-bearing application on every optimized original edge

This is a typed consumer of the exact, finite certified-path enumerator. The
underlying `CheckedApplicationSystem` already requires a genuine Lean
`InstantiatedApplication` AND actual proofs for EVERY premise of EVERY
certified edge. The rational-cost source presentation references exactly the
same quantitative `DefectSoficSystem` field: no separate or copied graph.

The global optimizer supplies a concrete selected original word and a
`CertifiedTrace`. Turning it into an `AppliedWord` uses the existing checked
application witness for each lower edge. The global infimum and original signed
observation bound come from the source-level optimizer, not graph similarity.

This does not authenticate a Lean.Expr against Git source bytes, infer missing
proof terms, or establish native Lean verification. The finite graph is a
selected finite verified source domain, not the full arithmetic/PDE universe.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCheckedOptimization

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

universe u v w z

/-- The SAME original source semantics underlies both the finite path
costs and the all-premises theorem application on each certified edge. -/
structure CheckedFiniteRationalGraph (Atom : Type u) (Meaning : Atom → Prop)
    (Vertex : Type v) (Label : Type w)
    [Fintype Vertex] [Fintype Label] where
  checked : CheckedApplicationSystem Atom Meaning Vertex Label
  edgeCost : Vertex → Label → Vertex → ℚ
  decideLower : ∀ s l t,
    Decidable (checked.quantitative.sandwich.lower s l t)
  costCorrect : ∀ {s t : Vertex} {l : Label},
    checked.quantitative.sandwich.lower s l t →
      ((edgeCost s l t : ℚ) : ℝ) =
        checked.quantitative.edgeAllowance s l t

variable {Atom : Type u} {Meaning : Atom → Prop}
  {Vertex : Type v} {Label : Type w}
  [Fintype Vertex] [Fintype Label] [DecidableEq Vertex] [DecidableEq Label]

/-- No second graph or representation: the finite cost oracle is installed
on the existing proof-bearing network's exact original lower relation. -/
def CheckedFiniteRationalGraph.presentation
    (D : CheckedFiniteRationalGraph Atom Meaning Vertex Label) :
    FiniteRationalCertifiedGraph Vertex Label where
  system := D.checked.quantitative
  edgeCost := D.edgeCost
  decideLower := D.decideLower
  rationalAllowance := D.costCorrect

/-- An optimizer route is proof-bearing, not merely source-index metadata.
Each of its edges has all original instantiated premises. -/
theorem CheckedFiniteRationalGraph.optimized_has_applied_word
    (D : CheckedFiniteRationalGraph Atom Meaning Vertex Label)
    (s t : Vertex)
    (hroute : (CertifiedAllowanceSet D.checked.quantitative s t).Nonempty)
    (hreduce : D.presentation.CardinalityReduction s t) :
    AppliedWord D.checked s
      (D.presentation.completeCoverage s t hroute hreduce).optimizedRoute.word
      t := by
  let C := D.presentation.completeCoverage s t hroute hreduce
  exact AppliedWord.ofWordPath D.checked C.optimizedRoute.trace.toWordPath

/-- Global infimum, optimal original route, every-edge theorem evidence and
an exact signed observation return are connected IN ONE consumer theorem.
The proof of the route's existence, all premises and the budget is retained. -/
theorem CheckedFiniteRationalGraph.optimized_proof_and_bound
    (D : CheckedFiniteRationalGraph Atom Meaning Vertex Label)
    (s t : Vertex)
    (hroute : (CertifiedAllowanceSet D.checked.quantitative s t).Nonempty)
    (hreduce : D.presentation.CardinalityReduction s t) :
    ∃ r : RationalCertifiedRoute D.checked.quantitative s t,
      AppliedWord D.checked s r.word t ∧
      D.checked.quantitative.readout s =
        D.checked.quantitative.readout t + r.defect ∧
      |r.defect| ≤ r.allowance ∧
      ((r.rationalCost : ℚ) : ℝ) =
        optimalCertifiedBudget D.checked.quantitative hroute := by
  let C := D.presentation.completeCoverage s t hroute hreduce
  let r := C.optimizedRoute
  refine ⟨r, ?_, ?_, ?_, ?_⟩
  · exact AppliedWord.ofWordPath D.checked r.trace.toWordPath
  · exact r.trace.exact_and_bounded.1
  · exact r.trace.exact_and_bounded.2.2
  · exact D.presentation.optimized_eq_infimum s t hroute hreduce

/-- A selected original path proves the exact expected rule conclusion at
EVERY certified edge (joint premises remain a conjunction). Any missing
application blocks admission, independently of the numerical optimum. -/
theorem CheckedFiniteRationalGraph.optimized_word_exists
    (D : CheckedFiniteRationalGraph Atom Meaning Vertex Label)
    (s t : Vertex)
    (hroute : (CertifiedAllowanceSet D.checked.quantitative s t).Nonempty)
    (hreduce : D.presentation.CardinalityReduction s t) :
    ∃ (word : List Label) (defect allowance : ℝ),
      CertifiedTrace D.checked.quantitative s word t defect allowance ∧
      AppliedWord D.checked s word t ∧
      D.checked.quantitative.readout s =
        D.checked.quantitative.readout t + defect ∧
      |defect| ≤ allowance := by
  let C := D.presentation.completeCoverage s t hroute hreduce
  let r := C.optimizedRoute
  exact ⟨r.word, r.defect, r.allowance, r.trace,
    AppliedWord.ofWordPath D.checked r.trace.toWordPath,
    r.trace.exact_and_bounded.1, r.trace.exact_and_bounded.2.2⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficCheckedOptimization
