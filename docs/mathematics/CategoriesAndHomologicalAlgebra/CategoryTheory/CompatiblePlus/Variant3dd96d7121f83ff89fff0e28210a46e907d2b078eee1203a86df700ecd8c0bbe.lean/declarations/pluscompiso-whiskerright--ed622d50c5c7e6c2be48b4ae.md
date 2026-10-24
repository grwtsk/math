# plusCompIso_whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "919bda4679eeb8a472d5ca7d9e84de2d9346488c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dd96d7121f83ff89fff0e28210a46e907d2b078eee1203a86df700ecd8c0bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d57f75e-4060-94a2-8aa7-30836b051b2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8905b348-e642-4a5a-79e4-9506c4f7a38a",
  "kind": "theorem",
  "lexical_name": "plusCompIso_whiskerRight",
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
  "slug": "pluscompiso-whiskerright--ed622d50c5c7e6c2be48b4ae",
  "source": {
    "blob": "919bda4679eeb8a472d5ca7d9e84de2d9346488c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant3dd96d7121f83ff89fff0e28210a46e907d2b078eee1203a86df700ecd8c0bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed622d50c5c7e6c2be48b4aee311c558b25bba4af6d87bbf00edd1a33be4295c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant3dd96d7121f83ff89fff0e28210a46e907d2b078eee1203a86df700ecd8c0bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8905b348-e642-4a5a-79e4-9506c4f7a38a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plusCompIso_whiskerRight {P Q : Cᵒᵖ ⥤ D} (η : P ⟶ Q) :
    whiskerRight (J.plusMap η) F ≫ (J.plusCompIso F Q).hom =
      (J.plusCompIso F P).hom ≫ J.plusMap (whiskerRight η F) := by
  ext X
  apply (isColimitOfPreserves F (colimit.isColimit (J.diagram P X.unop))).hom_ext
  intro W
  dsimp [plusObj, plusMap]
  simp only [ι_colimMap, whiskerRight_app, ι_plusCompIso_hom_assoc,
    GrothendieckTopology.diagramNatTrans_app]
  simp only [← Category.assoc, ← F.map_comp]
  dsimp [colimMap, IsColimit.map]
  simp only [colimit.ι_desc]
  dsimp [Cocone.precompose]
  simp only [Functor.map_comp, Category.assoc, ι_plusCompIso_hom]
  simp only [← Category.assoc]
  congr 1
  dsimp only [diagram] -- Need to unfold `diagram` before `ext` applies.
  ext a
  dsimp
  simp only [diagramCompIso_hom_ι_assoc, Multiequalizer.lift_ι, diagramCompIso_hom_ι,
    Category.assoc]
  simp only [← F.map_comp, Multiequalizer.lift_ι]

/-- The isomorphism between `P⁺ ⋙ F` and `(P ⋙ F)⁺`, functorially in `P`. -/
@[simps! hom_app inv_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant3dd96d7121f83ff89fff0e28210a46e907d2b078eee1203a86df700ecd8c0bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant3dd96d7121f83ff89fff0e28210a46e907d2b078eee1203a86df700ecd8c0bbe.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `919bda4679eeb8a472d5ca7d9e84de2d9346488c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
