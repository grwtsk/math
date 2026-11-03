/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CheckedApplicationSoficBridge
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Tactic

/-!
# Infimum of exact, source-preserving certified sofic error allowances

Existing `CertifiedTrace.exact_and_bounded` gives an exact signed defect and
an additive nonnegative allowance for ONE certified source-to-target word;
`certified_two_route_min_bound` handles two routes. This module constructs
the mathematically optimal lower envelope across EVERY certified word with
the same original endpoints, without assigning zero cost to the empty set.

The certificate predicate is the existing LOWER relation. Candidate/upper
search edges, graph-diffusion rank, or path labels alone never enter the set.
A nonempty witness is explicitly required when forming a meaningful infimum.
The infimum need not be realized by a finite path; this is NOT a shortest-path
algorithm, finite-state language completeness theorem, Lean.Expr extractor,
math result for RH/NS, or native proof acceptance record.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

universe u v w

/-- Each allowance must belong to an ORIGINAL certified word and its
exact accumulated signed defect, rather than being supplied by a search rank. -/
def CertifiedAllowanceSet {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (source target : Vertex) : Set ℝ :=
  { allowance | ∃ (word : List Label) (defect : ℝ),
    CertifiedTrace M source word target defect allowance }

/-- Any paid certified trace supplies a nonempty budget set. -/
theorem certifiedAllowanceSet_nonempty
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label)
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    (CertifiedAllowanceSet M source target).Nonempty := by
  exact ⟨allowance, ⟨word, defect, trace⟩⟩

/-- Every admissible allowance is nonnegative, even on cyclic words. -/
theorem certifiedAllowanceSet_nonnegative
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (source target : Vertex)
    {allowance : ℝ} (h : allowance ∈ CertifiedAllowanceSet M source target) :
    0 ≤ allowance := by
  obtain ⟨word, defect, trace⟩ := h
  exact trace.exact_and_bounded.2.1

/-- The set is bounded from below independently of finiteness of the
vertices, labels, or the number of alternative certified words. -/
theorem certifiedAllowanceSet_bddBelow
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (source target : Vertex) :
    BddBelow (CertifiedAllowanceSet M source target) := by
  refine ⟨0, ?_⟩
  intro allowance h
  exact certifiedAllowanceSet_nonnegative M source target h

/-- The exact source/target observation discrepancy is a common lower bound
of ALL certified allowances, not a quantity inferred from graph similarity. -/
theorem absolute_source_discrepancy_lower_bound
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (source target : Vertex)
    {allowance : ℝ} (h : allowance ∈ CertifiedAllowanceSet M source target) :
    |M.readout source - M.readout target| ≤ allowance := by
  obtain ⟨word, defect, trace⟩ := h
  have hr := trace.exact_and_bounded
  have hd : M.readout source - M.readout target = defect := by
    linarith [hr.1]
  rw [hd]
  exact hr.2.2

/-- The witness is part of the API: absent a certified route, no theorem may
present an infimum as a certified finite-path error bound. -/
noncomputable def optimalCertifiedBudget
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) {source target : Vertex}
    (_route : (CertifiedAllowanceSet M source target).Nonempty) : ℝ :=
  sInf (CertifiedAllowanceSet M source target)

/-- Every certified word is accounted for; an optimal envelope is no larger
than ANY of its paid allowances. This does not claim the infimum is attained. -/
theorem optimal_le_each_certified_allowance
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) {source target : Vertex}
    (route : (CertifiedAllowanceSet M source target).Nonempty)
    {allowance : ℝ} (h : allowance ∈ CertifiedAllowanceSet M source target) :
    optimalCertifiedBudget M route ≤ allowance := by
  exact csInf_le (certifiedAllowanceSet_bddBelow M source target) h

/-- Every certified path measures the SAME exact endpoint discrepancy.
Consequently its absolute value lies below the globally optimal bound. -/
theorem absolute_discrepancy_le_optimal
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) {source target : Vertex}
    (route : (CertifiedAllowanceSet M source target).Nonempty) :
    |M.readout source - M.readout target| ≤
      optimalCertifiedBudget M route := by
  exact le_csInf route (fun allowance h =>
    absolute_source_discrepancy_lower_bound M source target h)

/-- The resulting envelope cannot be negative. A zero budget therefore
requires actual zero discrepancy, not merely a zero path-search score. -/
theorem optimal_nonnegative
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) {source target : Vertex}
    (route : (CertifiedAllowanceSet M source target).Nonempty) :
    0 ≤ optimalCertifiedBudget M route := by
  exact (abs_nonneg _).trans (absolute_discrepancy_le_optimal M route)

