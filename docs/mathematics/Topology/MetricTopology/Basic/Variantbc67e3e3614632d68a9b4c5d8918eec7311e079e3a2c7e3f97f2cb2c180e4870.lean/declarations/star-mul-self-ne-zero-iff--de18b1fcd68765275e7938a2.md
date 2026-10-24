# star_mul_self_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "434e48fce4b2bb81a648e664c9ca11577ef4633b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82a10ffc-f28a-6f01-d5f8-19e7e6e6133f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e238468-9342-3e93-567d-c84ee10e03c9",
  "kind": "theorem",
  "lexical_name": "star_mul_self_ne_zero_iff",
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
  "slug": "star-mul-self-ne-zero-iff--de18b1fcd68765275e7938a2",
  "source": {
    "blob": "434e48fce4b2bb81a648e664c9ca11577ef4633b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 167,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de18b1fcd68765275e7938a256625f4c3764a2084845feb57fce98d4d4cee532",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e238468-9342-3e93-567d-c84ee10e03c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_mul_self_ne_zero_iff (x : E) : x⋆ * x ≠ 0 ↔ x ≠ 0 := by
  simp only [Ne, star_mul_self_eq_zero_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434e48fce4b2bb81a648e664c9ca11577ef4633b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
