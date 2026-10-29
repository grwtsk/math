import Mathematics.SemanticTokenization.EvidenceCut

/-! # Interpretation and theorem-authority separation -/

namespace Mathematics.SemanticTokenization

inductive SemanticTheoremAuthority
  | none
  | structural
  deriving DecidableEq, Repr

def SemanticAuthorityClass.mayMintTheoremAuthority :
    SemanticAuthorityClass → Bool
  | .humanAccepted => false
  | .lexicallyCertified => false
  | .corpusSupported => false
  | .parserSupported => false
  | .modelSuggested => false
  | .taskAssumed => false

def ExternalAssertion.theoremAuthority
    {text : TextCarrier}
    {kind : MetadataType}
    (_ : ExternalAssertion text kind) :
    SemanticTheoremAuthority :=
  .none

theorem external_assertion_never_mints_theorem_authority
    (authority : SemanticAuthorityClass) :
    authority.mayMintTheoremAuthority = false := by
  cases authority <;> rfl

theorem parser_output_cannot_mint_semantic_authority :
    SemanticAuthorityClass.parserSupported.mayMintTheoremAuthority =
      false :=
  rfl

theorem model_suggestion_cannot_mint_semantic_authority :
    SemanticAuthorityClass.modelSuggested.mayMintTheoremAuthority =
      false :=
  rfl

theorem accepted_assertion_is_not_parser_supported
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame) :
    accepted.packed.assertion.authority ≠
      .parserSupported :=
  accepted.assertion_authority_eligible.not_parser_supported

theorem accepted_assertion_is_not_model_suggested
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame) :
    accepted.packed.assertion.authority ≠
      .modelSuggested :=
  accepted.assertion_authority_eligible.not_model_suggested

theorem accepted_evidence_is_not_parser_supported
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame)
    (evidence : EvidenceRef text)
    (member : evidence ∈
      accepted.packed.assertion.evidence.refs) :
    evidence.authority ≠ .parserSupported :=
  (accepted.evidence_authority_eligible
    evidence member).not_parser_supported

theorem accepted_evidence_is_not_model_suggested
    {text : TextCarrier}
    {frame : SemanticCutFrame text}
    (accepted : AcceptedExternalAssertion frame)
    (evidence : EvidenceRef text)
    (member : evidence ∈
      accepted.packed.assertion.evidence.refs) :
    evidence.authority ≠ .modelSuggested :=
  (accepted.evidence_authority_eligible
    evidence member).not_model_suggested

end Mathematics.SemanticTokenization
