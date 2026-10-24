# monoidalCategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce7d65a225f5d8c2b344356e1636bc8e430ac14c902fe7d32ea7f6759fdb2f93",
  "kind": "instance",
  "lexical_name": "monoidalCategoryStruct",
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
  "slug": "monoidalcategorystruct--cb890117df9288efe41a89b0",
  "source": {
    "blob": "d4e88aadaaf329e3857e555bbc9c21c1a58eb842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 279,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb890117df9288efe41a89b0a8e6836581d208cccbe8e3d044149eb49eaf79bf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce7d65a225f5d8c2b344356e1636bc8e430ac14c902fe7d32ea7f6759fdb2f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance monoidalCategoryStruct :
    MonoidalCategoryStruct (HomologicalComplex C c) where
  tensorObj K₁ K₂ := tensorObj K₁ K₂
  whiskerLeft _ _ _ g := tensorHom (𝟙 _) g
  whiskerRight f _ := tensorHom f (𝟙 _)
  tensorHom f g := tensorHom f g
  tensorUnit := tensorUnit C c
  associator K₁ K₂ K₃ := associator K₁ K₂ K₃
  leftUnitor K := leftUnitor K
  rightUnitor K := rightUnitor K

/-- The structure which allows to construct the monoidal category structure
on `HomologicalComplex C c` from the monoidal category structure on
graded objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e88aadaaf329e3857e555bbc9c21c1a58eb842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
