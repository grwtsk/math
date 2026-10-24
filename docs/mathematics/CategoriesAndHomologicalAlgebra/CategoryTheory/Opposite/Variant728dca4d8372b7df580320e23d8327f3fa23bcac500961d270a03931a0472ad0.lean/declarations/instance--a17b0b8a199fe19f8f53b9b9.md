# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f96d38f9a4838e1fef66aad7497bdcecc7e2e5b4c1d7b17ca4db5fb52ad29400",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a17b0b8a199fe19f8f53b9b9",
  "source": {
    "blob": "4e0ab4ce38d51daafea8c2370d52085d3f9ded28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant728dca4d8372b7df580320e23d8327f3fa23bcac500961d270a03931a0472ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a17b0b8a199fe19f8f53b9b943499612849a0b597109deca3490bafce9c1eea8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant728dca4d8372b7df580320e23d8327f3fa23bcac500961d270a03931a0472ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f96d38f9a4838e1fef66aad7497bdcecc7e2e5b4c1d7b17ca4db5fb52ad29400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : NatTrans.CommShift (OppositeShift.natIsoId C A).hom A where
  shift_comm _ := by
    ext
    dsimp [OppositeShift.natIsoId, Functor.commShiftOp_iso_eq]
    simp only [Functor.commShiftIso_id_hom_app, Functor.map_id,
      comp_id, Functor.commShiftIso_id_inv_app, CategoryTheory.op_id, id_comp]
    rfl

variable {E : Type*} [Category* E] [HasShift E A] (G : D ⥤ E)

/-- The obvious isomorphism between `OppositeShift.functor (F ⋙ G)` and the
composition of `OppositeShift.functor F` and `OppositeShift.functor G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant728dca4d8372b7df580320e23d8327f3fa23bcac500961d270a03931a0472ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant728dca4d8372b7df580320e23d8327f3fa23bcac500961d270a03931a0472ad0.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0ab4ce38d51daafea8c2370d52085d3f9ded28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
