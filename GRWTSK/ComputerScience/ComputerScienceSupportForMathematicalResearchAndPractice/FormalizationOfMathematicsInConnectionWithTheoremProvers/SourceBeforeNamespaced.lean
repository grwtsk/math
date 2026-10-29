-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant51af1fea545bb211409f74ef7a69021f5125080f4e33f5aded34ffc7d0b93b3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51af1fea545bb211409f74ef7a69021f5125080f4e33f5aded34ffc7d0b93b3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OctahedralPrefixCapChain.Variant51af1fea545bb211409f74ef7a69021f5125080f4e33f5aded34ffc7d0b93b3c","mathematical_subject":"Foundations.Unclassified","original_sha256":"51af1fea545bb211409f74ef7a69021f5125080f4e33f5aded34ffc7d0b93b3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/reviews/independent/game-reviews/session-topology-surgery-exec-2bae1a2a/instant/GAME-TXN-9BEFE668-INSTANT-01/artifacts/source-before.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.Classification
import Boolean.Cube.PrismaticGeometry.OctahedralChain

/-!
# Procedural finite topology-surgery game

This canonical finite task module cuts the explicit oriented octahedral
fundamental two-chain at a bounded list index. The prefix and suffix are finite
caps. Sound regluing requires both exact reconstruction of the original chain
and coefficient-wise cancellation of their oriented edge boundaries.

The declarations below establish finite integer-chain identities only. They do
not claim a manifold homeomorphism, homology equivalence, Ricci surgery theorem,
or spherical-classification result. No target-equivalent helper theorem is
available in the dependency cone: each game target carries its explicit proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant51af1fea545bb211409f74ef7a69021f5125080f4e33f5aded34ffc7d0b93b3c

namespace Surface.Core.TopologySurgeryGame

open Boolean.Cube.PrismaticGeometry

/-- Prefix cap selected by a bounded procedural cut index. -/
def octahedralPrefixCapChain (cut : Nat) :
    Chain octahedralCellComplex 2 where
  terms := (octahedralFaces.take cut).map
    (fun face => (octahedralFaceCoefficient face, face))

/-- Complementary suffix cap selected by the same cut index. -/
def octahedralSuffixCapChain (cut : Nat) :
    Chain octahedralCellComplex 2 where
  terms := (octahedralFaces.drop cut).map
    (fun face => (octahedralFaceCoefficient face, face))

def octahedralPrefixCapBoundary (cut : Nat) :
    Chain octahedralCellComplex 1 :=
  Chain.boundary (octahedralPrefixCapChain cut)

def octahedralSuffixCapBoundary (cut : Nat) :
    Chain octahedralCellComplex 1 :=
  Chain.boundary (octahedralSuffixCapChain cut)

def OctahedralCapSurgerySound (cut : Nat) : Prop :=
  (octahedralPrefixCapChain cut).terms ++
      (octahedralSuffixCapChain cut).terms =
        octahedralSphereChain.terms ∧
    ∀ edge : OctahedralEdge,
      octahedralEdgeCoefficient (octahedralPrefixCapBoundary cut) edge +
        octahedralEdgeCoefficient (octahedralSuffixCapBoundary cut) edge = 0

@[surface_candidate]
theorem octahedralCapSurgerySound_cut1 :
    OctahedralCapSurgerySound 1 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut2 :
    OctahedralCapSurgerySound 2 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut3 :
    OctahedralCapSurgerySound 3 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut4 :
    OctahedralCapSurgerySound 4 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut5 :
    OctahedralCapSurgerySound 5 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut6 :
    OctahedralCapSurgerySound 6 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut7 :
    OctahedralCapSurgerySound 7 := by
  refine ⟨rfl, ?_⟩
  intro edge
  cases edge with
  | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
  | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
  | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

end Surface.Core.TopologySurgeryGame
