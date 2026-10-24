# StrictConvexSpace.of_norm_combo_lt_one

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
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7277e89f-c353-1ef7-00b0-572bb6ff5808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5b9a2b4-4358-bd2e-4475-4eced083b28a",
  "kind": "theorem",
  "lexical_name": "StrictConvexSpace.of_norm_combo_lt_one",
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
  "slug": "strictconvexspace-of-norm-combo-lt-one--e397bb3b651ddd67a94d012d",
  "source": {
    "blob": "167083bd1e0e237a6d5bdb7e439e2448ae531a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e397bb3b651ddd67a94d012d9f7ec62aee27a3f2195974b5c98679f20a20e735",
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

Occurrence: `result:e5b9a2b4-4358-bd2e-4475-4eced083b28a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvexSpace.of_norm_combo_lt_one
    (h : ∀ x y : E, ‖x‖ = 1 → ‖y‖ = 1 → x ≠ y → ∃ a b : ℝ, a + b = 1 ∧ ‖a • x + b • y‖ < 1) :
    StrictConvexSpace ℝ E := by
  refine
    StrictConvexSpace.of_strictConvex_unitClosedBall ℝ
      ((convex_closedBall _ _).strictConvex' fun x hx y hy hne => ?_)
  rw [interior_closedBall (0 : E) one_ne_zero, closedBall_sdiff_ball,
    mem_sphere_zero_iff_norm] at hx hy
  rcases h x y hx hy hne with ⟨a, b, hab, hlt⟩
  use b
  rwa [AffineMap.lineMap_apply_module, interior_closedBall (0 : E) one_ne_zero, mem_ball_zero_iff,
    sub_eq_iff_eq_add.2 hab.symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167083bd1e0e237a6d5bdb7e439e2448ae531a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
