# abs_lt_norm_sub_of_not_sameRay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "167083bd1e0e237a6d5bdb7e439e2448ae531a5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33a2274e-0f13-fedd-2e7e-1283965839fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52e6d02f-b302-0a45-97b2-d19196fcd787",
  "kind": "theorem",
  "lexical_name": "abs_lt_norm_sub_of_not_sameRay",
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
  "slug": "abs-lt-norm-sub-of-not-sameray--99da4bd6b48dad8db6feeec2",
  "source": {
    "blob": "167083bd1e0e237a6d5bdb7e439e2448ae531a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99da4bd6b48dad8db6feeec25d52d99c298ebb7608636cf450580fa20bb6c8d8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e6d02f-b302-0a45-97b2-d19196fcd787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_lt_norm_sub_of_not_sameRay (h : ¬SameRay ℝ x y) : |‖x‖ - ‖y‖| < ‖x - y‖ := by
  refine abs_sub_lt_iff.2 ⟨lt_norm_sub_of_not_sameRay h, ?_⟩
  rw [norm_sub_rev]
  exact lt_norm_sub_of_not_sameRay (mt SameRay.symm h)

/-- In a strictly convex space, two vectors `x`, `y` are in the same ray if and only if the triangle
inequality for `x` and `y` becomes an equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167083bd1e0e237a6d5bdb7e439e2448ae531a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
