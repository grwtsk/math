# whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:649579cf7f14eb960559da14736d7407c073779cbf843f4be5db865477a4c698",
  "kind": "def",
  "lexical_name": "whiskerRight",
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
  "slug": "whiskerright--8d5e86bef6538cd93811bd5b",
  "source": {
    "blob": "0a174fd66170b1541d9a4d3932ce928edd63cb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d5e86bef6538cd93811bd5bb92c04a21d08cd9688657d3482d10e9e8d6889df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:649579cf7f14eb960559da14736d7407c073779cbf843f4be5db865477a4c698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def whiskerRight (adj : F ⊣ G) :
    (whiskeringRight C D E).obj F ⊣ (whiskeringRight C E D).obj G where
  unit :=
    { app := fun X =>
        (Functor.rightUnitor _).inv ≫ whiskerLeft X adj.unit ≫ (Functor.associator _ _ _).inv
      naturality := by intros; ext; dsimp; simp }
  counit :=
    { app := fun X =>
        (Functor.associator _ _ _).hom ≫ whiskerLeft X adj.counit ≫ (Functor.rightUnitor _).hom
      naturality := by intros; ext; dsimp; simp }

/-- Given an adjunction `F ⊣ G`, this provides the natural adjunction
  `(whiskeringLeft _ _ C).obj G ⊣ (whiskeringLeft _ _ C).obj F`. -/
@[simps! unit_app_app counit_app_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a174fd66170b1541d9a4d3932ce928edd63cb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
