/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState

/-!
# Claim-bound mathematical diagnostics

Error families, descriptions, and subject paths are diagnostic data, not evidence
for a mathematical proposition. Proof-bearing dispositions are indexed by the
*exact* proposition; a conditional bridge retains its original premise. A
refutation is not transported forward through an implication without an
additional contrapositive-direction proof. No external Git identity, Lean
execution receipt, or taxonomy-path validity is certified here.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState

/-- Cross-subject error families; individual subjects refine these using codes. -/
inductive Family where
  | source | definition | hypothesis | logic | proof | existence | uniqueness
  | structure | lifting | bound | limit | computation | model
  | formalization | verification | repository
  deriving DecidableEq, Repr

/-- A description contains no proof. Strings denote purported source/subject
identities only; checking them against Git and the taxonomy is external. -/
structure Descriptor (Claim : Type) where
  claim : Claim
  source : SourceIdentity
  canonicalSubjectPath : String
  relatedSubjectPaths : List String := []
  family : Family
  code : String
  scopeDescription : String := ""
  explanation : String := ""

/-- A status indexed by its actual mathematical proposition. Only two
constructors carry completed proofs, and `conditional` carries an explicit
supplier rather than the supplier's truth. -/
inductive Standing (P : Prop) : Type where
  | unresolved
  | candidate
  | analogy
  | conditional (premise : Prop) (bridge : premise → P)
  | established (proof : P)
  | refuted (refutation : ¬ P)

/-- This test is computed from the constructor, not from a diagnostic label. -/
def Standing.hasProof {P : Prop} : Standing P → Bool
  | .established _ => true
  | _ => false

/-- This test is computed from an actual refutation, not a failed process. -/
def Standing.hasRefutation {P : Prop} : Standing P → Bool
  | .refuted _ => true
  | _ => false

/-- A true proof flag contains an actual term of the exact proposition. -/
theorem Standing.proof_of_hasProof {P : Prop} (s : Standing P)
    (accepted : s.hasProof = true) : P := by
  cases s with
  | established proof => exact proof
  | unresolved => simp [Standing.hasProof] at accepted
  | candidate => simp [Standing.hasProof] at accepted
  | analogy => simp [Standing.hasProof] at accepted
  | conditional premise bridge => simp [Standing.hasProof] at accepted
  | refuted refutation => simp [Standing.hasProof] at accepted

/-- A true refutation flag contains a proof of the exact negation. -/
theorem Standing.refutation_of_hasRefutation {P : Prop} (s : Standing P)
    (accepted : s.hasRefutation = true) : ¬ P := by
  cases s with
  | refuted refutation => exact refutation
  | unresolved => simp [Standing.hasRefutation] at accepted
  | candidate => simp [Standing.hasRefutation] at accepted
  | analogy => simp [Standing.hasRefutation] at accepted
  | conditional premise bridge => simp [Standing.hasRefutation] at accepted
  | established proof => simp [Standing.hasRefutation] at accepted

/-- A single disposition cannot simultaneously certify both sides. -/
theorem Standing.not_both {P : Prop} (s : Standing P) :
    ¬ (s.hasProof = true ∧ s.hasRefutation = true) := by
  intro pair
  exact (s.refutation_of_hasRefutation pair.2) (s.proof_of_hasProof pair.1)

/-- Forward transport requires an implication on the exact propositions.
A proof and a conditional premise are preserved. A refutation of P supplies
no refutation of Q merely from P → Q. -/
def Standing.forward {P Q : Prop} (bridge : P → Q) : Standing P → Standing Q
  | .unresolved => .unresolved
  | .candidate => .candidate
  | .analogy => .analogy
  | .conditional premise supply => .conditional premise (fun hp => bridge (supply hp))
  | .established proof => .established (bridge proof)
  | .refuted _ => .unresolved

@[simp] theorem Standing.forward_established {P Q : Prop} (bridge : P → Q) (proof : P) :
    Standing.forward bridge (.established proof) = .established (bridge proof) := rfl

