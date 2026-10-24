# addHaar_sphere_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaceb80a-2521-0ea8-2314-956dcab6e5c2",
  "kind": "theorem",
  "lexical_name": "addHaar_sphere_of_ne_zero",
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
  "slug": "addhaar-sphere-of-ne-zero--2acec1b45584df8eea43d5b2",
  "source": {
    "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2acec1b45584df8eea43d5b2a4fb33bc45442405675c8001332c512682d2e138",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaceb80a-2521-0ea8-2314-956dcab6e5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_sphere_of_ne_zero (x : E) {r : ℝ} (hr : r ≠ 0) : μ (sphere x r) = 0 := by
  rcases hr.lt_or_lt with (h | h)
  · simp only [empty_diff, measure_empty, ← closedBall_diff_ball, closedBall_eq_empty.2 h]
  · rw [← closedBall_diff_ball,
      measure_diff ball_subset_closedBall measurableSet_ball.nullMeasurableSet
        measure_ball_lt_top.ne,
      addHaar_ball_of_pos μ _ h, addHaar_closedBall μ _ h.le, tsub_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
