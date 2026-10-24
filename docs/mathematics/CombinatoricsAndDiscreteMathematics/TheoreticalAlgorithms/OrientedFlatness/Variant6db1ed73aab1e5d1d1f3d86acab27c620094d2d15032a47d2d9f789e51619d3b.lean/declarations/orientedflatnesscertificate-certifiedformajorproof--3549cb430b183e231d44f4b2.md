# OrientedFlatnessCertificate.certifiedForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de9bbcdafe5e0f0033f88a24aee3c6ddf19534b7c49fa6e9c9bd23fea130b82",
  "kind": "def",
  "lexical_name": "OrientedFlatnessCertificate.certifiedForMajorProof",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "orientedflatnesscertificate-certifiedformajorproof--3549cb430b183e231d44f4b2",
  "source": {
    "blob": "1de8706e4e226e18c9d5f10f0b0845f6e9973c72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3549cb430b183e231d44f4b211d0a06ec25fa0903b4d8865422723990e4bcbda",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de9bbcdafe5e0f0033f88a24aee3c6ddf19534b7c49fa6e9c9bd23fea130b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrientedFlatnessCertificate.certifiedForMajorProof
    (C : OrientedFlatnessCertificate) : Prop :=
  C.coverCertificate.certifiedForMajorProof ∧
  C.normalization.assouadScaleControl ∧
  C.normalization.tubeNeighborhoodControl ∧
  C.normalization.noRawEqualityBoundaryClaim ∧
  C.orientation.convexWolffAxiomControl ∧
  C.orientation.essentialDistinctnessControl ∧
  C.orientation.affinePlaneClusteringExcluded ∧
  C.plankGluing.angleCompatibility ∧
  C.plankGluing.thickenedNeighborhoodCompatibility ∧
  C.plankGluing.normalizedTransportFeedsGluing ∧
  C.homologicalRelaxation.finiteHomologicalSystemReady ∧
  C.homologicalRelaxation.noLegacyIntegrableLatticeHierarchyAssumption ∧
  C.homologicalRelaxation.homologicalRelaxationValid ∧
  C.orientedFlatness ∧
  C.noAnalyticKakeyaEstimateClaim ∧
  C.noPrismaticSheafSurfaceClaim ∧
  C.noHilbertFlowTheoremReadyClaim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1de8706e4e226e18c9d5f10f0b0845f6e9973c72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