/-- If one certified route actually attains the smallest possible endpoint
allowance, its value equals the optimal envelope. -/
theorem optimal_eq_tight_certified_allowance
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label)
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance)
    (tight : allowance = |M.readout source - M.readout target|) :
    optimalCertifiedBudget M
      (certifiedAllowanceSet_nonempty M trace) = allowance := by
  apply le_antisymm
  · exact optimal_le_each_certified_allowance M
      (certifiedAllowanceSet_nonempty M trace) ⟨word, defect, trace⟩
  · rw [tight]
    exact absolute_discrepancy_le_optimal M
      (certifiedAllowanceSet_nonempty M trace)

/-- This is the actual source-return consumer: the immutable original
observation has an independently paid INITIAL defect, then pays the
optimal certified path allowance. No mixed or missing source term disappears. -/
theorem SourceAnchored.optimal_source_return
    {Source : Type w} {Vertex : Type u} {Label : Type v}
    (A : SourceAnchored Source Vertex Label) (x : Source)
    {target : Vertex}
    (route : (CertifiedAllowanceSet A.system (A.encode x) target).Nonempty) :
    |A.original x - A.system.readout target| ≤
      A.initialAllowance x + optimalCertifiedBudget A.system route := by
  have hpath := absolute_discrepancy_le_optimal A.system route
  have hsource : A.original x - A.system.readout target =
      A.initialDefect x +
        (A.system.readout (A.encode x) - A.system.readout target) := by
    rw [A.initialReturn x]
    ring
  rw [hsource]
  calc
    |A.initialDefect x +
        (A.system.readout (A.encode x) - A.system.readout target)| ≤
        |A.initialDefect x| +
          |A.system.readout (A.encode x) - A.system.readout target| :=
      abs_add_le _ _
    _ ≤ A.initialAllowance x + optimalCertifiedBudget A.system route :=
      add_le_add (A.initialBound x) hpath

/-- An already checked application word has a NONEMPTY original lower
path, so it can consume the optimal envelope without candidate promotion. -/
theorem checkedApplicationWord_hasOptimalReturn
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    (A : CheckedApplicationSystem Atom Meaning Vertex Label)
    {source target : Vertex} {word : List Label}
    (applied : AppliedWord A source word target) :
    ∃ route : (CertifiedAllowanceSet A.quantitative source target).Nonempty,
      |A.quantitative.readout source - A.quantitative.readout target| ≤
        optimalCertifiedBudget A.quantitative route := by
  obtain ⟨defect, allowance, trace⟩ :=
    exists_certifiedTrace (M := A.quantitative) applied.toWordPath
  exact ⟨certifiedAllowanceSet_nonempty A.quantitative trace,
    absolute_discrepancy_le_optimal A.quantitative
      (certifiedAllowanceSet_nonempty A.quantitative trace)⟩

/-- Hostile check: every actual Nat-transitivity lower edge is monotone,
which remains true along arbitrarily long certified words. -/
theorem nat_certified_word_monotone
    {source target : ℕ} {word : List ℕ} {defect allowance : ℝ}
    (trace : CertifiedTrace NatTransitivityExample.network.quantitative
      source word target defect allowance) : source ≤ target := by
  induction trace with
  | nil vertex => exact Nat.le_refl _
  | @cons source middle target label word defect allowance edge tail ih =>
      change source ≤ label ∧ label ≤ middle at edge
      exact edge.1.trans (edge.2.trans ih)

/-- A candidate graph may contain 3 -> 1 while the certified graph has
NO SUCH PATH of ANY length. Its missing path has no optimal-budget witness. -/
theorem no_certified_nat_route_three_to_one :
    ¬ (CertifiedAllowanceSet NatTransitivityExample.network.quantitative
      3 1).Nonempty := by
  rintro ⟨allowance, word, defect, trace⟩
  exact (by decide : ¬ (3 ≤ 1)) (nat_certified_word_monotone trace)

/-- Nonvacuous original example: the existing checked source-word path
0 --[1]--> 3 --[3]--> 4 induces a certified optimal envelope. -/
theorem nat_source_word_has_optimal_envelope :
    ∃ route : (CertifiedAllowanceSet NatTransitivityExample.network.quantitative
      0 4).Nonempty,
      |NatTransitivityExample.network.quantitative.readout 0 -
        NatTransitivityExample.network.quantitative.readout 4| ≤
        optimalCertifiedBudget NatTransitivityExample.network.quantitative
          route := by
  obtain ⟨defect, allowance, trace⟩ :=
    exists_certifiedTrace (M := NatTransitivityExample.network.quantitative)
      NatTransitivityExample.sourceWord
  exact ⟨certifiedAllowanceSet_nonempty _ trace,
    absolute_discrepancy_le_optimal _
      (certifiedAllowanceSet_nonempty _ trace)⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
