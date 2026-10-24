# ball_infDist_subset_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cd3050f-b7a8-1c8d-0399-2ff6cc1e33f6",
  "kind": "theorem",
  "lexical_name": "ball_infDist_subset_compl",
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
  "slug": "ball-infdist-subset-compl--39d3386fb19b3740427a8b23",
  "source": {
    "blob": "c99a774e0aebc1dad665884b9f15d55574e5804c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 538,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d3386fb19b3740427a8b2388bfd44202794bc3dd49a038795db71c40a711f8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd3050f-b7a8-1c8d-0399-2ff6cc1e33f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ball_infDist_subset_compl : ball x (infDist x s) ⊆ sᶜ :=
  (disjoint_ball_infDist (s := s)).subset_compl_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant688cad0d5e98c1a4fd8f8b5e3cfc0d3e761e216c741bd4b5fb1ae5d6fac4d068.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99a774e0aebc1dad665884b9f15d55574e5804c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
