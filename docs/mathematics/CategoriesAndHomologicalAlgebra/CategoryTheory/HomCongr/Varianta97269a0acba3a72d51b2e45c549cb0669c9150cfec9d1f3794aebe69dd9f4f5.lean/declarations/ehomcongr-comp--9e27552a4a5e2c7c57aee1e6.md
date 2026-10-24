# eHomCongr_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9536a0d158544b47d516aeed575cca98444429db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96ec4a23-1923-10a8-7a55-a179e8527c24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fae77ffd-6f77-edfb-97d1-6ea3cebb1b76",
  "kind": "lemma",
  "lexical_name": "eHomCongr_comp",
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
  "slug": "ehomcongr-comp--9e27552a4a5e2c7c57aee1e6",
  "source": {
    "blob": "9536a0d158544b47d516aeed575cca98444429db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e27552a4a5e2c7c57aee1e6d5ee3396d1cf37b3efce6c9cb64b01ab06c1a2e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae77ffd-6f77-edfb-97d1-6ea3cebb1b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eHomCongr_comp {X Y Z X₁ Y₁ Z₁ : C} (α : X ≅ X₁) (β : Y ≅ Y₁) (γ : Z ≅ Z₁)
    (f : X ⟶ Y) (g : Y ⟶ Z) :
    eHomEquiv V (f ≫ g) ≫ (eHomCongr V α γ).hom =
      (λ_ _).inv ≫ (eHomEquiv V f ≫ (eHomCongr V α β).hom) ▷ _ ≫
        _ ◁ (eHomEquiv V g ≫ (eHomCongr V β γ).hom) ≫ eComp V X₁ Y₁ Z₁ := by
  simp only [eHomCongr, MonoidalCategory.whiskerRight_id, assoc,
    MonoidalCategory.whiskerLeft_comp]
  rw [rightUnitor_inv_naturality_assoc, rightUnitor_inv_naturality_assoc,
    rightUnitor_inv_naturality_assoc, hom_inv_id_assoc, ← whisker_exchange_assoc,
    ← whisker_exchange_assoc, ← eComp_eHomWhiskerLeft, eHom_whisker_cancel_assoc,
    ← eComp_eHomWhiskerRight_assoc, ← tensorHom_def_assoc,
    ← eHomEquiv_comp_assoc]

/-- The inverse map defined by `eHomCongr` respects composition of morphisms. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9536a0d158544b47d516aeed575cca98444429db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
