# disjoint_ball_ball_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e8fed6c-3715-11a3-6701-e0ff3b0f6955",
  "kind": "theorem",
  "lexical_name": "disjoint_ball_ball_iff",
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
  "slug": "disjoint-ball-ball-iff--b82bf3a1fabf57dc6f062985",
  "source": {
    "blob": "18f310c4a15b09a568316cf700d76ffafb634021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 208,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant4bc0bc0cf65bb1ca204c69354bb9ecc3e76872204bd394b3f71ce69348c24ba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b82bf3a1fabf57dc6f0629852d6da574e29d4fdd38cd55c864fd37de7ee2b080",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant4bc0bc0cf65bb1ca204c69354bb9ecc3e76872204bd394b3f71ce69348c24ba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8fed6c-3715-11a3-6701-e0ff3b0f6955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_ball_ball_iff (hδ : 0 < δ) (hε : 0 < ε) :
    Disjoint (ball x δ) (ball y ε) ↔ δ + ε ≤ dist x y := by
  refine ⟨fun h => le_of_not_gt fun hxy => ?_, ball_disjoint_ball⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_lt_lt hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩

-- This is also true for `ℚ`-normed spaces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant4bc0bc0cf65bb1ca204c69354bb9ecc3e76872204bd394b3f71ce69348c24ba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant4bc0bc0cf65bb1ca204c69354bb9ecc3e76872204bd394b3f71ce69348c24ba3.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18f310c4a15b09a568316cf700d76ffafb634021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
