# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.148b17f9dbf64a4a96e9c979f721d3f2.Variant975b0a0d279ef79b8e3f4ba42897ecdf8245e37bed23bc228af196e3e35e7e13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22a6d8738db63aa1c11bdf27bac4ad3905f3d8e7` · SHA-256 `9ae521083bfaf53d7ad8274a7e470327e8a6d6c57db08719f2addf030eb5bbb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variantd3a39ce7b2f1db63fe30e3a59a6c596b97eaa28b57b317043c085a103e99f3aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3a39ce7b2f1db63fe30e3a59a6c596b97eaa28b57b317043c085a103e99f3aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.OctahedralPrefixCapChain.Variantd3a39ce7b2f1db63fe30e3a59a6c596b97eaa28b57b317043c085a103e99f3aa","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"d3a39ce7b2f1db63fe30e3a59a6c596b97eaa28b57b317043c085a103e99f3aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/preflight/148b17f9dbf64a4a96e9c979f721d3f2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralPrefixCapChain.Variantd3a39ce7b2f1db63fe30e3a59a6c596b97eaa28b57b317043c085a103e99f3aa

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
  exact octahedralCapSurgerySound_cut2_reference

@[surface_candidate]
theorem octahedralCapSurgerySound_cut4 :
    OctahedralCapSurgerySound 4 := by
  exact octahedralCapSurgerySound_cut4_reference

@[surface_candidate]
theorem octahedralCapSurgerySound_cut6 :
    OctahedralCapSurgerySound 6 := by
  exact octahedralCapSurgerySound_cut6_reference

end Generated.TopologySurgeryFixture


open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let moduleSurface := env.constants.toList |>.filter (fun entry => (env.getModuleIdxFor? entry.1).isNone) |>.map (fun entry => entry.1.toString ++ "\u001f" ++ (if entry.2.isAxiom then "axiom" else if entry.2.isTheorem then "theorem" else "declaration") ++ "\u001f" ++ toString entry.2.type) |>.mergeSort (· < ·)
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2 then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2 then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2 then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2 then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2 then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("declaration", toJson "Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut2"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications), ("isTheorem", toJson info.isTheorem), ("moduleDeclarationSurface", toJson moduleSurface)]
```
