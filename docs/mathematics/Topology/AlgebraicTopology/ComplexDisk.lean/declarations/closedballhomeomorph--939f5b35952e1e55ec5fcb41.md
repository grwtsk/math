# closedBallHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f419d81c2ca5476ab8cb36f607f2e891406673a7f695dfba130182a5d8c73ad",
  "kind": "def",
  "lexical_name": "closedBallHomeomorph",
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
  "slug": "closedballhomeomorph--939f5b35952e1e55ec5fcb41",
  "source": {
    "blob": "1e8c2a6df19541ae9aed01107f8cb323af835dec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Topology/AlgebraicTopology/ComplexDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:939f5b35952e1e55ec5fcb41f1a3491b3741393b8898ac3fde45530df3eaf6c6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ComplexDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f419d81c2ca5476ab8cb36f607f2e891406673a7f695dfba130182a5d8c73ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedBallHomeomorph :
    CircleCone.ClosedDisk ≃ₜ Metric.closedBall (0 : EuclideanPlane) 1 :=
  coordinateIsometry.toHomeomorph.subtype fun z => by
    change z ∈ Metric.closedBall (0 : ℂ) 1 ↔
      coordinateIsometry z ∈ Metric.closedBall (0 : EuclideanPlane) 1
    simp only [mem_closedBall_zero_iff, coordinateIsometry.norm_map]

/-- Restriction of the same coordinate isometry to the actual unit spheres. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/ComplexDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ComplexDisk.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8c2a6df19541ae9aed01107f8cb323af835dec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
