# precomposeObjTransformObjSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4d0a520b7283a1783bf450df3f89c748397140aeec0f3c3349e10fc55330eec",
  "kind": "instance",
  "lexical_name": "precomposeObjTransformObjSquare",
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
  "slug": "precomposeobjtransformobjsquare--7f138aa6a7ddccc50ecb74dd",
  "source": {
    "blob": "de777365098ac834b0c63e7328fe61d84bf29a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 728,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f138aa6a7ddccc50ecb74dd97c3c2580e7ff1924ba3ef80ccfb6d73edcf8646",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4d0a520b7283a1783bf450df3f89c748397140aeec0f3c3349e10fc55330eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance precomposeObjTransformObjSquare
    {X : Type u₇} {Y : Type u₈} [Category.{v₇} X] [Category.{v₈} Y]
    (ψ : CatCospanTransform F G F₁ G₁) (U : X ⥤ Y) :
    CatCommSq
      (precompose F G |>.obj U) (transform Y |>.obj ψ)
      (transform X |>.obj ψ) (precompose F₁ G₁ |>.obj U) where
  iso := NatIso.ofComponents (fun _ =>
    CatCommSqOver.mkIso
      (Functor.associator _ _ _)
      (Functor.associator _ _ _))
    (fun {x y} f ↦ by ext <;> simp)

-- Compare the next 3 lemmas with the components of a strong natural transform
-- of pseudofunctors

set_option backward.defeqAttrib.useBackward true in
/-- The square `precomposeObjTransformObjSquare` is itself natural. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b471e613c4beee5849ebf3e0a8ac683cc21935182bf7f6bd18f00747904b416.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de777365098ac834b0c63e7328fe61d84bf29a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
