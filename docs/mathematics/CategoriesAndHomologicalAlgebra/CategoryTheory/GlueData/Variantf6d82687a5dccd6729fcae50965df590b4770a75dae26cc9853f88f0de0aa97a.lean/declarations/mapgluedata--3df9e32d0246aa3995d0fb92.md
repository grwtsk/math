# mapGlueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a524b3e93a4baec9a59a49d940cc16db840ca4b7c3ab535ef8f0f75ea2b73714",
  "kind": "def",
  "lexical_name": "mapGlueData",
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
  "slug": "mapgluedata--3df9e32d0246aa3995d0fb92",
  "source": {
    "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 260,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3df9e32d0246aa3995d0fb92e9cfce958b756ef3ca657583cd2746724dbf0910",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a524b3e93a4baec9a59a49d940cc16db840ca4b7c3ab535ef8f0f75ea2b73714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapGlueData : GlueData C' where
  J := D.J
  U i := F.obj (D.U i)
  V i := F.obj (D.V i)
  f i j := F.map (D.f i j)
  f_mono i j := preserves_mono_of_preservesLimit _ _
  f_id i := inferInstance
  t i j := F.map (D.t i j)
  t_id i := by
    simp [D.t_id i]
  t' i j k :=
    (PreservesPullback.iso F (D.f i j) (D.f i k)).inv ≫
      F.map (D.t' i j k) ≫ (PreservesPullback.iso F (D.f j k) (D.f j i)).hom
  t_fac i j k := by simpa [Iso.inv_comp_eq] using congr_arg (fun f => F.map f) (D.t_fac i j k)
  cocycle i j k := by
    simp only [Category.assoc, Iso.hom_inv_id_assoc, ← Functor.map_comp_assoc, D.cocycle,
      Iso.inv_hom_id, CategoryTheory.Functor.map_id, Category.id_comp]
#align category_theory.glue_data.map_glue_data CategoryTheory.GlueData.mapGlueData

/-- The diagram of the image of a `GlueData` under a functor `F` is naturally isomorphic to the
original diagram of the `GlueData` via `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
