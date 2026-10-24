# InjectiveResolution.toRightDerivedZero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edd6de2c456a25a304893d9c89c9749a29c577b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7dbdabc-99fe-c776-9d9a-8e1e0e9de472",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a9501b4-e194-f2e4-ddd3-d9ae8d21320a",
  "kind": "lemma",
  "lexical_name": "InjectiveResolution.toRightDerivedZero_eq",
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
  "slug": "injectiveresolution-torightderivedzero-eq--93885555b42eb8d916d56d5b",
  "source": {
    "blob": "edd6de2c456a25a304893d9c89c9749a29c577b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93885555b42eb8d916d56d5b255c1265745348f4c4f1c6e3f63c2854db59eb70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a9501b4-e194-f2e4-ddd3-d9ae8d21320a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma InjectiveResolution.toRightDerivedZero_eq
    {X : C} (I : InjectiveResolution X) (F : C ⥤ D) [F.Additive] :
    F.toRightDerivedZero.app X = I.toRightDerivedZero' F ≫
      (CochainComplex.isoHomologyπ₀ _).hom ≫ (I.isoRightDerivedObj F 0).inv := by
  dsimp [Functor.toRightDerivedZero, isoRightDerivedObj]
  have h₁ := InjectiveResolution.toRightDerivedZero'_naturality
    (𝟙 X) (injectiveResolution X) I (desc (𝟙 X) _ _) (by simp) F
  simp only [Functor.map_id, id_comp] at h₁
  have h₂ : (I.isoRightDerivedToHomotopyCategoryObj F).hom =
    (F.mapHomologicalComplex _ ⋙ HomotopyCategory.quotient _ _).map (desc (𝟙 X) _ _) :=
    comp_id _
  rw [← cancel_mono ((HomotopyCategory.homologyFunctor _ _ 0).map
      (I.isoRightDerivedToHomotopyCategoryObj F).hom),
    assoc, assoc, assoc, assoc, assoc, ← Functor.map_comp,
    Iso.inv_hom_id, Functor.map_id, comp_id,
    reassoc_of% h₁, h₂, ← HomologicalComplex.homologyπ_naturality_assoc]
  erw [← NatTrans.naturality]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edd6de2c456a25a304893d9c89c9749a29c577b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
