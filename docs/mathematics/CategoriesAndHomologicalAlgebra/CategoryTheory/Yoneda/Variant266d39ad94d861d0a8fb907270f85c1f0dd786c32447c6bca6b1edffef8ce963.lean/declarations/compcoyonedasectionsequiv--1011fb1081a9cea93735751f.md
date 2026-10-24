# compCoyonedaSectionsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f511d4d6afa3d9f69ddc8d03cbda297ea2c217df305bb6ecb93f930831aba5ef",
  "kind": "def",
  "lexical_name": "compCoyonedaSectionsEquiv",
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
  "slug": "compcoyonedasectionsequiv--1011fb1081a9cea93735751f",
  "source": {
    "blob": "2d7a123e67f10a8e0c6f20897fcef75742e8eaf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1011fb1081a9cea93735751fd1796d7bcdd4bafb1519b5318a9a00ae7a745bf6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f511d4d6afa3d9f69ddc8d03cbda297ea2c217df305bb6ecb93f930831aba5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compCoyonedaSectionsEquiv (F : J ⥤ C) (X : C) :
    (F ⋙ coyoneda.obj (op X)).sections ≃ ((const J).obj X ⟶ F) where
  toFun s :=
    { app := fun j => s.val j
      naturality := fun j j' f => by
        dsimp
        rw [Category.id_comp]
        exact (s.property f).symm }
  invFun τ := ⟨τ.app, fun {j j'} f => by simpa using (τ.naturality f).symm⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Sections of `F.op ⋙ yoneda.obj X` identify to natural
transformations `F ⟶ (const J).obj X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d7a123e67f10a8e0c6f20897fcef75742e8eaf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
