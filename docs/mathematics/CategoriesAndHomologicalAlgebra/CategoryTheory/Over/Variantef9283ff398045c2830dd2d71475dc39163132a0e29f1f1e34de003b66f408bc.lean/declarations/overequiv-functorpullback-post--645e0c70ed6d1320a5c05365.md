# overEquiv_functorPullback_post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b74bcdba-1e4c-f760-af0b-7c4b9ae9d3ab",
  "kind": "lemma",
  "lexical_name": "overEquiv_functorPullback_post",
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
  "slug": "overequiv-functorpullback-post--645e0c70ed6d1320a5c05365",
  "source": {
    "blob": "35617770c1b1a47be2946a309843262691cbf79e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:645e0c70ed6d1320a5c05365729dacfbea825bed1c9ba636b52512b2ea40a2b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b74bcdba-1e4c-f760-af0b-7c4b9ae9d3ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overEquiv_functorPullback_post {D : Type*} [Category* D] (F : C ⥤ D) {X : C}
    (U : Over X) (S : Sieve ((Over.post F).obj U)) :
    (Sieve.overEquiv U) (Sieve.functorPullback (Over.post F) S) =
      Sieve.functorPullback F ((Sieve.overEquiv ((Over.post F).obj U)) S) := by
  refine le_antisymm ?_ ?_
  · dsimp [Sieve.overEquiv]
    rw [Sieve.functorPushforward_le_iff_le_functorPullback, ← Sieve.functorPullback_comp]
    simp_rw [← CategoryTheory.Over.post_forget_eq_forget_comp, Sieve.functorPullback_comp]
    exact Sieve.functorPullback_monotone _ _ (Sieve.le_functorPushforward_pullback _ _)
  · intro Z g hg
    rw [Sieve.overEquiv_iff]
    dsimp [Presieve.functorPullback]
    convert! (Sieve.overEquiv_iff _ _).mp hg
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantef9283ff398045c2830dd2d71475dc39163132a0e29f1f1e34de003b66f408bc.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35617770c1b1a47be2946a309843262691cbf79e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
