# Reachable.one_lt_dist_of_ne_of_not_adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8b73ccd-9ed8-9845-e71b-ce97dc603dc5",
  "kind": "theorem",
  "lexical_name": "Reachable.one_lt_dist_of_ne_of_not_adj",
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
  "slug": "reachable-one-lt-dist-of-ne-of-not-adj--0b003d0f6731c3317b3fe5c3",
  "source": {
    "blob": "8eec0431ee26d4a62eeb50e181c4be24f4f0290f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 254,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b003d0f6731c3317b3fe5c3ca01901ec854c460e46fb853fd333ca4c58046e6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b73ccd-9ed8-9845-e71b-ce97dc603dc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Reachable.one_lt_dist_of_ne_of_not_adj (h : G.Reachable u v) (hne : u ≠ v)
    (hnadj : ¬G.Adj u v) : 1 < G.dist u v :=
  Nat.lt_of_le_of_ne (h.pos_dist_of_ne hne) (by
    by_contra hc
    obtain ⟨p, hp⟩ := Reachable.exists_walk_length_eq_dist h
    exact hnadj (Walk.exists_length_eq_one_iff.mp ⟨p, hc ▸ hp⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eec0431ee26d4a62eeb50e181c4be24f4f0290f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
