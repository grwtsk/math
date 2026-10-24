# Comonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ecd7de3e9c56e66eac0990fa654182bfe8cbb5a35c2cf289a4c5b316ffad180",
  "kind": "structure",
  "lexical_name": "Comonad",
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
  "slug": "comonad--75d04973bdbf152f1ae4b377",
  "source": {
    "blob": "33e74bca4a67007d9139c1cf31c33fa044ae5546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75d04973bdbf152f1ae4b37780a898b53421f0b1c19340fa15e6503ed3b635e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ecd7de3e9c56e66eac0990fa654182bfe8cbb5a35c2cf289a4c5b316ffad180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Comonad extends C ⥤ C where
  /-- The counit for the comonad. -/
  ε : toFunctor ⟶ 𝟭 _
  /-- The comultiplication for the comonad. -/
  δ : toFunctor ⟶ toFunctor ⋙ toFunctor
  coassoc : ∀ X, NatTrans.app δ _ ≫ toFunctor.map (δ.app X) = δ.app _ ≫ δ.app _ := by
    cat_disch
  left_counit : ∀ X : C, δ.app X ≫ ε.app (toFunctor.obj X) = 𝟙 _ := by cat_disch
  right_counit : ∀ X : C, δ.app X ≫ toFunctor.map (ε.app X) = 𝟙 _ := by cat_disch

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33e74bca4a67007d9139c1cf31c33fa044ae5546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
