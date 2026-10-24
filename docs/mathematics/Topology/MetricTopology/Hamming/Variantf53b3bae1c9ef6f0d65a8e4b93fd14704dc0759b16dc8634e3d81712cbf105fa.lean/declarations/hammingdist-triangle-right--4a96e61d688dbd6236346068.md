# hammingDist_triangle_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a2e2210-8769-95f5-a5d4-3caa09800e21",
  "kind": "theorem",
  "lexical_name": "hammingDist_triangle_right",
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
  "slug": "hammingdist-triangle-right--4a96e61d688dbd6236346068",
  "source": {
    "blob": "236214f73af185981924ec4a6aeebb360a00bbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a96e61d688dbd623634606801e00c9a5e63adb902952e82239daf738d857842",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a2e2210-8769-95f5-a5d4-3caa09800e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hammingDist_triangle_right (x y z : ∀ i, β i) :
    hammingDist x y ≤ hammingDist x z + hammingDist y z := by
  rw [hammingDist_comm y]
  exact hammingDist_triangle _ _ _

/-- Corresponds to `swap_dist`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `236214f73af185981924ec4a6aeebb360a00bbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
