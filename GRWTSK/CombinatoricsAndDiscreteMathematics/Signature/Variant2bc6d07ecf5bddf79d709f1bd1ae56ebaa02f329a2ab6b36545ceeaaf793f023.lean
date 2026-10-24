-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MutationCoordinate.Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MutationCoordinate.Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Signature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Coverage

/-! # Canonical typed mutation signature -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MutationCoordinate.Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a

namespace Mathematics.Mutation

structure MutationCoordinate where
  semantic : Int
  authority : Int
  permission : Int
  provenance : Int
  execution : Int
  representation : Int
  accessibility : Int
  juris : Int
  temporal : Int
  deriving DecidableEq, Repr

structure BoundaryCrossing where
  boundary : BoundaryKind
  sequence : Nat
  eventId : StableId
  lawId : StableId
  receipt : ObjectAddress

def causalCone
    (events : List MutationEvent) :
    Finset StableId :=
  events.foldl
    (fun cone event => insert event.target (insert event.source cone))
    ∅

def mutationFrontier
    (support : Finset StableId)
    (firstChanged : StableId → Bool) :
    Finset StableId :=
  support.filter fun element => firstChanged element = true

structure MutationSignature where
  signatureId : StableId
  mutationProgramId : StableId
  cone : Finset StableId
  frontier : Finset StableId
  boundaries : List BoundaryCrossing
  affectedStrata : StratumSet
  coordinates : StableId → Option MutationCoordinate
  detectorResponses : StableId → Option Bool
  unresolvedResidue : Finset StableId
  coverageDigest : Digest

def mutationSignature
    (signature : MutationSignature) :
    MutationSignature :=
  signature

theorem boundary_crossing_declares_law
    (crossing : BoundaryCrossing) :
    ∃ lawId, crossing.lawId = lawId :=
  ⟨crossing.lawId, rfl⟩

end Mathematics.Mutation
