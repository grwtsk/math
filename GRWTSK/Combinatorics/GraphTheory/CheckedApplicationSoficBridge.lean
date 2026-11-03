/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DefectEnrichedSoficLanguage
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.InstantiatedRuleCertificates
import Mathlib.Tactic

/-!
# Proof-bearing inference applications as certified quantitative sofic edges

The existing `InstantiatedApplication` contains a REAL Lean term proving a
conclusion from all listed premises, while `DefectSoficSystem` demands the exact
signed observation return and nonnegative numerical allowance of each certified
edge. This module binds BOTH obligations to the same certified edge and proves
that complete certified words retain both meanings.

A claimed Git reference does not create a proof. Candidate/admissible edges are
not automatically certified. This is manual, elaboration-bound instantiation;
extraction of arbitrary Lean.Expr applications and runtime refinement remain OPEN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

universe u v w

/-- A lower/certified transition has an actual theorem-application term AND
proofs of ALL premises. Its quantitative return is checked separately by the
existing DefectSoficSystem, never inferred from a theorem's name. -/
structure CheckedApplicationSystem (Atom : Type u) (Meaning : Atom → Prop)
    (Vertex : Type v) (Label : Type w) where
  quantitative : DefectSoficSystem Vertex Label
  /-- The exact expected instantiated rule depends on the original source,
  transition label and target; unrelated theorem proofs are rejected. -/
  expectedRule : Vertex → Label → Vertex →
    GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Rule Atom
  certifiedApplication :
    ∀ {source target : Vertex} {label : Label},
      quantitative.sandwich.lower source label target →
        ∃ application : InstantiatedApplication Atom Meaning,
          application.rule = expectedRule source label target ∧
            (∀ p, p ∈ application.rule.premises → Meaning p)

/-- A genuine certified edge supplies the interpreted conclusion of an
actual proof-bearing application. An arbitrary metadata field is never used. -/
theorem certified_edge_proves_conclusion
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    (A : CheckedApplicationSystem Atom Meaning Vertex Label)
    {source target : Vertex} {label : Label}
    (edge : A.quantitative.sandwich.lower source label target) :
    Meaning (A.expectedRule source label target).conclusion := by
  obtain ⟨application, heq, hp⟩ := A.certifiedApplication edge
  rw [← heq]
  exact application.consequence hp

/-- Every transition in an accepted proof word retains a real application
with all its hypotheses; no whole-word admission can manufacture an edge. -/
inductive AppliedWord
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    (A : CheckedApplicationSystem Atom Meaning Vertex Label) :
    Vertex → List Label → Vertex → Prop where
  | nil (vertex : Vertex) : AppliedWord A vertex [] vertex
  | cons {source middle target : Vertex} {label : Label}
      {word : List Label}
      (edge : A.quantitative.sandwich.lower source label middle)
      (application : InstantiatedApplication Atom Meaning)
      (matches : application.rule = A.expectedRule source label middle)
      (premises : ∀ p, p ∈ application.rule.premises → Meaning p)
      (tail : AppliedWord A middle word target) :
      AppliedWord A source (label :: word) target

/-- Erase precisely the term annotations, retaining the original certified
sofic word and its ordered states. -/
theorem AppliedWord.toWordPath
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    {A : CheckedApplicationSystem Atom Meaning Vertex Label}
    {source target : Vertex} {word : List Label}
    (trace : AppliedWord A source word target) :
    WordPath A.quantitative.sandwich.lower source word target := by
  induction trace with
  | nil vertex => exact WordPath.nil vertex
  | cons edge application matches premises tail ih => exact WordPath.cons edge ih

/-- Conversely, a *certified* sofic word can carry all its checked theorem
applications. This says nothing about candidate/admissible-only words. -/
theorem AppliedWord.ofWordPath
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    (A : CheckedApplicationSystem Atom Meaning Vertex Label)
    {source target : Vertex} {word : List Label}
    (path : WordPath A.quantitative.sandwich.lower source word target) :
    AppliedWord A source word target := by
  induction path with
  | nil vertex => exact AppliedWord.nil vertex
  | cons edge tail ih =>
      obtain ⟨application, matches, premises⟩ := A.certifiedApplication edge
      exact AppliedWord.cons edge application matches premises ih

