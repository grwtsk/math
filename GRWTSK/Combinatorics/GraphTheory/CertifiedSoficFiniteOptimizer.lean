/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficOptimalBudget
import Mathlib

/-!
# A finite certified-path optimizer returning the global certified infimum

A finite list of ORIGINAL certified paths is optimized by an explicit rational
comparison recursion. Each listed route retains its original ordered word,
signed defect, full real allowance, exact rational cost, and `CertifiedTrace`
proof. A catalogue entry is never a candidate/upper graph edge.

A finite state/alphabet does NOT make the number of walks finite when cycles
exist. The `FiniteStateCoverage` record therefore requires two separately
visible obligations: every arbitrary certified path reduces to a bounded path
without increasing allowance, and every such bounded path has a no-more-
expensive representative in the supplied rational-cost catalogue. The length
cutoff is bounded by the state's cardinality but this alone does NOT prove
cycle elimination or exact enumeration. These hypotheses are meaningful
mathematical coverage obligations, not derived from diffusion/search scores.

Under those exact hypotheses, the finite optimizer returns a genuine certified
route whose real allowance EQUALS the infimum of ALL certified allowances in
`CertifiedSoficOptimalBudget`. The immutable source's initial defect is still
paid separately. Rational comparisons are executable; there is no unsupported
claim that arbitrary computable real inequalities can be decided.

The source is a Lean proof candidate, not an observed native proof or
source-to-runtime refinement. No new axioms or sorry placeholders are used.
-/
set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget

universe u v w

