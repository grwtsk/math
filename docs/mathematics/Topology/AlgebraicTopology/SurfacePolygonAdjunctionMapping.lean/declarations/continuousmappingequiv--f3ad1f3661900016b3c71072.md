# continuousMappingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05eb1e09adbf317e54a1de7b8c6e9b3d7c6c475f295f7cf64a23dab8b27bb512",
  "kind": "def",
  "lexical_name": "continuousMappingEquiv",
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
  "slug": "continuousmappingequiv--f3ad1f3661900016b3c71072",
  "source": {
    "blob": "cc9c79ec10461fc95b5ac31a47e53c6c319225cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3ad1f3661900016b3c71072f41ab3b1e6e3307e083dee6e689b361bacc02728",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05eb1e09adbf317e54a1de7b8c6e9b3d7c6c475f295f7cf64a23dab8b27bb512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMappingEquiv (k : ℕ)
    (Y : Type*) [TopologicalSpace Y] :
    C(FilledPolygonQuotient k, Y) ≃ CompatibleContinuousPair k Y where
  toFun := restrictContinuousPair k
  invFun := extendContinuousPair k
  left_inv := extend_restrictContinuousPair k
  right_inv := restrict_extendContinuousPair k

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9c79ec10461fc95b5ac31a47e53c6c319225cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
