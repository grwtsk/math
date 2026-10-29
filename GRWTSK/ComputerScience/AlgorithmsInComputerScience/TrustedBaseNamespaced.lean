-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustedBaseClosure.Variantd46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TrustedBaseClosure.Variantd46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23","mathematical_subject":"Computation.DataStructures","original_sha256":"d46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/TrustedBase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.AssumptionContext

/-!
# Recorded trusted-base closure

This record reports a checker invocation's declared and observed axiom names.
It remains data. In particular, a Boolean `closureComplete` flag cannot itself
produce a Lean proof.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustedBaseClosure.Variantd46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23

namespace Surface.ContinuousAssurance.WorldModel

/-- Pinned checker and observed trusted-base metadata. -/
structure TrustedBaseClosure where
  checkerId : ArtifactIdentity
  checkerVersion : String
  allowedAxioms : List String
  observedAxioms : List String
  closureComplete : Bool
  evidence : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- Declarative closure means completeness plus observed/allowed inclusion. -/
def TrustedBaseClosure.DeclaredClosed (closure : TrustedBaseClosure) : Prop :=
  closure.closureComplete = true ∧
    ∀ axiomName ∈ closure.observedAxioms,
      axiomName ∈ closure.allowedAxioms

/-- Declared closure exposes the observed/allowed inclusion and nothing more. -/
theorem TrustedBaseClosure.observed_allowed
    {closure : TrustedBaseClosure}
    (closed : closure.DeclaredClosed)
    {axiomName : String}
    (observed : axiomName ∈ closure.observedAxioms) :
    axiomName ∈ closure.allowedAxioms :=
  closed.2 axiomName observed

end Surface.ContinuousAssurance.WorldModel

