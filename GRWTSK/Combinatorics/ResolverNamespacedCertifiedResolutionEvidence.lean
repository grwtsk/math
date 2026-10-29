-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FrontierResolution.Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FrontierResolution.Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Refinement/Resolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary

/-!
# Total conservative resolution over certified finite input

Totality here means that every well-typed finite resolver input returns one of
four typed outcomes.  The input may explicitly carry unknown evidence; no
claim of universal semantic decidability is made.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FrontierResolution.Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520

namespace Mathematics.BinaryFrontier

inductive FrontierResolution
    (Leaf Obstruction Unknown Rejection : Type)
  | completedLeaf (leaf : Leaf)
  | canonicalObstruction (obstruction : Obstruction)
  | explicitUnknown (unknown : Unknown)
  | malformedInput (rejection : Rejection)

inductive CertifiedResolutionEvidence
    (Leaf Obstruction Unknown Rejection : Type)
  | completed (leaf : Leaf)
  | obstructed (obstruction : Obstruction)
  | undecided (unknown : Unknown)
  | rejected (rejection : Rejection)

structure FiniteCertifiedResolverInput
    (Coordinate Leaf Obstruction Unknown Rejection : Type)
    [Fintype Coordinate]
    [DecidableEq Coordinate] where
  registeredCoordinates : Finset Coordinate
  registryComplete :
    registeredCoordinates = Finset.univ
  evidence :
    CertifiedResolutionEvidence
      Leaf Obstruction Unknown Rejection

def resolveFiniteCertified
    {Coordinate Leaf Obstruction Unknown Rejection : Type}
    [Fintype Coordinate]
    [DecidableEq Coordinate]
    (input :
      FiniteCertifiedResolverInput
        Coordinate Leaf Obstruction Unknown Rejection) :
    FrontierResolution
      Leaf Obstruction Unknown Rejection :=
  match input.evidence with
  | .completed leaf =>
      .completedLeaf leaf
  | .obstructed obstruction =>
      .canonicalObstruction obstruction
  | .undecided unknown =>
      .explicitUnknown unknown
  | .rejected rejection =>
      .malformedInput rejection

theorem finite_certified_resolver_total
    {Coordinate Leaf Obstruction Unknown Rejection : Type}
    [Fintype Coordinate]
    [DecidableEq Coordinate]
    (input :
      FiniteCertifiedResolverInput
        Coordinate Leaf Obstruction Unknown Rejection) :
    ∃ result,
      resolveFiniteCertified input = result :=
  ⟨resolveFiniteCertified input, rfl⟩

end Mathematics.BinaryFrontier
