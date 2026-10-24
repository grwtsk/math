# norm_combo_lt_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eac93b9c-806f-81a3-a477-6d3afa66f2a0",
  "kind": "theorem",
  "lexical_name": "norm_combo_lt_of_ne",
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
  "slug": "norm-combo-lt-of-ne--f9ca83d74e357d745c267009",
  "source": {
    "blob": "0f8f3d8bfe4e99d02fb98a93213938e7c09f02c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 168,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ca83d74e357d745c2670090c928a9f50655e8d7f897321b60a3e23a85e5028",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac93b9c-806f-81a3-a477-6d3afa66f2a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_combo_lt_of_ne (hx : ‖x‖ ≤ r) (hy : ‖y‖ ≤ r) (hne : x ≠ y) (ha : 0 < a) (hb : 0 < b)
    (hab : a + b = 1) : ‖a • x + b • y‖ < r := by
  simp only [← mem_ball_zero_iff, ← mem_closedBall_zero_iff] at hx hy ⊢
  exact combo_mem_ball_of_ne hx hy hne ha hb hab

/-- In a strictly convex space, if `x` and `y` are not in the same ray, then `‖x + y‖ < ‖x‖ + ‖y‖`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantba98940223786b9a8daef941a0a345f8ac93738adaba2060c634abc748cc9961.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f8f3d8bfe4e99d02fb98a93213938e7c09f02c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
