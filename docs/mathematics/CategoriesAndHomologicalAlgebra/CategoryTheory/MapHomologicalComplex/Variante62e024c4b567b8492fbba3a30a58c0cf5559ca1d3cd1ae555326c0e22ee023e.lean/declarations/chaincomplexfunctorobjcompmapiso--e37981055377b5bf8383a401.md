# chainComplexFunctorObjCompMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:700abf414e16bcb0bc366c9af635ccd1a8a23d678e08c7b48dababbd8f95ebed",
  "kind": "def",
  "lexical_name": "chainComplexFunctorObjCompMapIso",
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
  "slug": "chaincomplexfunctorobjcompmapiso--e37981055377b5bf8383a401",
  "source": {
    "blob": "77855b674c0cad284f397092d52da4a8852a93ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e37981055377b5bf8383a401ce9864af1a93066810755bd2a58cdd2aab16a0b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:700abf414e16bcb0bc366c9af635ccd1a8a23d678e08c7b48dababbd8f95ebed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def chainComplexFunctorObjCompMapIso :
    (chainComplexFunctor C).obj R ⋙ F.mapHomologicalComplex (.down ℕ) ≅
    (chainComplexFunctor D).obj (F.obj R) :=
  calc
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
      alternatingFaceMapComplex C ⋙ F.mapHomologicalComplex _ := associator ..
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F ⋙ alternatingFaceMapComplex D :=
      isoWhiskerLeft _ (alternatingFaceMapComplexCompMapHomologicalComplexIso _)
    _ ≅ ((whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F) ⋙ alternatingFaceMapComplex D :=
      (associator ..).symm
    _ ≅ (whiskering ..).obj (sigmaConst.obj R ⋙ F) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight (whiskeringRightObjCompIso ..) _
    _ ≅ (whiskering ..).obj (sigmaConst.obj (F.obj R)) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight ((whiskering ..).mapIso (sigmaConstObjCompIso F R)) _

variable {R} in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variante62e024c4b567b8492fbba3a30a58c0cf5559ca1d3cd1ae555326c0e22ee023e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77855b674c0cad284f397092d52da4a8852a93ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