/-- An enumerated cost is computationally rational, but its proof is still
about the exact REAL allowance of one original certified word. -/
structure RationalCertifiedRoute {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (source target : Vertex) where
  word : List Label
  defect : ℝ
  allowance : ℝ
  rationalCost : ℚ
  trace : CertifiedTrace M source word target defect allowance
  cost_correct : (rationalCost : ℝ) = allowance

/-- Exactly one of the two original certified routes, selected using only
rational comparisons. Proofs and labels are not reconstructed or dropped. -/
def chooseCheaper {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (x y : RationalCertifiedRoute M source target) :
    RationalCertifiedRoute M source target :=
  if x.rationalCost ≤ y.rationalCost then x else y

theorem chooseCheaper_le_left {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (x y : RationalCertifiedRoute M source target) :
    (chooseCheaper x y).rationalCost ≤ x.rationalCost := by
  by_cases h : x.rationalCost ≤ y.rationalCost
  · simp [chooseCheaper, h]
  · have hlt : y.rationalCost < x.rationalCost := lt_of_not_ge h
    simpa [chooseCheaper, h] using (le_of_lt hlt)

theorem chooseCheaper_le_right {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (x y : RationalCertifiedRoute M source target) :
    (chooseCheaper x y).rationalCost ≤ y.rationalCost := by
  by_cases h : x.rationalCost ≤ y.rationalCost
  · simpa [chooseCheaper, h] using h
  · simp [chooseCheaper, h]

theorem chooseCheaper_eq_one {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (x y : RationalCertifiedRoute M source target) :
    chooseCheaper x y = x ∨ chooseCheaper x y = y := by
  by_cases h : x.rationalCost ≤ y.rationalCost
  · exact Or.inl (by simp [chooseCheaper, h])
  · exact Or.inr (by simp [chooseCheaper, h])

/-- Structural minimum over a NONEMPTY finite list, with stable tie breaking.
Unlike arbitrary-real comparison, the branch is decided on rational costs. -/
def minimumFrom {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (first : RationalCertifiedRoute M source target) :
    List (RationalCertifiedRoute M source target) →
      RationalCertifiedRoute M source target
  | [] => first
  | next :: rest => chooseCheaper first (minimumFrom next rest)

/-- A total API distinguishes an empty catalogue from a zero-budget path. -/
def optimizeFinite? {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex} :
    List (RationalCertifiedRoute M source target) →
      Option (RationalCertifiedRoute M source target)
  | [] => none
  | first :: rest => some (minimumFrom first rest)

theorem optimizeFinite_empty {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex} :
    optimizeFinite? (M := M) (source := source) (target := target) [] = none := rfl

/-- The selected route is no more expensive than the initial route. -/
theorem minimumFrom_le_first {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (first : RationalCertifiedRoute M source target)
    (rest : List (RationalCertifiedRoute M source target)) :
    (minimumFrom first rest).rationalCost ≤ first.rationalCost := by
  cases rest with
  | nil => exact le_refl _
  | cons next tail => exact chooseCheaper_le_left first (minimumFrom next tail)

/-- Every enumerated member, not only the first, bounds the optimizer. -/
theorem minimumFrom_le_member {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (first : RationalCertifiedRoute M source target)
    (rest : List (RationalCertifiedRoute M source target))
    (r : RationalCertifiedRoute M source target) :
    r ∈ rest → (minimumFrom first rest).rationalCost ≤ r.rationalCost := by
  induction rest generalizing first with
  | nil => intro h; cases h
  | cons next tail ih =>
      intro h
      rcases List.mem_cons.mp h with heq | htail
      · subst r
        exact (chooseCheaper_le_right first (minimumFrom next tail)).trans
          (minimumFrom_le_first next tail)
      · exact (chooseCheaper_le_right first (minimumFrom next tail)).trans
          (ih next htail)

/-- There is no synthesized numerical-only route: the optimizer returns
exactly one supplied original proof-bearing catalogue entry. -/
theorem minimumFrom_origin {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (first : RationalCertifiedRoute M source target)
    (rest : List (RationalCertifiedRoute M source target)) :
    minimumFrom first rest = first ∨ minimumFrom first rest ∈ rest := by
  induction rest generalizing first with
  | nil => exact Or.inl rfl
  | cons next tail ih =>
      rcases chooseCheaper_eq_one first (minimumFrom next tail) with hfirst | htail
      · exact Or.inl hfirst
      · right
        rw [htail]
        rcases ih next with hnext | hm
        · simp [hnext]
        · simp [hm]

/-- The local finite-state coverage contract. Both fields are necessary:
finite vertices and finite labels alone do not bound cyclic walks. The
rational-route catalogue must cover the reduced REAL-cost paths. -/
structure FiniteStateCoverage {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (M : DefectSoficSystem Vertex Label) (source target : Vertex) where
  cutoff : ℕ
  cutoff_le_card : cutoff ≤ Fintype.card Vertex
  first : RationalCertifiedRoute M source target
  rest : List (RationalCertifiedRoute M source target)
  first_bounded : first.word.length ≤ cutoff
  rest_bounded : ∀ r ∈ rest, r.word.length ≤ cutoff
  /-- Cycle removal / bounded path reduction, including the allowance. -/
  reduced : ∀ {word : List Label} {defect allowance : ℝ},
    CertifiedTrace M source word target defect allowance →
      ∃ (w : List Label) (d b : ℝ),
        CertifiedTrace M source w target d b ∧
        w.length ≤ cutoff ∧ b ≤ allowance
  /-- Actual finite catalogue coverage of bounded certified paths.
  A candidate edge, missing path, or irrational cost is not accepted for free. -/
  enumerated : ∀ {word : List Label} {defect allowance : ℝ},
    CertifiedTrace M source word target defect allowance →
    word.length ≤ cutoff →
      ∃ r : RationalCertifiedRoute M source target,
        (r = first ∨ r ∈ rest) ∧ r.allowance ≤ allowance

/-- Unbounded certified words are dominated by entries in the finite catalog.
This is a DERIVED property; it is not an extra black-box field of coverage. -/
theorem FiniteStateCoverage.covers_all {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (C : FiniteStateCoverage M source target)
    {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    ∃ r : RationalCertifiedRoute M source target,
      (r = C.first ∨ r ∈ C.rest) ∧ r.allowance ≤ allowance := by
  obtain ⟨w, d, b, shortened, hlength, hle⟩ := C.reduced trace
  obtain ⟨r, hmember, hbudget⟩ := C.enumerated shortened hlength
  exact ⟨r, hmember, hbudget.trans hle⟩

/-- The selected original route, retaining its certified proof and word. -/
def FiniteStateCoverage.optimizedRoute {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (C : FiniteStateCoverage M source target) :
    RationalCertifiedRoute M source target :=
  minimumFrom C.first C.rest

/-- The arithmetic part of the optimizer can be evaluated using exact ℚ. -/
def FiniteStateCoverage.optimizedCost {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (C : FiniteStateCoverage M source target) : ℚ :=
  C.optimizedRoute.rationalCost

theorem FiniteStateCoverage.optimizedCost_le_entry {Vertex : Type u}
    {Label : Type v} [Fintype Vertex] [Fintype Label]
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (C : FiniteStateCoverage M source target)
    (r : RationalCertifiedRoute M source target)
    (h : r = C.first ∨ r ∈ C.rest) :
    C.optimizedCost ≤ r.rationalCost := by
  rcases h with h | h
  · subst r
    exact minimumFrom_le_first C.first C.rest
  · exact minimumFrom_le_member C.first C.rest r h

/-- THE MAIN THEOREM. An actual finite rational minimizer equals the infimum
of the COMPLETE ORIGINAL certified allowance set, not only the finite list.
The explicit finite-state coverage obligations are consumed exactly here. -/
theorem FiniteStateCoverage.optimized_eq_global_infimum
    {Vertex : Type u} {Label : Type v} [Fintype Vertex] [Fintype Label]
    {M : DefectSoficSystem Vertex Label} {source target : Vertex}
    (C : FiniteStateCoverage M source target) :
    (C.optimizedCost : ℝ) =
      optimalCertifiedBudget M (certifiedAllowanceSet_nonempty M C.first.trace) := by
  apply le_antisymm
  · apply le_csInf (certifiedAllowanceSet_nonempty M C.first.trace)
    intro budget hbudget
    obtain ⟨word, defect, trace⟩ := hbudget
    obtain ⟨r, hmember, hle⟩ := C.covers_all trace
    have hmin : C.optimizedCost ≤ r.rationalCost :=
      C.optimizedCost_le_entry r hmember
    calc
      (C.optimizedCost : ℝ) ≤ (r.rationalCost : ℝ) := by exact_mod_cast hmin
      _ = r.allowance := r.cost_correct
      _ ≤ budget := hle
  · have hroute : C.optimizedRoute.allowance ∈
        CertifiedAllowanceSet M source target :=
      ⟨C.optimizedRoute.word, C.optimizedRoute.defect,
        C.optimizedRoute.trace⟩
    calc
      optimalCertifiedBudget M (certifiedAllowanceSet_nonempty M C.first.trace) ≤
          C.optimizedRoute.allowance :=
        optimal_le_each_certified_allowance M
          (certifiedAllowanceSet_nonempty M C.first.trace) hroute
      _ = (C.optimizedCost : ℝ) := C.optimizedRoute.cost_correct.symm

/-- Nonempty finite coverage cannot be supplied when the original certified
relation contains no source-to-target path. An empty graph is NOT zero cost. -/
theorem no_finite_coverage_of_no_route
    {Vertex : Type u} {Label : Type v} [Fintype Vertex] [Fintype Label]
    (M : DefectSoficSystem Vertex Label) (source target : Vertex)
    (h : ¬ (CertifiedAllowanceSet M source target).Nonempty) :
    ¬ Nonempty (FiniteStateCoverage M source target) := by
  intro ⟨C⟩
  exact h (certifiedAllowanceSet_nonempty M C.first.trace)

/-- The immutable source's initial readout defect remains part of the bound,
with the *computed* optimum replacing the abstract global infimum. -/
theorem SourceAnchored.finite_optimized_source_return
    {Source : Type w} {Vertex : Type u} {Label : Type v}
    [Fintype Vertex] [Fintype Label]
    (A : SourceAnchored Source Vertex Label) (x : Source)
    {target : Vertex}
    (C : FiniteStateCoverage A.system (A.encode x) target) :
    |A.original x - A.system.readout target| ≤
      A.initialAllowance x + (C.optimizedCost : ℝ) := by
  have h := A.optimal_source_return x
    (certifiedAllowanceSet_nonempty A.system C.first.trace)
  rw [← C.optimized_eq_global_infimum] at h
  exact h

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer
