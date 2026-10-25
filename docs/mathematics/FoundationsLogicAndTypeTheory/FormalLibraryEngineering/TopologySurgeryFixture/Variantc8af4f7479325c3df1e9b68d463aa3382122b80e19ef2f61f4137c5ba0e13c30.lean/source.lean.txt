-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant84f74025f1a3578e5e76a30cdacd3be8fd9c9e836a3cd433bacc6739992063c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84f74025f1a3578e5e76a30cdacd3be8fd9c9e836a3cd433bacc6739992063c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OctahedralPrefixCapChain.Variant84f74025f1a3578e5e76a30cdacd3be8fd9c9e836a3cd433bacc6739992063c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"84f74025f1a3578e5e76a30cdacd3be8fd9c9e836a3cd433bacc6739992063c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0317a4625b7fb52a4f466550/workspace/Generated/TopologySurgeryFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.Classification
import Boolean.Cube.PrismaticGeometry.OctahedralSphere

/-!
# Generated finite topology-surgery fixture

This quarantine-only module supplies bounded proof-game tasks over the explicit
octahedral two-sphere.  A task cuts the oriented fundamental face chain at a
fixed list index.  The prefix and suffix are treated as two caps.  Sound
regluing means that the cap terms reconstruct the original chain and that the
two cap boundaries cancel coefficient-wise along every oriented edge.

These theorems establish finite integer-chain identities only.  They do not
claim a manifold homeomorphism, homology equivalence, Ricci surgery theorem,
or spherical-classification result.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant84f74025f1a3578e5e76a30cdacd3be8fd9c9e836a3cd433bacc6739992063c1

namespace Generated.TopologySurgeryFixture

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

private theorem octahedralCapSurgerySound_cut2_reference :
    OctahedralCapSurgerySound 2 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

private theorem octahedralCapSurgerySound_cut4_reference :
    OctahedralCapSurgerySound 4 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

private theorem octahedralCapSurgerySound_cut6_reference :
    OctahedralCapSurgerySound 6 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut2 :
    OctahedralCapSurgerySound 2 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

@[surface_candidate]
theorem octahedralCapSurgerySound_cut4 :
    OctahedralCapSurgerySound 4 := by
  exact octahedralCapSurgerySound_cut4_reference

@[surface_candidate]
theorem octahedralCapSurgerySound_cut6 :
    OctahedralCapSurgerySound 6 := by
  exact octahedralCapSurgerySound_cut6_reference

end Generated.TopologySurgeryFixture
