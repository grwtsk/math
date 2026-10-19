import Boolean.Cube.PrismaticGeometry.OctahedralSphere

/-!
# Axiom audit for the concrete octahedral ratio sphere

Run from `formal/` with:

  lake env lean Audit/OctahedralSphereAxioms.lean

Every declaration below is expected to report `[]`.
-/

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
