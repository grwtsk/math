# freeYonedaHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da9e3fd5211045c78f96fc9f812f6309dfc15606c2cc9c2c103678d6085a7365",
  "kind": "def",
  "lexical_name": "freeYonedaHomEquiv",
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
  "slug": "freeyonedahomequiv--cb7c3b6d6329f096ca8ae955",
  "source": {
    "blob": "cb136a03bf5dea31cd04d0970db603f51a49bbb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb7c3b6d6329f096ca8ae9550e323953093ab9344c740a199a3609083c4bb2aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da9e3fd5211045c78f96fc9f812f6309dfc15606c2cc9c2c103678d6085a7365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def freeYonedaHomEquiv {X : C} {M : A} {F : Cᵒᵖ ⥤ A} :
    (freeYoneda X M ⟶ F) ≃ (M ⟶ F.obj (op X)) where
  toFun f := Sigma.ι (fun (i : (yoneda.obj X).obj _) ↦ M) (𝟙 _) ≫ f.app (op X)
  invFun g :=
    { app Y := Sigma.desc (fun φ ↦ g ≫ F.map φ.op)
      naturality _ _ _ := Sigma.hom_ext _ _ (by simp)}
  left_inv f := by
    ext Y
    refine Sigma.hom_ext _ _ (fun φ ↦ ?_)
    simpa using (Sigma.ι _ (𝟙 _) ≫= f.naturality φ.op).symm
  right_inv g := by simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb136a03bf5dea31cd04d0970db603f51a49bbb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
