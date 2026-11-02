/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SearchSoficLanguage
import Mathlib.Tactic

/-!
# Certified sofic words with compositional signed observation defects

This is a quantitative *consumer* of the existing certified/candidate/admissible
labeled-graph sandwich, not a replacement graph. A certified edge carries a
source-observation equation and an explicit nonnegative allowance. The aggregate
signed defect and allowance are indexed by a concrete certified trace, including
its ordered word and original intermediate states. The signed defect telescopes;
its absolute bound adds without discarding signed mixed contributions.

Candidate and admissible words have no automatic semantic certificate. The
construction is finite-word relative; it neither claims a complete infinite
sofic presentation nor interprets graph diffusion mass as logical implication.
There is no new axiom, sorry, analytic arithmetic supplier or physical PDE claim.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

universe u v w

/-- A typed observational semantics for *certified* sofic transitions.
The middle and upper graph relations remain discovery-only. -/
structure DefectSoficSystem (Vertex : Type u) (Label : Type v) where
  sandwich : LabeledSandwich Vertex Label
  readout : Vertex → ℝ
  edgeDefect : Vertex → Label → Vertex → ℝ
  edgeAllowance : Vertex → Label → Vertex → ℝ
  edgeReturn : ∀ {source target : Vertex} {label : Label},
    sandwich.lower source label target →
      readout source = readout target + edgeDefect source label target
  edgeAllowance_nonneg : ∀ {source target : Vertex} {label : Label},
    sandwich.lower source label target → 0 ≤ edgeAllowance source label target
  edgeBound : ∀ {source target : Vertex} {label : Label},
    sandwich.lower source label target →
      |edgeDefect source label target| ≤ edgeAllowance source label target

/-- A finite certified *word* and its exact accumulated signed error and cost.
This is stronger than a graph reachability result with no retained labels. -/
inductive CertifiedTrace {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) :
    Vertex → List Label → Vertex → ℝ → ℝ → Prop where
  | nil (vertex : Vertex) : CertifiedTrace M vertex [] vertex 0 0
  | cons {source middle target : Vertex} {label : Label}
      {word : List Label} {defect allowance : ℝ}
      (edge : M.sandwich.lower source label middle)
      (tail : CertifiedTrace M middle word target defect allowance) :
      CertifiedTrace M source (label :: word) target
        (M.edgeDefect source label middle + defect)
        (M.edgeAllowance source label middle + allowance)

/-- The quantitative trace projects to the repository's actual certified word. -/
theorem CertifiedTrace.toWordPath
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    WordPath M.sandwich.lower source word target := by
  induction trace with
  | nil vertex => exact WordPath.nil vertex
  | cons edge tail ih => exact WordPath.cons edge ih

/-- A certified trace is accepted as candidate, retaining the same word. -/
theorem CertifiedTrace.candidateAccepted
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    AcceptsFrom M.sandwich.middle source word :=
  M.sandwich.lower_accepts_to_middle source word
    ⟨target, trace.toWordPath⟩

/-- Admission to the outer language is still only a graph-language fact. -/
theorem CertifiedTrace.admissibleAccepted
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    AcceptsFrom M.sandwich.upper source word :=
  M.sandwich.middle_accepts_to_upper source word trace.candidateAccepted

/-- Every certified source path can be assigned its actual accumulated
signed defect and nonnegative allowance, without adding a research axiom. -/
theorem exists_certifiedTrace
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label}
    (path : WordPath M.sandwich.lower source word target) :
    ∃ defect allowance : ℝ,
      CertifiedTrace M source word target defect allowance := by
  induction path with
  | nil vertex => exact ⟨0, 0, CertifiedTrace.nil vertex⟩
  | @cons source middle target label word edge tail ih =>
      rcases ih with ⟨defect, allowance, trace⟩
      exact ⟨M.edgeDefect source label middle + defect,
        M.edgeAllowance source label middle + allowance,
        CertifiedTrace.cons edge trace⟩

/-- Quantitative certificates recognize EXACTLY the words in the original
certified lower relation, not all candidate/admissible discovery words. -/
def CertifiedErrorLanguage
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label)
    (start : Vertex) (word : List Label) : Prop :=
  ∃ finish : Vertex, ∃ defect allowance : ℝ,
    CertifiedTrace M start word finish defect allowance

/-- Relative exact language completeness: every existing certified path has a
paid signed certificate, and no new word is admitted by this enrichment. -/
theorem certifiedErrorLanguage_iff_lowerAccepted
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label)
    (start : Vertex) (word : List Label) :
    CertifiedErrorLanguage M start word ↔
      AcceptsFrom M.sandwich.lower start word := by
  constructor
  · rintro ⟨finish, defect, allowance, trace⟩
    exact ⟨finish, trace.toWordPath⟩
  · rintro ⟨finish, path⟩
    obtain ⟨defect, allowance, trace⟩ :=
      exists_certifiedTrace (M := M) path
    exact ⟨finish, defect, allowance, trace⟩

