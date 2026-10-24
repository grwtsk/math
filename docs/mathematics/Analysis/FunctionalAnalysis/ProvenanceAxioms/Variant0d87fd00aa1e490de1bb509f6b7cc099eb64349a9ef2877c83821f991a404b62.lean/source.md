# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ProvenanceAxioms.Variant0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc189a40563411a71d0a91a185a2e273faa382ea` · SHA-256 `0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProvenancePreservingTranslation.retains_source
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProvenancePreservingTranslation.checked_statement
```