/-- A checked application trace returns the original numeric observation
with a specific signed defect and an explicitly bounded total allowance. -/
theorem AppliedWord.exists_quantitative_return
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    {A : CheckedApplicationSystem Atom Meaning Vertex Label}
    {source target : Vertex} {word : List Label}
    (trace : AppliedWord A source word target) :
    ∃ defect allowance : ℝ,
      CertifiedTrace A.quantitative source word target defect allowance ∧
      A.quantitative.readout source =
        A.quantitative.readout target + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance := by
  obtain ⟨defect, allowance, signed⟩ :=
    exists_certifiedTrace (M := A.quantitative) trace.toWordPath
  obtain ⟨heq, hnonneg, hbound⟩ := signed.exact_and_bounded
  exact ⟨defect, allowance, signed, heq, hnonneg, hbound⟩

/-- The introduction of application certificates does not change the
finite-word language: it recognizes exactly the certified lower relation. -/
theorem appliedWord_iff_certifiedWord
    {Atom : Type u} {Meaning : Atom → Prop}
    {Vertex : Type v} {Label : Type w}
    (A : CheckedApplicationSystem Atom Meaning Vertex Label)
    {source target : Vertex} {word : List Label} :
    AppliedWord A source word target ↔
      WordPath A.quantitative.sandwich.lower source word target := by
  exact ⟨AppliedWord.toWordPath, AppliedWord.ofWordPath A⟩

/-- Path-independent signed defect: two certified words with the same source
and target MUST agree on the signed return, even if their allowances differ. -/
theorem certified_defect_path_independent
    {Vertex : Type v} {Label : Type w}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {left right : List Label}
    {d₁ d₂ b₁ b₂ : ℝ}
    (first : CertifiedTrace M source left target d₁ b₁)
    (second : CertifiedTrace M source right target d₂ b₂) : d₁ = d₂ := by
  have h₁ := first.exact_and_bounded.1
  have h₂ := second.exact_and_bounded.1
  linarith

/-- The tightest of two independently paid upper allowances can be selected
without changing the actual signed defect or dropping any source term. -/
theorem certified_two_route_min_bound
    {Vertex : Type v} {Label : Type w}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {left right : List Label}
    {d₁ d₂ b₁ b₂ : ℝ}
    (first : CertifiedTrace M source left target d₁ b₁)
    (second : CertifiedTrace M source right target d₂ b₂) :
    |M.readout source - M.readout target| ≤ min b₁ b₂ := by
  apply le_min
  · have hr := first.exact_and_bounded
    have h : M.readout source - M.readout target = d₁ := by linarith [hr.1]
    rw [h]
    exact hr.2.2
  · have hr := second.exact_and_bounded
    have h : M.readout source - M.readout target = d₂ := by linarith [hr.1]
    rw [h]
    exact hr.2.2

/-- The signed defect has zero holonomy on every *certified* closed word.
This does not force a non-sharp nonnegative allowance to vanish. -/
theorem certified_cycle_signed_defect_zero
    {Vertex : Type v} {Label : Type w}
    {M : DefectSoficSystem Vertex Label}
    {source : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word source defect allowance) :
    defect = 0 := by
  have hr := trace.exact_and_bounded.1
  linarith

/-- A reversed certified word, when independently supplied, has the
opposite signed defect; graph reversibility is NOT assumed. -/
theorem opposite_certified_routes
    {Vertex : Type v} {Label : Type w}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {forward backward : List Label}
    {d₁ d₂ b₁ b₂ : ℝ}
    (first : CertifiedTrace M source forward target d₁ b₁)
    (second : CertifiedTrace M target backward source d₂ b₂) :
    d₁ + d₂ = 0 := by
  have h₁ := first.exact_and_bounded.1
  have h₂ := second.exact_and_bounded.1
  linarith

