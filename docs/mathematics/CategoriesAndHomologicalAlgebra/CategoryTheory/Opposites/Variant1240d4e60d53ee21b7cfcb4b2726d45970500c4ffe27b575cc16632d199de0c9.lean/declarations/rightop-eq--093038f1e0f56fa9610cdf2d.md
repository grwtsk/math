# rightOp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8963a86-0a80-cf43-1a8d-7bd45acfc49a",
  "kind": "lemma",
  "lexical_name": "rightOp_eq",
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
  "slug": "rightop-eq--093038f1e0f56fa9610cdf2d",
  "source": {
    "blob": "123fb6525bc12bd20ff2e5dcb61c8e306d31023b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:093038f1e0f56fa9610cdf2df5149734cdb05a71463fce47028a7771829ae2a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8963a86-0a80-cf43-1a8d-7bd45acfc49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightOp_eq {F : Cᵒᵖ ⥤ D} {G : Dᵒᵖ ⥤ C} (a : F.rightOp ⊣ G) :
    a.rightOp = (opOpEquivalence D).symm.toAdjunction.comp a.op := by
  ext X; simp [Equivalence.unit]

set_option backward.defeqAttrib.useBackward true in
/-- If `F` and `F'` are both adjoint to `G`, there is a natural isomorphism
`F.op ⋙ coyoneda ≅ F'.op ⋙ coyoneda`.
We use this in combination with `fullyFaithfulCancelRight` to show left adjoints are unique.
-/
@[deprecated "No replacement" (since := "2026-04-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123fb6525bc12bd20ff2e5dcb61c8e306d31023b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
