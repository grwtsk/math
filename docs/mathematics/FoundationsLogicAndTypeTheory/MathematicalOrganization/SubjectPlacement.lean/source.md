# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbb6b2fd9ed01a522614814767c255f07e5926aa` · SHA-256 `c129bc3c65d5046b51f4274d15769e65732b31609eaaf717c32ab401c973a6b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.

Pure subject-placement contract for source-bound Lean-library organization.
This file defines mathematical/data invariants only. It performs no filesystem,
Git, model, process, cache, or execution effects.
-/
import Mathlib.Data.List.Basic

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement

/-- Immutable identity of one source occurrence at one repository revision. -/
structure SourceFileIdentity where
  repository : String
  revision : String
  path : String
  contentDigest : String
  deriving DecidableEq, Repr

/-- Stable taxonomy identity plus the selected physical directory presentation. -/
structure SubjectIdentity where
  conceptId : String
  taxonomyRevision : String
  directory : String
  deriving DecidableEq, Repr

/-- Evidence stratum available to a placement decision. -/
inductive ParseStatus where
  | lexicalOnly
  | leanHeaderParsed
  | leanElaborated
  deriving DecidableEq, Repr

/-- File-level terminal disposition. Every managed source must receive exactly one. -/
inductive Disposition where
  | keep
  | move
  | review
  | pinned
  deriving DecidableEq, Repr

/-- Typed relation kinds kept deliberately noncoercible. -/
inductive RelationKind where
  | relevantTo
  | usesDefinitionFrom
  | formalizes
  | implies
  | equivalentTo
  deriving DecidableEq, Repr

/-- An unreviewed classifier may propose only conceptual relevance. -/
def MachineAssignable : RelationKind → Prop
  | .relevantTo => True
  | _ => False

@[simp] theorem machineAssignable_relevantTo : MachineAssignable .relevantTo := by
  trivial

@[simp] theorem machineAssignable_not_implies : ¬ MachineAssignable .implies := by
  simp [MachineAssignable]

@[simp] theorem machineAssignable_not_formalizes : ¬ MachineAssignable .formalizes := by
  simp [MachineAssignable]

/-- Inspectable evidence retained with each classification. Scores are permille. -/
structure PlacementEvidence where
  parseStatus : ParseStatus
  primaryScorePermille : Nat
  marginPermille : Nat
  matchedTerms : List String
  importedModules : List String
  declaredNames : List String
  reviewedOverride : Bool
  deriving Repr

/-- One total file-placement decision. `target = none` is allowed only for non-moves. -/
structure PlacementDecision where
  source : SourceFileIdentity
  disposition : Disposition
  primarySubject : Option SubjectIdentity
  secondarySubjects : List SubjectIdentity
  target : Option String
  evidence : PlacementEvidence
  relation : RelationKind := .relevantTo
  deriving Repr

/-- A move is eligible only with a concrete target, native parser evidence,
threshold evidence, import-rewrite coverage, and a source-bound rollback record. -/
def MoveReady (minimumScore minimumMargin : Nat) (d : PlacementDecision) : Prop :=
  d.target.isSome ∧
  d.evidence.parseStatus ≠ .lexicalOnly ∧
  minimumScore ≤ d.evidence.primaryScorePermille ∧
  minimumMargin ≤ d.evidence.marginPermille ∧
  d.relation = .relevantTo

/-- Exact source coverage: every managed occurrence appears once among decisions. -/
def CoversExactly (managed : List SourceFileIdentity)
    (decisions : List PlacementDecision) : Prop :=
  decisions.map PlacementDecision.source = managed

/-- Selected target names are collision-free after case normalization is supplied
by the operational consumer. This pure layer records ordinary exact uniqueness. -/
def UniqueTargets (decisions : List PlacementDecision) : Prop :=
  (decisions.filterMap PlacementDecision.target).Nodup

