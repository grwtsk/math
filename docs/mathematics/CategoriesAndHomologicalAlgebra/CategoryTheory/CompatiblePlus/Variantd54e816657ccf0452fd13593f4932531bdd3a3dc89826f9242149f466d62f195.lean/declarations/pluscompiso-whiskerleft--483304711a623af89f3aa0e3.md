# plusCompIso_whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ec34a3d4e6a5c4db08d297273268bb65f3e5fee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeffbc85-22f9-33b8-d010-09bf22050048",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57475696-3a23-f5f0-5b21-f5a5265f0163",
  "kind": "theorem",
  "lexical_name": "plusCompIso_whiskerLeft",
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
  "slug": "pluscompiso-whiskerleft--483304711a623af89f3aa0e3",
  "source": {
    "blob": "5ec34a3d4e6a5c4db08d297273268bb65f3e5fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483304711a623af89f3aa0e3fb99905e86b4efdea12e12254cd66cb82ebffab6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57475696-3a23-f5f0-5b21-f5a5265f0163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plusCompIso_whiskerLeft {F G : D ⥤ E} (η : F ⟶ G) (P : Cᵒᵖ ⥤ D)
    [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ F]
    [∀ (X : C) (W : J.Cover X) (P : Cᵒᵖ ⥤ D), PreservesLimit (W.index P).multicospan F]
    [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ G]
    [∀ (X : C) (W : J.Cover X) (P : Cᵒᵖ ⥤ D), PreservesLimit (W.index P).multicospan G] :
    whiskerLeft _ η ≫ (J.plusCompIso G P).hom =
      (J.plusCompIso F P).hom ≫ J.plusMap (whiskerLeft _ η) := by
  ext X
  apply (isColimitOfPreserves F (colimit.isColimit (J.diagram P X.unop))).hom_ext
  intro W
  dsimp [plusObj, plusMap]
  simp only [ι_plusCompIso_hom, ι_colimMap, whiskerLeft_app, ι_plusCompIso_hom_assoc,
    NatTrans.naturality_assoc, GrothendieckTopology.diagramNatTrans_app]
  simp only [← Category.assoc]
  congr 1
  aesop_cat

/-- The isomorphism between `P⁺ ⋙ F` and `(P ⋙ F)⁺`, functorially in `F`. -/
@[simps! hom_app inv_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantd54e816657ccf0452fd13593f4932531bdd3a3dc89826f9242149f466d62f195.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec34a3d4e6a5c4db08d297273268bb65f3e5fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
