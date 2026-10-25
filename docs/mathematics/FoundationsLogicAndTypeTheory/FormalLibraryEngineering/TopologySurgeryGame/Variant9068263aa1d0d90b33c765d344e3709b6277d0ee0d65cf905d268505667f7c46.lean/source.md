# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopologySurgeryGame.Variant9068263aa1d0d90b33c765d344e3709b6277d0ee0d65cf905d268505667f7c46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c67c1e085379890c259fd439df79bec18ef620b5` · SHA-256 `009df69156b154b74408053db04d6079fa6c72d3b63280bb974c52183390b762`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OctahedralPrefixCapChain.Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb","mathematical_subject":"Foundations.Unclassified","original_sha256":"75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Generated/TopologySurgeryGame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.Classification
import Boolean.Cube.PrismaticGeometry.OctahedralSphere

/-!
# Procedural finite topology-surgery game

This quarantined production game module cuts the explicit oriented octahedral
fundamental two-chain at a bounded list index. The prefix and suffix are finite
caps. Sound regluing requires both exact reconstruction of the original chain
and coefficient-wise cancellation of their oriented edge boundaries.

The declarations below establish finite integer-chain identities only. They do
not claim a manifold homeomorphism, homology equivalence, Ricci surgery theorem,
or spherical-classification result. No target-equivalent helper theorem is
available in the dependency cone: each game target carries its explicit proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variant75e6f75ea20464dd127a9a9484a398d09d33b1b9dba6f35293e1a6f38b040ccb

namespace Generated.TopologySurgeryGame

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

end Generated.TopologySurgeryGame
```
