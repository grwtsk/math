# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimDiscipline.Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `190a90fd09ba488d2630007d46b30d8d14373584` · SHA-256 `8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.Surgery

/-!
# Claim discipline

Candidate discovery, reachability, validation, proof, authority, receipts, and
truth remain separate typed states.  This module gives positive definitions and
countermodels for the prohibited implication claims in `CORD-THEORY-1`.
-/

namespace Cord

structure AdmissibilityRecord where
  target : RecordId
  reachability : IndependentStatus
  authorization : IndependentStatus
  safety : IndependentStatus
  correctness : IndependentStatus
  usefulness : IndependentStatus
  ethicalAcceptability : IndependentStatus
  policy : ProfileId
  residuals : Set ResidualId

namespace AdmissibilityRecord

/-- A target is commit-admissible only when every policy-required axis is established. -/
def FullyEstablished (a : AdmissibilityRecord) : Prop :=
  a.reachability = .established ∧
  a.authorization = .established ∧
  a.safety = .established ∧
  a.correctness = .established ∧
  a.usefulness = .established ∧
  a.ethicalAcceptability = .established

theorem fullyEstablished_authorized (a : AdmissibilityRecord)
    (h : a.FullyEstablished) : a.authorization = .established := h.2.1

theorem fullyEstablished_safe (a : AdmissibilityRecord)
    (h : a.FullyEstablished) : a.safety = .established := h.2.2.1

theorem fullyEstablished_correct (a : AdmissibilityRecord)
    (h : a.FullyEstablished) : a.correctness = .established := h.2.2.2.1

theorem fullyEstablished_useful (a : AdmissibilityRecord)
    (h : a.FullyEstablished) : a.usefulness = .established := h.2.2.2.2.1

theorem fullyEstablished_ethically_acceptable (a : AdmissibilityRecord)
    (h : a.FullyEstablished) : a.ethicalAcceptability = .established :=
  h.2.2.2.2.2

/-- Reachability alone does not entail authorization. -/
theorem reachability_does_not_entail_authorization :
    ¬ (∀ a : AdmissibilityRecord,
      a.reachability = .established → a.authorization = .established) := by
  intro h
  let a : AdmissibilityRecord := {
    target := ⟨1⟩
    reachability := .established
    authorization := .notEvaluated
    safety := .notEvaluated
    correctness := .notEvaluated
    usefulness := .notEvaluated
    ethicalAcceptability := .notEvaluated
    policy := ⟨1⟩
    residuals := ∅
  }
  have := h a rfl
  cases this

/-- Reachability alone does not entail full admissibility. -/
theorem reachability_does_not_entail_full_admissibility :
    ¬ (∀ a : AdmissibilityRecord,
      a.reachability = .established → a.FullyEstablished) := by
  intro h
  let a : AdmissibilityRecord := {
    target := ⟨1⟩
    reachability := .established
    authorization := .notEvaluated
    safety := .notEvaluated
    correctness := .notEvaluated
    usefulness := .notEvaluated
    ethicalAcceptability := .notEvaluated
    policy := ⟨1⟩
    residuals := ∅
  }
  have hBad := (h a rfl).2.1
  cases hBad

end AdmissibilityRecord

inductive CandidateAdmissionStatus
  | observed
  | proposed
  | admitted
  | rejected
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

structure CandidateTermObservation where
  id : RecordId
  source : RecordId
  sourceSpan : String
  text : String
  namespaceCandidate : Option String
  useMentionStatus : IndependentStatus
  scopeStatus : IndependentStatus
  identityStatus : IndependentStatus
  versionStatus : IndependentStatus
  authorityStatus : IndependentStatus
  admission : CandidateAdmissionStatus

namespace CandidateTermObservation

/-- A textual occurrence is not itself an admitted ontology term. -/
def IsMerelyObserved (o : CandidateTermObservation) : Prop :=
  o.admission = .observed

@[simp] theorem observed_not_admitted (o : CandidateTermObservation)
    (h : o.IsMerelyObserved) : o.admission ≠ .admitted := by
  rw [h]
  decide

end CandidateTermObservation

structure VectorCandidateObservation where
  id : RecordId
  query : RecordId
  candidate : RecordId
  embeddingModel : String
  modelVersion : String
  metric : String
  distance : Float
  threshold : Float
  indexGeneration : String
  exactness : ExactnessStatus
  identityStatus : IndependentStatus
  equivalenceStatus : IndependentStatus
  typeStatus : IndependentStatus
  causationStatus : IndependentStatus
  admission : CandidateAdmissionStatus

namespace VectorCandidateObservation

/-- Candidate proximity supplies no independent semantic status. -/
def SemanticallyAdmitted (v : VectorCandidateObservation) : Prop :=
  v.identityStatus = .established ∨
  v.equivalenceStatus = .established ∨
  v.typeStatus = .established ∨
  v.causationStatus = .established

/-- A near-vector candidate can remain semantically unestablished. -/
theorem proximity_does_not_entail_semantic_admission :
    ¬ (∀ v : VectorCandidateObservation,
      v.admission = .observed → v.SemanticallyAdmitted) := by
  intro h
  let v : VectorCandidateObservation := {
    id := ⟨1⟩
    query := ⟨2⟩
    candidate := ⟨3⟩
    embeddingModel := "candidate-model"
    modelVersion := "1"
    metric := "cosine"
    distance := 0.0
    threshold := 1.0
    indexGeneration := "g"
    exactness := .approximateCandidate
    identityStatus := .notEvaluated
    equivalenceStatus := .notEvaluated
    typeStatus := .notEvaluated
    causationStatus := .notEvaluated
    admission := .observed
  }
  rcases h v rfl with hi | he | ht | hc
  · cases hi
  · cases he
  · cases ht
  · cases hc

