# uliftYonedaIsoShrinkCoyoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:531dc66bf5d346ed505d56052483d575b7b8a2b986714089dc8c1026c71021d2",
  "kind": "def",
  "lexical_name": "uliftYonedaIsoShrinkCoyoneda",
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
  "slug": "uliftyonedaisoshrinkcoyoneda--29aad274554e84afc103406c",
  "source": {
    "blob": "d5ecf21dd4bf8ff1a63aced746ba65187aa4d822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 413,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29aad274554e84afc103406c62203b1e488347ec7817d6295e741fa163316e55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:531dc66bf5d346ed505d56052483d575b7b8a2b986714089dc8c1026c71021d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def uliftYonedaIsoShrinkCoyoneda :
    uliftCoyoneda.{w'} (C := C) ≅ shrinkCoyoneda.{max w' v} :=
  NatIso.ofComponents (fun X ↦ NatIso.ofComponents
    (fun Y ↦ (Equiv.ulift.trans shrinkCoyonedaObjObjEquiv.symm).toIso) (fun f ↦ by
      ext
      exact (shrinkCoyoneda_obj_map_shrinkCoyonedaObjObjEquiv_symm _ _).symm)) (fun g ↦ by
      ext
      exact (shrinkCoyoneda_map_app_shrinkCoyonedaObjObjEquiv_symm _ _).symm)

set_option backward.defeqAttrib.useBackward true in
/-- The functor `shrinkCoyoneda.{w}` followed by the evaluation
at `Y : C` and `uliftFunctor.{v}` identifies to `yoneda.obj Y` followed
by `uliftFunctor.{w}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShrinkYoneda/Variant3540fa18ab255042bf30830dbacbf88def607b4525e0c48f48e5e3df916259ab.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ecf21dd4bf8ff1a63aced746ba65187aa4d822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
