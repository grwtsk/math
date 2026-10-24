# ball_sub_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8f018d9-3cd9-5cf1-622f-c9aa40b86df1",
  "kind": "theorem",
  "lexical_name": "ball_sub_closedBall",
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
  "slug": "ball-sub-closedball--3a4e7592226cbc8a4ad48e8a",
  "source": {
    "blob": "8d5475f5b8aa812720c499ff5b0479122ce5f9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 364,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a4e7592226cbc8a4ad48e8a2bc420e80e509a25a5176f9c3cdeb6f60e712be9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f018d9-3cd9-5cf1-622f-c9aa40b86df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ball_sub_closedBall (hε : 0 < ε) (hδ : 0 ≤ δ) (a b : E) :
    ball a ε - closedBall b δ = ball (a - b) (ε + δ) := by
  simp_rw [sub_eq_add_neg, neg_closedBall, ball_add_closedBall hε hδ]
#align ball_sub_closed_ball ball_sub_closedBall

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5475f5b8aa812720c499ff5b0479122ce5f9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