end VectorCandidateObservation

structure TextOccurrenceObservation where
  id : RecordId
  source : RecordId
  span : String
  token : String
  parserProfile : String
  occurrenceEstablished : Prop
  termDeclarationStatus : IndependentStatus
  identityStatus : IndependentStatus
  denotationStatus : IndependentStatus
  scopeStatus : IndependentStatus
  authorityStatus : IndependentStatus
  admission : CandidateAdmissionStatus

namespace TextOccurrenceObservation

/-- Occurrence does not entail term declaration. -/
theorem occurrence_does_not_entail_term_declaration :
    ¬ (∀ o : TextOccurrenceObservation,
      o.occurrenceEstablished → o.termDeclarationStatus = .established) := by
  intro h
  let o : TextOccurrenceObservation := {
    id := ⟨1⟩
    source := ⟨2⟩
    span := "0:4"
    token := "term"
    parserProfile := "literal"
    occurrenceEstablished := True
    termDeclarationStatus := .notEvaluated
    identityStatus := .notEvaluated
    denotationStatus := .notEvaluated
    scopeStatus := .notEvaluated
    authorityStatus := .notEvaluated
    admission := .observed
  }
  have := h o trivial
  cases this

end TextOccurrenceObservation

structure ValidationEvidenceRecord where
  id : RecordId
  procedure : RecordId
  procedureVersion : String
  subject : RecordId
  snapshot : SnapshotId
  profile : ProfileId
  constraintsEvaluated : Set RecordId
  result : IndependentStatus
  completeForClaimClass : Bool
  proofMethodCertificate : Option CertificateId
  limitations : Set String
  residuals : Set ResidualId

namespace ValidationEvidenceRecord

/-- A validation result is proof-capable only under an explicit complete-method certificate. -/
def EstablishesProof (v : ValidationEvidenceRecord) : Prop :=
  v.result = .established ∧
  v.completeForClaimClass = true ∧
  v.proofMethodCertificate ≠ none

theorem establishesProof_result (v : ValidationEvidenceRecord)
    (h : v.EstablishesProof) : v.result = .established := h.1

theorem establishesProof_complete (v : ValidationEvidenceRecord)
    (h : v.EstablishesProof) : v.completeForClaimClass = true := h.2.1

theorem establishesProof_has_certificate (v : ValidationEvidenceRecord)
    (h : v.EstablishesProof) : v.proofMethodCertificate ≠ none := h.2.2

theorem certified_complete_validation_establishes_proof
    (v : ValidationEvidenceRecord)
    (result : v.result = .established)
    (complete : v.completeForClaimClass = true)
    (certificate : v.proofMethodCertificate ≠ none) : v.EstablishesProof :=
  ⟨result, complete, certificate⟩

/-- Passing validation alone does not establish a proof. -/
theorem validation_pass_does_not_entail_proof :
    ¬ (∀ v : ValidationEvidenceRecord,
      v.result = .established → v.EstablishesProof) := by
  intro h
  let v : ValidationEvidenceRecord := {
    id := ⟨1⟩
    procedure := ⟨2⟩
    procedureVersion := "1"
    subject := ⟨3⟩
    snapshot := ⟨4⟩
    profile := ⟨5⟩
    constraintsEvaluated := ∅
    result := .established
    completeForClaimClass := false
    proofMethodCertificate := none
    limitations := {"structural only"}
    residuals := ∅
  }
  have hBad := (h v rfl).2.1
  cases hBad

end ValidationEvidenceRecord

structure ReceiptScopeRecord where
  id : ReceiptId
  operation : RecordId
  request : RecordId
  snapshots : SnapshotFrame
  plan : Option PlanId
  authorityPresented : IndependentStatus
  validationRun : IndependentStatus
  decision : CordExecutionStatus
  effects : Set RecordId
  residuals : Set ResidualId
  factualTruthStatus : IndependentStatus

namespace ReceiptScopeRecord

/-- Truth promotion is explicit rather than inferred from receipt existence. -/
def TruthQualified (r : ReceiptScopeRecord) : Prop :=
  r.id.value ≠ 0 ∧ r.factualTruthStatus = .established

theorem truthQualified_has_receipt (r : ReceiptScopeRecord)
    (h : r.TruthQualified) : r.id.value ≠ 0 := h.1

theorem truthQualified_has_truth_status (r : ReceiptScopeRecord)
    (h : r.TruthQualified) : r.factualTruthStatus = .established := h.2

/-- Existence of a receipt does not entail factual truth. -/
theorem receipt_does_not_entail_truth :
    ¬ (∀ r : ReceiptScopeRecord,
      r.id.value ≠ 0 → r.factualTruthStatus = .established) := by
  intro h
  let snapshots : SnapshotFrame := {
    repositorySnapshot := ⟨"r"⟩
    databaseSnapshot := ⟨1⟩
    dataSnapshot := ⟨1⟩
    ontologySnapshot := ⟨1⟩
    schemaSnapshot := ⟨"s"⟩
    evidenceSnapshot := ⟨"e"⟩
    rulesetSnapshot := ⟨"v"⟩
    validTime := ⟨0, none⟩
    transactionTime := ⟨0, none⟩
    streamWindow := none
  }
  let r : ReceiptScopeRecord := {
    id := ⟨1⟩
    operation := ⟨2⟩
    request := ⟨3⟩
    snapshots := snapshots
    plan := none
    authorityPresented := .notEvaluated
    validationRun := .established
    decision := .closed
    effects := ∅
    residuals := ∅
    factualTruthStatus := .notEvaluated
  }
  have := h r (by decide)
  cases this

end ReceiptScopeRecord

end Cord
```