/-- Pinned records cannot be given a relocation target. -/
def PinnedStable (decisions : List PlacementDecision) : Prop :=
  ∀ d ∈ decisions, d.disposition = .pinned → d.target = none

/-- Every machine-origin relation in the plan is restricted to `relevantTo`. -/
def MachineRelationsConservative (decisions : List PlacementDecision) : Prop :=
  ∀ d ∈ decisions, MachineAssignable d.relation

/-- Pure acceptance envelope consumed by the effectful Noeaaeue organizer. -/
structure PlacementPlan where
  managed : List SourceFileIdentity
  decisions : List PlacementDecision
  minimumScorePermille : Nat
  minimumMarginPermille : Nat
  exactCoverage : CoversExactly managed decisions
  uniqueSources : (decisions.map PlacementDecision.source).Nodup
  uniqueTargets : UniqueTargets decisions
  pinnedStable : PinnedStable decisions
  conservativeRelations : MachineRelationsConservative decisions
  moveReady : ∀ d ∈ decisions, d.disposition = .move →
    MoveReady minimumScorePermille minimumMarginPermille d
  /-- Repository-owned admissibility predicate for physical targets. It may encode
  immutable archives, ignored prefixes, portability, or other placement policy. -/
  targetAllowed : String → Prop
  moveTargetsAllowed : ∀ d ∈ decisions, d.disposition = .move →
    ∀ target, d.target = some target → targetAllowed target
  importRewriteSources : List SourceFileIdentity
  importRewriteCoversMoves : ∀ d ∈ decisions, d.disposition = .move →
    d.source ∈ importRewriteSources
  rollbackSources : List SourceFileIdentity
  rollbackCoversMoves : ∀ d ∈ decisions, d.disposition = .move →
    d.source ∈ rollbackSources

/-- An accepted effect receipt requires a complete library-validation pass even
when the plan contains no moves. The evidence itself remains external. -/
structure PlacementReceipt where
  plan : PlacementPlan
  checkedRevision : String
  validationPassed : Bool
  validationEvidence : validationPassed = true

/-- A classifier is productive only if at least one input can receive a move. -/
def ClassifierProductive {α : Type} (classify : α → Disposition) : Prop :=
  ∃ x, classify x = .move

/-- An always-review classifier cannot satisfy the positive-control requirement. -/
theorem alwaysReview_not_productive {α : Type} :
    ¬ ClassifierProductive (fun _ : α => .review) := by
  simp [ClassifierProductive]

/-- Exact coverage is retained directly by every accepted plan. -/
theorem PlacementPlan.coversEveryManagedSource (plan : PlacementPlan) :
    CoversExactly plan.managed plan.decisions :=
  plan.exactCoverage

/-- Target uniqueness is retained directly by every accepted plan. -/
theorem PlacementPlan.hasNoDuplicateTargets (plan : PlacementPlan) :
    UniqueTargets plan.decisions :=
  plan.uniqueTargets

/-- Every accepted move has a repository-admissible target. -/
theorem PlacementPlan.allowsMoveTarget (plan : PlacementPlan)
    (d : PlacementDecision) (hd : d ∈ plan.decisions)
    (hmove : d.disposition = .move) (target : String)
    (htarget : d.target = some target) : plan.targetAllowed target :=
  plan.moveTargetsAllowed d hd hmove target htarget

/-- No accepted machine plan can reinterpret relevance as implication. -/
theorem PlacementPlan.noMachineImplication (plan : PlacementPlan)
    (d : PlacementDecision) (hd : d ∈ plan.decisions) : d.relation ≠ .implies := by
  have h := plan.conservativeRelations d hd
  intro himplies
  rw [himplies] at h
  exact machineAssignable_not_implies h

/-- A successful receipt cannot omit validation merely because no move occurred. -/
theorem PlacementReceipt.requiresLibraryValidation (receipt : PlacementReceipt) :
    receipt.validationPassed = true :=
  receipt.validationEvidence

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.SubjectPlacement
```
