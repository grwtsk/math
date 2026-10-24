-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedIntervalTheorem.Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertifiedIntervalTheorem.Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742","mathematical_subject":"Foundations.Unclassified","original_sha256":"a878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.IntervalProfile


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedIntervalTheorem.Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742

universe uInput uWitness

namespace FCRS.Transport

/-- A certified claim keeps theorem and proof artifacts distinct. -/
structure CertifiedIntervalTheorem
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) where
  theoremArtifact : ArtifactRef .theoremArtifact
  proofArtifact : ArtifactRef .theoremProof
  formalDeclaration : ArtifactRef .formalDeclaration
  kernelBuildEvidence : ArtifactRef .kernelBuildEvidence
  assumptionSet : ArtifactRef .assumptionSet
  theoremArtifactExact : theoremArtifact = profile.sourceTheorem
  assumptionSetExact : assumptionSet = profile.assumptionSet
  claim : IntervalClaim profile

/--
`refined` proves at least what `broader` asks on the latter's declared scope.
The domain and admissibility transports are explicit proof fields.
-/
structure ProfileRefines
    {Input : Type uInput} {Witness : Type uWitness}
    (refined broader : IntervalProfile Input Witness) where
  adapterArtifact : ArtifactRef .normalizationAdapter
  proofArtifact : ArtifactRef .theoremProof
  comparisonScope : ArtifactRef .assumptionSet
  comparisonScopeExact : comparisonScope = broader.assumptionSet
  domainCoverage :
    ∀ input, broader.domain input → refined.domain input
  admissiblePreserved :
    ∀ input witness,
      broader.domain input →
      refined.admissible input witness →
        broader.admissible input witness

namespace ProfileRefines

/--
Transport an interval claim only through the supplied, proof-carrying profile
adapter.  Keeping this operation on `ProfileRefines` makes use of the adapter
visible in downstream corollaries instead of silently projecting a stronger
domain hypothesis by hand.
-/
theorem transportClaim
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (claim : IntervalClaim refined) :
    IntervalClaim broader := by
  intro input hDomain
  obtain ⟨witness, hAdmissible⟩ :=
    claim input (adapter.domainCoverage input hDomain)
  exact ⟨witness,
    adapter.admissiblePreserved input witness hDomain hAdmissible⟩

end ProfileRefines

end FCRS.Transport
