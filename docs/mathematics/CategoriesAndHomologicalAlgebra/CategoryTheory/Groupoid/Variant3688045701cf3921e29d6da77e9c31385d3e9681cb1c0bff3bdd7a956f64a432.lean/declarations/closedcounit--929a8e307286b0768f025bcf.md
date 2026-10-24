# closedCounit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b8c37705c32cdd722160361f15a06632342ad56ba36e9a0f720fa95c741b31c",
  "kind": "def",
  "lexical_name": "closedCounit",
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
  "slug": "closedcounit--929a8e307286b0768f025bcf",
  "source": {
    "blob": "9e20267846ec40d371efade4d846b7a33a5621dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3688045701cf3921e29d6da77e9c31385d3e9681cb1c0bff3bdd7a956f64a432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:929a8e307286b0768f025bcf644b0b8dd59bcbdfab952bd644294eeaf122678a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3688045701cf3921e29d6da77e9c31385d3e9681cb1c0bff3bdd7a956f64a432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b8c37705c32cdd722160361f15a06632342ad56ba36e9a0f720fa95c741b31c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedCounit (F : D ⥤ C) : closedIhom F ⋙ tensorLeft F ⟶ 𝟭 (D ⥤ C) where
  app G :=
  { app := fun X => (ihom.ev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [closedIhom_obj_map, pre_comm_ihom_map]
      rw [tensorHom_def]
      simp }

/-- If `C` is a monoidal closed category and `D` is a groupoid, then every functor `F : D ⥤ C` is
closed in the functor category `F : D ⥤ C` with the pointwise monoidal structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3688045701cf3921e29d6da77e9c31385d3e9681cb1c0bff3bdd7a956f64a432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3688045701cf3921e29d6da77e9c31385d3e9681cb1c0bff3bdd7a956f64a432.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e20267846ec40d371efade4d846b7a33a5621dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
