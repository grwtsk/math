# ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7daac4605c96ec8ef3b79569837518f453c164c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09c31e32-e2fe-996e-37aa-3347ec661d1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9c62c80-b686-d627-4658-0e41589c0ca4",
  "kind": "lemma",
  "lexical_name": "ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq",
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
  "slug": "projectiveresolution-leftderivedtohomotopycategory-app-eq--e030b77b30fc1a2c59a14ebd",
  "source": {
    "blob": "f7daac4605c96ec8ef3b79569837518f453c164c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e030b77b30fc1a2c59a14ebda316a2f2ec25befcbe316d30e77b85c5d4616164",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9c62c80-b686-d627-4658-0e41589c0ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq
    {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) {X : C} (P : ProjectiveResolution X) :
    (NatTrans.leftDerivedToHomotopyCategory α).app X =
      (P.isoLeftDerivedToHomotopyCategoryObj F).hom ≫
        (HomotopyCategory.quotient _ _).map
          ((NatTrans.mapHomologicalComplex α _).app P.complex) ≫
          (P.isoLeftDerivedToHomotopyCategoryObj G).inv := by
  rw [← cancel_mono (P.isoLeftDerivedToHomotopyCategoryObj G).hom, assoc, assoc,
      Iso.inv_hom_id, comp_id]
  dsimp [isoLeftDerivedToHomotopyCategoryObj, Functor.mapHomotopyCategoryFactors,
    NatTrans.leftDerivedToHomotopyCategory]
  rw [assoc]
  erw [id_comp, comp_id]
  obtain ⟨β, hβ⟩ := (HomotopyCategory.quotient _ _).map_surjective (iso P).hom
  rw [← hβ]
  dsimp
  simp only [← Functor.map_comp, NatTrans.mapHomologicalComplex_naturality]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7daac4605c96ec8ef3b79569837518f453c164c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