/-! ## A nonvacuous finite example from the *actual* Nat.le_trans theorem. -/
namespace NatTransitivityExample

abbrev Atom := ℕ × ℕ
def Meaning (atom : Atom) : Prop := atom.1 ≤ atom.2

/-- The source, intermediate and target all stay in the original Nat domain.
A valid edge requires BOTH comparisons; those proofs are not interchangeable. -/
def certified (source middle target : ℕ) : Prop :=
  source ≤ middle ∧ middle ≤ target

/-- The original observation is the natural-number value, embedded in reals.
The signed defect is negative for forward monotone growth, and every
allowance is its exact nonnegative absolute cost. -/
def quantitative : DefectSoficSystem ℕ ℕ where
  sandwich := {
    lower := fun source middle target => certified source middle target
    middle := fun _ _ _ => True
    upper := fun _ _ _ => True
    lower_le_middle := by intro source target label h; trivial
    middle_le_upper := by intro source target label h; trivial
  }
  readout := fun source => (source : ℝ)
  edgeDefect := fun source _ target => (source : ℝ) - (target : ℝ)
  edgeAllowance := fun source _ target => |(source : ℝ) - (target : ℝ)|
  edgeReturn := by
    intro source target label h
    dsimp
    ring
  edgeAllowance_nonneg := by
    intro source target label h
    exact abs_nonneg _
  edgeBound := by
    intro source target label h
    exact le_refl _

/-- This is a fully instantiated Nat.le_trans proof application, not
an untyped claim that an arbitrary citation is a theorem. -/
def transitivity (source middle target : ℕ) :
    InstantiatedApplication Atom Meaning where
  rule := ⟨[(source, middle), (middle, target)], (source, target)⟩
  consequence := by
    intro hp
    have h₁ : source ≤ middle := hp (source, middle) (by simp)
    have h₂ : middle ≤ target := hp (middle, target) (by simp)
    exact Nat.le_trans h₁ h₂

/-- Every certified edge has the SAME two premises discharged by the
witness of its concrete finite transition. -/
def network : CheckedApplicationSystem Atom Meaning ℕ ℕ where
  quantitative := quantitative
  expectedRule := fun source label target =>
    ⟨[(source, label), (label, target)], (source, target)⟩
  certifiedApplication := by
    intro source target label edge
    refine ⟨transitivity source label target, rfl, ?_⟩
    intro p hp
    change p ∈ [(source, label), (label, target)] at hp
    simp only [List.mem_cons, List.mem_singleton] at hp
    rcases hp with hp | hp
    · rw [hp]
      exact edge.1
    · rw [hp]
      exact edge.2

/-- A real two-step word, not a source-label coincidence. -/
def sourceWord : WordPath network.quantitative.sandwich.lower 0 [1, 3] 4 :=
  WordPath.cons (by exact ⟨by decide, by decide⟩)
    (WordPath.cons (by exact ⟨by decide, by decide⟩) (WordPath.nil 4))

/-- All theorem premises are present on each edge; the combined signed
observation certificate comes directly from the same certified word. -/
theorem sourceWord_has_checked_return :
    ∃ defect allowance : ℝ,
      CertifiedTrace network.quantitative 0 [1, 3] 4 defect allowance ∧
      network.quantitative.readout 0 =
        network.quantitative.readout 4 + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance :=
  (AppliedWord.ofWordPath network sourceWord).exists_quantitative_return

/-- The unrestricted candidate vocabulary permits a false shortcut;
certified transitions reject it even though lexical search may find it. -/
theorem candidate_without_certification :
    network.quantitative.sandwich.middle 3 2 1 ∧
      ¬ network.quantitative.sandwich.lower 3 2 1 := by
  constructor
  · trivial
  · intro h
    exact (by decide : ¬ (3 ≤ 2)) h.1

end NatTransitivityExample

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge
