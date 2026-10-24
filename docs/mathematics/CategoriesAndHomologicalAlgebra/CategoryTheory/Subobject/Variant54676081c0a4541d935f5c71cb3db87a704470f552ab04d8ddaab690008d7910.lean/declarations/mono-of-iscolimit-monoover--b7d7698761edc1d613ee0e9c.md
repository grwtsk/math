# mono_of_isColimit_monoOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e99b635-b094-5c7d-55a8-218ae05bcb88",
  "kind": "lemma",
  "lexical_name": "mono_of_isColimit_monoOver",
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
  "slug": "mono-of-iscolimit-monoover--b7d7698761edc1d613ee0e9c",
  "source": {
    "blob": "1edeb2c79485f410a13b2570209e18c2b0fa14de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant54676081c0a4541d935f5c71cb3db87a704470f552ab04d8ddaab690008d7910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d7698761edc1d613ee0e9c956bfa418adcd2f051accef8b400b9d86be123a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant54676081c0a4541d935f5c71cb3db87a704470f552ab04d8ddaab690008d7910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e99b635-b094-5c7d-55a8-218ae05bcb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_isColimit_monoOver : Mono f := by
  let α : F ⋙ MonoOver.forget _ ⋙ Over.forget _ ⟶ (Functor.const _).obj X :=
    { app j := (F.obj j).obj.hom }
  have := NatTrans.mono_of_mono_app α
  exact colim.map_mono' α hc (isColimitConstCocone J X) f (by simpa using hf)

set_option backward.defeqAttrib.useBackward true in
/-- If `C` is a Grothendieck abelian category, `X : C`, if `F : J ⥤ MonoOver X` is a
functor from a filtered category `J`, the colimit of `F` (computed in `C`) gives
a subobject of `F` which is a supremum of the subobjects corresponding to
the objects in the image of the functor `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant54676081c0a4541d935f5c71cb3db87a704470f552ab04d8ddaab690008d7910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant54676081c0a4541d935f5c71cb3db87a704470f552ab04d8ddaab690008d7910.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1edeb2c79485f410a13b2570209e18c2b0fa14de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