@[simp] theorem Standing.forward_refuted {P Q : Prop} (bridge : P → Q)
    (refutation : ¬ P) :
    Standing.forward bridge (.refuted refutation) = (.unresolved : Standing Q) := rfl

@[simp] theorem Standing.forward_conditional {P Q R : Prop} (bridge : P → Q)
    (supply : R → P) :
    Standing.forward bridge (.conditional R supply) =
      (.conditional R (fun hr => bridge (supply hr)) : Standing Q) := rfl

/-- Claim identity and its complete displayed hypotheses come from the same
immutable catalog. Source *matching* is equality of recorded values, not
independent Git authentication. -/
structure CatalogDiagnostic {Claim : Type} (catalog : Catalog Claim) where
  descriptor : Descriptor Claim
  sourceMatches : descriptor.source = catalog.source descriptor.claim
  standing : Standing (Meaning catalog descriptor.claim)

/-- A descriptive status can discharge its catalog meaning only when the
proof-bearing constructor was used. -/
theorem CatalogDiagnostic.meaning_of_hasProof {Claim : Type} {catalog : Catalog Claim}
    (diagnostic : CatalogDiagnostic catalog)
    (accepted : diagnostic.standing.hasProof = true) :
    Meaning catalog diagnostic.descriptor.claim :=
  diagnostic.standing.proof_of_hasProof accepted

/-- The raw conclusion still requires every explicitly displayed hypothesis. -/
theorem CatalogDiagnostic.statement_of_hasProof {Claim : Type} {catalog : Catalog Claim}
    (diagnostic : CatalogDiagnostic catalog)
    (accepted : diagnostic.standing.hasProof = true)
    (hypotheses : ∀ h ∈ catalog.hypotheses diagnostic.descriptor.claim, h) :
    catalog.statement diagnostic.descriptor.claim :=
  (diagnostic.meaning_of_hasProof accepted) hypotheses

/-- One witness inside the stated domain refutes precisely the restricted
universal quantification, without making a broader claim about other models. -/
theorem scoped_counterexample {α : Type} (domain property : α → Prop)
    (witness : α) (within : domain witness) (violates : ¬ property witness) :
    ¬ (∀ x, domain x → property x) := by
  intro universal
  exact violates (universal witness within)

/-- A diagnostic descriptor cannot uniformly furnish proofs of arbitrary
propositions: its metadata has no logical elimination rule. -/
theorem no_universal_descriptor_promotion :
    ¬ (∀ (P : Prop), Descriptor Unit → P) := by
  intro promote
  let d : Descriptor Unit :=
    { claim := ()
      source := {}
      canonicalSubjectPath := "GRWTSK/FoundationsLogicAndTypeTheory"
      family := .logic
      code := "INVALID_INFERENCE" }
  exact promote False d

/-- Even a subject-restricted proof does not imply a global theorem without
an additional domain-completeness/extension result. -/
theorem no_universal_scope_promotion :
    ¬ (∀ (α : Type) (domain property : α → Prop),
        (∀ x, domain x → property x) → ∀ x, property x) := by
  intro promote
  let domain : Nat → Prop := fun n => n = 0
  let property : Nat → Prop := fun n => n = 0
  have «local» : ∀ n, domain n → property n := by
    intro n assumption
    exact assumption
  have impossible : (1 : Nat) = 0 := promote Nat domain property «local» 1
  cases impossible

/-- Scope and property transfer require separate proof-producing suppliers.
A target-domain point must be in the source domain, and the proved source
property must imply the desired property at that point. No string-based
subject match, diagnostic tag, or validation status supplies either map. -/
theorem scoped_transfer {α : Type}
    {sourceDomain targetDomain sourceProperty targetProperty : α → Prop}
    (sourceProof : ∀ x, sourceDomain x → sourceProperty x)
    (domainSupplier : ∀ x, targetDomain x → sourceDomain x)
    (propertySupplier : ∀ x, targetDomain x → sourceProperty x → targetProperty x) :
    ∀ x, targetDomain x → targetProperty x := by
  intro x inTarget
  exact propertySupplier x inTarget (sourceProof x (domainSupplier x inTarget))

