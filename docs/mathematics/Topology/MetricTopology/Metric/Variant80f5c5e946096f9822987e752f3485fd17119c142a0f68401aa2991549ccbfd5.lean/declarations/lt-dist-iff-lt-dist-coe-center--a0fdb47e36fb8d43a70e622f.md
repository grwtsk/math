# lt_dist_iff_lt_dist_coe_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:151ed931-37ac-9d0b-ff66-5f536714c482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8511819e-d33f-12bd-cfc5-33bf8bce4adf",
  "kind": "theorem",
  "lexical_name": "lt_dist_iff_lt_dist_coe_center",
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
  "slug": "lt-dist-iff-lt-dist-coe-center--a0fdb47e36fb8d43a70e622f",
  "source": {
    "blob": "cf578e3075f1ab6422d151a74b5b5be1e77ba982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 189,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0fdb47e36fb8d43a70e622f669ec5cc31cf90552e3d505853f7fadcf8d343ab",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8511819e-d33f-12bd-cfc5-33bf8bce4adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_dist_iff_lt_dist_coe_center :
    r < dist z w ↔ w.im * Real.sinh r < dist (z : ℂ) (w.center r) :=
  lt_iff_lt_of_cmp_eq_cmp (cmp_eq_cmp_symm.1 <| cmp_dist_eq_cmp_dist_coe_center z w r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant80f5c5e946096f9822987e752f3485fd17119c142a0f68401aa2991549ccbfd5.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf578e3075f1ab6422d151a74b5b5be1e77ba982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