/-- Crucial exact result: the signed path cost is precisely the difference
between original and final observations, not a freely chosen certificate. -/
theorem CertifiedTrace.exact_and_bounded
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace M source word target defect allowance) :
    M.readout source = M.readout target + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance := by
  induction trace with
  | nil vertex => simp
  | @cons source middle target label word defect allowance edge tail ih =>
      rcases ih with ⟨hreturn, hnonneg, hbound⟩
      refine ⟨?_, ?_, ?_⟩
      · calc
          M.readout source = M.readout middle + M.edgeDefect source label middle :=
            M.edgeReturn edge
          _ = (M.readout target + defect) + M.edgeDefect source label middle := by
            rw [hreturn]
          _ = M.readout target + (M.edgeDefect source label middle + defect) := by
            ring
      · exact add_nonneg (M.edgeAllowance_nonneg edge) hnonneg
      · calc
          |M.edgeDefect source label middle + defect| ≤
              |M.edgeDefect source label middle| + |defect| := abs_add_le _ _
          _ ≤ M.edgeAllowance source label middle + allowance :=
            add_le_add (M.edgeBound edge) hbound

/-- Compose two paths, keeping the exact ordered concatenated word. -/
theorem CertifiedTrace.append
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source middle target : Vertex} {left right : List Label}
    {d₁ d₂ b₁ b₂ : ℝ}
    (first : CertifiedTrace M source left middle d₁ b₁)
    (second : CertifiedTrace M middle right target d₂ b₂) :
    CertifiedTrace M source (left ++ right) target (d₁ + d₂) (b₁ + b₂) := by
  induction first with
  | nil vertex => simpa using second
  | @cons source pivot middle label word defect allowance edge tail ih =>
      simpa only [List.cons_append, add_assoc] using
        (CertifiedTrace.cons edge ih)

/-- Uniform certified edge allowances give a transparent word-length budget. -/
theorem CertifiedTrace.allowance_le_length
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    {ε : ℝ}
    (hedge : ∀ {s t : Vertex} {label : Label},
      M.sandwich.lower s label t → M.edgeAllowance s label t ≤ ε)
    (trace : CertifiedTrace M source word target defect allowance) :
    allowance ≤ (word.length : ℝ) * ε := by
  induction trace with
  | nil vertex => simp
  | @cons source middle target label word defect allowance edge tail ih =>
      calc
        M.edgeAllowance source label middle + allowance ≤
            ε + (word.length : ℝ) * ε := add_le_add (hedge edge) ih
        _ = ((label :: word).length : ℝ) * ε := by
          simp only [List.length_cons, Nat.cast_add, Nat.cast_one]
          ring

/-- In particular certified zero-cost paths cannot change the readout. -/
theorem CertifiedTrace.zeroAllowance
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    {source target : Vertex} {word : List Label} {defect allowance : ℝ}
    (hzero : ∀ {s t : Vertex} {label : Label},
      M.sandwich.lower s label t → M.edgeAllowance s label t = 0)
    (trace : CertifiedTrace M source word target defect allowance) :
    allowance = 0 := by
  induction trace with
  | nil vertex => rfl
  | @cons source middle target label word defect allowance edge tail ih =>
      simpa only [hzero edge, zero_add] using ih

/-- An immutable arithmetic/PDE source may have a preexisting signed
readout defect. This record does not manufacture or erase that residual. -/
structure SourceAnchored (Source : Type w) (Vertex : Type u) (Label : Type v) where
  system : DefectSoficSystem Vertex Label
  original : Source → ℝ
  encode : Source → Vertex
  initialDefect : Source → ℝ
  initialAllowance : Source → ℝ
  initialReturn : ∀ x : Source,
    original x = system.readout (encode x) + initialDefect x
  initialAllowance_nonneg : ∀ x : Source, 0 ≤ initialAllowance x
  initialBound : ∀ x : Source, |initialDefect x| ≤ initialAllowance x

/-- Consumer-facing source return: an original signed observation equals
its final readout plus exactly the paid initial + path defect. -/
theorem SourceAnchored.path_return
    {Source : Type w} {Vertex : Type u} {Label : Type v}
    (A : SourceAnchored Source Vertex Label)
    (x : Source) {finish : Vertex} {word : List Label} {d b : ℝ}
    (path : CertifiedTrace A.system (A.encode x) word finish d b) :
    A.original x = A.system.readout finish + (A.initialDefect x + d) ∧
      |A.original x - A.system.readout finish| ≤ A.initialAllowance x + b := by
  obtain ⟨hexact, _, hbound⟩ := path.exact_and_bounded
  constructor
  · calc
      A.original x = A.system.readout (A.encode x) + A.initialDefect x :=
        A.initialReturn x
      _ = (A.system.readout finish + d) + A.initialDefect x := by
        rw [hexact]
      _ = A.system.readout finish + (A.initialDefect x + d) := by ring
  · have hd : A.original x - A.system.readout finish = A.initialDefect x + d := by
      rw [A.initialReturn x, hexact]
      ring
    rw [hd]
    exact (abs_add_le _ _).trans (add_le_add (A.initialBound x) hbound)

/-- When a source's initial defect and every path cost are actually zero,
exact original equality follows; an unresolved defect is not set to zero. -/
theorem SourceAnchored.exact_of_zero_budget
    {Source : Type w} {Vertex : Type u} {Label : Type v}
    (A : SourceAnchored Source Vertex Label) (x : Source)
    {finish : Vertex} {word : List Label} {d b : ℝ}
    (path : CertifiedTrace A.system (A.encode x) word finish d b)
    (hinitial : A.initialAllowance x = 0) (hpath : b = 0) :
    A.original x = A.system.readout finish := by
  have h := (A.path_return x path).2
  rw [hinitial, hpath] at h
  have heq : |A.original x - A.system.readout finish| = 0 :=
    le_antisymm (by simpa using h) (abs_nonneg _)
  exact sub_eq_zero.mp (abs_eq_zero.mp heq)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
