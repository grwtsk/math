# circleMap_neg_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07b9c993-b28c-b4bf-c4f9-ae9cd6a060aa",
  "kind": "lemma",
  "lexical_name": "circleMap_neg_pi_div_two",
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
  "slug": "circlemap-neg-pi-div-two--b2d719b08aa91ad50ee89204",
  "source": {
    "blob": "a0a3ed2ef6e5883de83dfeb93ad935a4cd4c8ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d719b08aa91ad50ee89204682bb5206c3f127afd9234763e8b43af9bf3409c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07b9c993-b28c-b4bf-c4f9-ae9cd6a060aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma circleMap_neg_pi_div_two (c : ℂ) (R : ℝ) : circleMap c R (-π / 2) = c - R * I := by
  simp only [circleMap, ofReal_div, ofReal_neg, ofReal_ofNat, exp_neg_pi_div_two_mul_I, mul_neg,
    sub_eq_add_neg]

/-- `circleMap` is `2π`-periodic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variant209d5b9eed939e3680c8dd87597db4d28bd3d0f9509a9ec46ff988ebf0457aef.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a3ed2ef6e5883de83dfeb93ad935a4cd4c8ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
