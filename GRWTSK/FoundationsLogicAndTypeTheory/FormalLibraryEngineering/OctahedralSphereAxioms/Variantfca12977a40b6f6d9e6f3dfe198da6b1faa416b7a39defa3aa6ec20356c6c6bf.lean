-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralSphere.Variant3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OctahedralSphere.Variant3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae","mathematical_subject":"Foundations.Unclassified","original_sha256":"3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Audit/OctahedralSphereAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.PrismaticGeometry.OctahedralSphere

/-!
# Axiom audit for the concrete octahedral ratio sphere

Run from `formal/` with:

  lake env lean Audit/OctahedralSphereAxioms.lean

Every declaration below is expected to report `[]`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralSphere.Variant3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae

open Boolean Cube PrismaticGeometry

#print axioms Boolean.Cube.PrismaticGeometry.octahedralFiniteSoundProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralSphereClosedProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralBoundarySquaredZeroProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralNorthDirectionsNodup
#print axioms Boolean.Cube.PrismaticGeometry.octahedralSouthDirectionsNodup
#print axioms Boolean.Cube.PrismaticGeometry.octahedralChartCoverageProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralChartMembershipCases
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRatioCompatibilityProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRatioSphereSound
#print axioms Boolean.Cube.PrismaticGeometry.octahedralExportCounts
#print axioms Boolean.Cube.PrismaticGeometry.octahedralExportedCellIdsNodup
#print axioms Boolean.Cube.PrismaticGeometry.octahedralExportBoundaryReferencesValid
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRenderingAndRatioAtlasesShareFaceCover
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRatioAtlasMatchesProofCharts
#print axioms Boolean.Cube.PrismaticGeometry.octahedralAmbientDimensionSound
#print axioms Boolean.Cube.PrismaticGeometry.octahedralExactDirectionSoundProof
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRuntimeHashRequiresCheckedSerializationBridge
#print axioms Boolean.Cube.PrismaticGeometry.octahedralTopologyExport
#print axioms Boolean.Cube.PrismaticGeometry.octahedralVertexExport
#print axioms Boolean.Cube.PrismaticGeometry.octahedralEdgeExport
#print axioms Boolean.Cube.PrismaticGeometry.octahedralFaceExport
#print axioms Boolean.Cube.PrismaticGeometry.octahedralRenderingChartExport
#print axioms Boolean.Cube.PrismaticGeometry.octahedralOrientedFaceVertices
#print axioms Boolean.Cube.PrismaticGeometry.octahedralOrientedFaceEdges
#print axioms Boolean.Cube.PrismaticGeometry.octahedralAdjacentFaceIds
#print axioms Boolean.Cube.PrismaticGeometry.octahedralFaceContainsVertex
#print axioms Boolean.Cube.PrismaticGeometry.OctahedralFaceExport
#print axioms Boolean.Cube.PrismaticGeometry.OctahedralRenderingChartExport
