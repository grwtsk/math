import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust

/-!
# Provenance-preserving certificate translation

grwtsk contributors directed preservation of historical contribution independently
of discharged proof dependencies (CSE-RH16-20261007, §14.1). This checked wrapper
adds the missing subset contract; it changes no local checker or descent rule.
Implementation: OpenAI Codex. Historical attribution remains declared metadata.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- A translation may discharge live dependencies while retaining all input provenance. -/
structure ProvenancePreservingTranslation (Certificate : Type*) where
  /-- Existing exact-target translation and local certificate. -/
  translation : CertificateTranslation Certificate
  /-- Translation preserves every contributing source even when its premise is discharged. -/
  provenancePreserved : translation.externalCandidate.provenance ⊆ translation.provenance

/-- Every external contributor remains present in the translated history. -/
theorem ProvenancePreservingTranslation.retains_source {Certificate : Type*}
    (adapter : ProvenancePreservingTranslation Certificate) {source : String}
    (contributed : source ∈ adapter.translation.externalCandidate.provenance) :
    source ∈ adapter.translation.provenance :=
  adapter.provenancePreserved contributed

/-- The wrapper forwards the existing checker consumer with exactly its original premises. -/
theorem ProvenancePreservingTranslation.checked_statement {Certificate : Type*}
    (adapter : ProvenancePreservingTranslation Certificate)
    (jurisdiction : LocalJurisdiction Certificate) (checkerAccepted : Bool)
    (success : SuccessfulDescent jurisdiction ⟨adapter.translation, checkerAccepted⟩) :
    jurisdiction.statement :=
  successfulDescent_statement jurisdiction ⟨adapter.translation, checkerAccepted⟩ success

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
