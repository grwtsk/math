# _root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.IsSelfAdjoint.norm_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6cb0c95-f69f-198a-35a9-6e5e57d6668b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.IsSelfAdjoint.norm_mul_self",
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
  "slug": "root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--5e2e0a3230f89f9a902c7129",
  "source": {
    "blob": "d5fadad4a0094a2895f8d5ac3468311a3a39cc41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 162,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2e0a3230f89f9a902c71297a4bf2bb4a9279748cfb2318dc4580aca6304a1a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6cb0c95-f69f-198a-35a9-6e5e57d6668b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.IsSelfAdjoint.norm_mul_self {x : E} (hx : IsSelfAdjoint x) :
    ‖x * x‖ = ‖x‖ ^ 2 := by
  simpa [sq, hx.star_eq] using CStarRing.norm_star_mul_self (x := x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fadad4a0094a2895f8d5ac3468311a3a39cc41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
