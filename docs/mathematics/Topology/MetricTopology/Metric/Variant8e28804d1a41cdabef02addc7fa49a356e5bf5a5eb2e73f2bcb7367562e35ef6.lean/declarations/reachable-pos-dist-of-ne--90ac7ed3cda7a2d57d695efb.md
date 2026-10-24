# Reachable.pos_dist_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7597661-38d1-2037-cff3-297bd4a7a797",
  "kind": "theorem",
  "lexical_name": "Reachable.pos_dist_of_ne",
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
  "slug": "reachable-pos-dist-of-ne--90ac7ed3cda7a2d57d695efb",
  "source": {
    "blob": "8eec0431ee26d4a62eeb50e181c4be24f4f0290f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 250,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ac7ed3cda7a2d57d695efbb343df3a7cb55bf6f51229a1c7b64603112f3bca",
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

Occurrence: `result:d7597661-38d1-2037-cff3-297bd4a7a797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Reachable.pos_dist_of_ne (h : G.Reachable u v) (hne : u ≠ v) :
    0 < G.dist u v :=
  Nat.pos_of_ne_zero (by simp [h, hne])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eec0431ee26d4a62eeb50e181c4be24f4f0290f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