/-!
## Exact-source, cross-catalog claim transport

An indexed catalog transport is not a name-based identification. Each target
claim selects an exact source claim, proves equality of the *recorded* source
identities, and supplies the actual implication between their contextual
meanings. This is a deliberately strict same-source reindexing interface;
comparisons between different source identities need a separate, explicit
mathematical adapter. Recorded identity equality is not Git authentication.
-/

/-- A proof-producing reindexing between catalogs with potentially different
claim types. Every target claim has a source claim, literal recorded source
identity equality, and a theorem preserving the complete contextual meaning. -/
structure CatalogTransport {SourceClaim TargetClaim : Type}
    (sourceCatalog : Catalog SourceClaim) (targetCatalog : Catalog TargetClaim) where
  reindex : TargetClaim → SourceClaim
  sourceIdentity : ∀ targetClaim,
    sourceCatalog.source (reindex targetClaim) = targetCatalog.source targetClaim
  preservesMeaning : ∀ targetClaim,
    Meaning sourceCatalog (reindex targetClaim) → Meaning targetCatalog targetClaim

/-- A transported contextual theorem is justified by the explicit source
claim implication; a matching source name or blob string alone is insufficient. -/
theorem CatalogTransport.meaning {SourceClaim TargetClaim : Type}
    {sourceCatalog : Catalog SourceClaim} {targetCatalog : Catalog TargetClaim}
    (transport : CatalogTransport sourceCatalog targetCatalog)
    (targetClaim : TargetClaim)
    (sourceProof : Meaning sourceCatalog (transport.reindex targetClaim)) :
    Meaning targetCatalog targetClaim :=
  transport.preservesMeaning targetClaim sourceProof

/-- Existing proof/refutation status carries forward using the established
directional semantics of Standing.forward. A refuted antecedent is not enough
to refute the consequent, and a conditional premise is not discharged. -/
def CatalogTransport.forwardStanding {SourceClaim TargetClaim : Type}
    {sourceCatalog : Catalog SourceClaim} {targetCatalog : Catalog TargetClaim}
    (transport : CatalogTransport sourceCatalog targetCatalog)
    (targetClaim : TargetClaim)
    (standing : Standing (Meaning sourceCatalog (transport.reindex targetClaim))) :
    Standing (Meaning targetCatalog targetClaim) :=
  Standing.forward (transport.preservesMeaning targetClaim) standing

/-- Even after a source-bound transport has produced the target contextual
theorem, obtaining the raw target conclusion requires every target hypothesis. -/
theorem CatalogTransport.statement_of_hasProof {SourceClaim TargetClaim : Type}
    {sourceCatalog : Catalog SourceClaim} {targetCatalog : Catalog TargetClaim}
    (transport : CatalogTransport sourceCatalog targetCatalog)
    (targetClaim : TargetClaim)
    (standing : Standing (Meaning sourceCatalog (transport.reindex targetClaim)))
    (accepted : standing.hasProof = true)
    (hypotheses : ∀ h ∈ targetCatalog.hypotheses targetClaim, h) :
    targetCatalog.statement targetClaim :=
  (transport.meaning targetClaim (standing.proof_of_hasProof accepted)) hypotheses

/-- Compose cross-catalog transports without changing the recorded endpoints.
The intermediate source equality and mathematical implication are both
explicitly consumed; no inference is made from a descriptive graph edge. -/
def CatalogTransport.comp {A B C : Type}
    {firstCatalog : Catalog A} {middleCatalog : Catalog B}
    {lastCatalog : Catalog C}
    (first : CatalogTransport firstCatalog middleCatalog)
    (second : CatalogTransport middleCatalog lastCatalog) :
    CatalogTransport firstCatalog lastCatalog where
  reindex := fun claim => first.reindex (second.reindex claim)
  sourceIdentity := by
    intro claim
    exact (first.sourceIdentity (second.reindex claim)).trans
      (second.sourceIdentity claim)
  preservesMeaning := by
    intro claim sourceProof
    exact second.preservesMeaning claim
      (first.preservesMeaning (second.reindex claim) sourceProof)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics
