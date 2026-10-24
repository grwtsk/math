# πFunctorObj_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3f326277854862881e91ef9d581adc4df225d7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8fbe504-1912-3379-e68d-d94f3968c517",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23e55273-6152-8d39-0c06-4bcc8d335f09",
  "kind": "lemma",
  "lexical_name": "πFunctorObj_eq",
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
  "slug": "functorobj-eq--ed74127bba8a8b66f54aae97",
  "source": {
    "blob": "f3f326277854862881e91ef9d581adc4df225d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed74127bba8a8b66f54aae9783ab893830d106a855c5fd7ea23214e2aa814165",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23e55273-6152-8d39-0c06-4bcc8d335f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma πFunctorObj_eq (j : κ.ord.toType) :
    letI := hasColimitsOfShape_discrete I κ
    letI := hasPushouts I κ
    πFunctorObj I.homFamily (((iterationFunctor I κ).obj j).obj (Arrow.mk f)).hom =
      (relativeCellComplexιObjFObjSuccIso I κ f j).inv ≫
      (relativeCellComplexιObj I κ f).incl.app (Order.succ j) ≫
      πObj I κ f ≫ (iterationFunctorObjObjRightIso I κ (Arrow.mk f) j).inv := by
  have h₁ := (iterationFunctorMapSuccAppArrowIso I κ f j).hom.right.w
  have h₂ := (transfiniteCompositionOfShapeSuccStructPropιIteration I κ).incl.naturality
    (homOfLE (Order.le_succ j))
  dsimp at h₁ h₂
  rw [comp_id] at h₂
  rw [← cancel_mono (iterationFunctorObjObjRightIso I κ (Arrow.mk f) j).hom,
    ← cancel_mono ((ιIteration I κ).app f).right, assoc, assoc, assoc, assoc, assoc,
    Iso.inv_hom_id_assoc, πObj_ιIteration_app_right,
    iterationFunctorObjObjRightIso_ιIteration_app_right,
    ← cancel_epi (relativeCellComplexιObjFObjSuccIso I κ f j).hom, Iso.hom_inv_id_assoc]
  dsimp [relativeCellComplexιObjFObjSuccIso,
    relativeCellComplexιObj, transfiniteCompositionOfShapeιIterationAppRight]
  simp only [reassoc_of% h₁, comp_id, comp_id, Arrow.w_mk_right, ← h₂,
    NatTrans.comp_app, Arrow.comp_right,
    iterationFunctorMapSuccAppArrowIso_hom_right_right_comp_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3f326277854862881e91ef9d581adc4df225d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
