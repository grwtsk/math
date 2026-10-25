# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OctahedralSphereAxioms.Variant3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19545da14f55d063b243fbdbe4c7b6b696ff52b4` · SHA-256 `3e293b6ec37f8bf26a5e7ed38b7326d005e8a07c1b6878e12a9e49f81fe535ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
