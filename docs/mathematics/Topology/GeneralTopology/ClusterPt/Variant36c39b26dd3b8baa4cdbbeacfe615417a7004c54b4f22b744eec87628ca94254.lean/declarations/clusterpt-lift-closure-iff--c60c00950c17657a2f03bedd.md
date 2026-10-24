# clusterPt_lift'_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c736268-3577-468d-ee58-2fcc1f91576d",
  "kind": "theorem",
  "lexical_name": "clusterPt_lift'_closure_iff",
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
  "slug": "clusterpt-lift-closure-iff--c60c00950c17657a2f03bedd",
  "source": {
    "blob": "7ef80271807ac6aea3b4a086237ec5d9170c8cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c60c00950c17657a2f03bedd43e8a9c1711478f5e4d9f5eb9d60f3f22c2c5bb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c736268-3577-468d-ee58-2fcc1f91576d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clusterPt_lift'_closure_iff {F : Filter X} :
    ClusterPt x (F.lift' closure) ↔ ClusterPt x F := by
  simp [clusterPt_iff_lift'_closure, lift'_lift'_assoc (monotone_closure X) (monotone_closure X)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClusterPt/Variant36c39b26dd3b8baa4cdbbeacfe615417a7004c54b4f22b744eec87628ca94254.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef80271807ac6aea3b4a086237ec5d9170c8cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
