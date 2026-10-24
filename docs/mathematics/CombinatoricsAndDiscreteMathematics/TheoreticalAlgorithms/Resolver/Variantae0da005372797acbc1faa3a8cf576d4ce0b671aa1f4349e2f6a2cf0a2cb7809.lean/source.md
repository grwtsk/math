# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Resolver.Variantae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cb3319b67125c67eb30ed546e745c1a6ad0d482` · SHA-256 `ae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Authority

/-!
# Pure conservative resolver

This reference resolver performs no I/O and commits no state.  Durable
admission, lineage append, and exactly-once event emission remain responsibilities
of the existing runtime owner.
-/

namespace Mathematics.SemanticTokenization

inductive SemanticTokenResolution
    (cut : CommittedSemanticCut)
  | solved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semantic :
        SemanticCompletionCertificate cut.frame)
  | structurallySolved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semanticUnknowns : List SemanticTokenUnknownKind)
      (unknowns_nonempty : semanticUnknowns ≠ [])
  | partiallySolved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semantic : PartialSemanticCertificate cut.text)
  | falsifiedBoundary
      (witness : BoundaryFalsificationWitness cut.text)
  | falsifiedRelation
      (witness : RelationFalsificationWitness cut.text)
  | unknown
      (kind : SemanticTokenUnknownKind)
      (frontier : List StableId)
  | rejected
      (reason : CutRejectionReason)

def SemanticTokenResolution.structuralCertificate
    {cut : CommittedSemanticCut} :
    SemanticTokenResolution cut →
      Option (StructuralCertificate cut.raw cut.text)
  | .solved structural _ => some structural
  | .structurallySolved structural _ _ => some structural
  | .partiallySolved structural _ => some structural
  | _ => none

def SemanticTokenResolution.semanticCertificate
    {cut : CommittedSemanticCut} :
    SemanticTokenResolution cut →
      Option (SemanticCompletionCertificate cut.frame)
  | .solved _ semantic => some semantic
  | _ => none

def resolveMetaOverlapSemantics
    (cut : CommittedSemanticCut) :
    SemanticTokenResolution cut :=
  match cut.validation with
  | .rejected reason =>
      .rejected reason
  | .accepted =>
      if cut.liveReadsAllowed then
        .rejected .liveReadAuthority
      else
        match cut.boundaryFalsification with
        | some witness =>
            .falsifiedBoundary witness
        | none =>
            match cut.relationFalsification with
            | some witness =>
                .falsifiedRelation witness
            | none =>
                match cut.structural with
                | none =>
                    .unknown
                      .characterNormalization
                      cut.frontier
                | some structural =>
                    match cut.semanticCompletion with
                    | some semantic =>
                        .solved structural semantic
                    | none =>
                        match cut.partialSemantic with
                        | some partialCertificate =>
                            .partiallySolved
                              structural partialCertificate
                        | none =>
                            .structurallySolved
                              structural
                              (.interpretationAdequacy ::
                                cut.frame.unresolved)
                              (by simp)

theorem resolve_total
    (cut : CommittedSemanticCut) :
    ∃ result,
      resolveMetaOverlapSemantics cut = result :=
  ⟨resolveMetaOverlapSemantics cut, rfl⟩

theorem structurallySolved_sound
    {cut : CommittedSemanticCut}
    (structural :
      StructuralCertificate cut.raw cut.text)
    (unknowns : List SemanticTokenUnknownKind)
    (unknowns_nonempty : unknowns ≠ []) :
    (SemanticTokenResolution.structurallySolved
      structural unknowns unknowns_nonempty
      |>.structuralCertificate) =
        some structural :=
  rfl

theorem solved_semantic_sound
    {cut : CommittedSemanticCut}
    (structural :
      StructuralCertificate cut.raw cut.text)
    (semantic :
      SemanticCompletionCertificate cut.frame) :
    (SemanticTokenResolution.solved structural semantic
      |>.semanticCertificate) =
        some semantic :=
  rfl

theorem no_interpretation_without_external_assertion
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (semantic : SemanticCompletionCertificate frame) :
    ∃ accepted : AcceptedExternalAssertion frame,
      accepted ∈ semantic.assertions := by
  cases assertionsEquation : semantic.assertions with
  | nil =>
      exact False.elim
        (semantic.assertions_nonempty assertionsEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

theorem no_interpretation_without_accepted_external_assertion
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (semantic : SemanticCompletionCertificate frame) :
    ∃ accepted : AcceptedExternalAssertion frame,
      accepted ∈ semantic.assertions :=
  no_interpretation_without_external_assertion semantic

theorem semantic_completion_requires_explicit_admission_premises
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (semantic : SemanticCompletionCertificate frame) :
    ∃ accepted : AcceptedExternalAssertion frame,
      accepted ∈ semantic.assertions ∧
        accepted.packed.assertion.snapshot =
          frame.snapshot ∧
        accepted.packed.assertion.authority ∈
          frame.evidencePolicy.authorityPrecedence ∧
        SemanticCompletionAuthorityEligible
          accepted.packed.assertion.authority ∧
        accepted.packed.assertion.evidence.refs ≠ [] ∧
        (∀ evidence ∈
            accepted.packed.assertion.evidence.refs,
          evidence.authority ∈
              frame.evidencePolicy.authorityPrecedence ∧
            SemanticCompletionAuthorityEligible
              evidence.authority ∧
            evidence.sourceAuthorityCompatible ∧
            evidence.scope ∈
              frame.evidencePolicy.scopePrecedence ∧
            ∃ path ∈ accepted.packed.assertion.provenance,
              path.assertionId =
                  accepted.packed.assertion.metadata.assertionId ∧
                path.SupportsEvidence evidence) ∧
        frame.generatedObligations.obligations = [] ∧
        frame.unresolved = [] := by
  obtain ⟨accepted, member⟩ :=
    no_interpretation_without_accepted_external_assertion
      semantic
  refine
    ⟨accepted, member,
      accepted.assertion_snapshot_exact,
      accepted.assertion_authority_in_policy,
      accepted.assertion_authority_eligible,
      accepted.packed.assertion.evidence.refs_nonempty,
      ?_,
      semantic.generated_obligations_exhausted,
      semantic.cut_unresolved_exhausted⟩
  intro evidence evidenceMember
  exact
    ⟨accepted.evidence_authority_in_policy
        evidence evidenceMember,
      accepted.evidence_authority_eligible
        evidence evidenceMember,
      accepted.evidence_source_authority_compatible
        evidence evidenceMember,
      accepted.evidence_scope_in_policy
        evidence evidenceMember,
      accepted.provenance_supports_evidence
        evidence evidenceMember⟩

theorem semantic_completion_exhausts_generated_obligations
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (semantic : SemanticCompletionCertificate frame) :
    frame.generatedObligations.obligations = [] :=
  semantic.generated_obligations_exhausted

theorem semantic_completion_exhausts_cut_unresolved
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (semantic : SemanticCompletionCertificate frame) :
    frame.unresolved = [] :=
  semantic.cut_unresolved_exhausted

theorem nonempty_unresolved_cannot_resolve_solved
    (cut : CommittedSemanticCut)
    (unresolved_nonempty : cut.frame.unresolved ≠ []) :
    ¬ ∃
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semantic :
        SemanticCompletionCertificate cut.frame),
      resolveMetaOverlapSemantics cut =
        SemanticTokenResolution.solved
          structural semantic := by
  intro solvedWitness
  rcases solvedWitness with
    ⟨_, semantic, _⟩
  exact unresolved_nonempty
    semantic.cut_unresolved_exhausted

end Mathematics.SemanticTokenization
```
