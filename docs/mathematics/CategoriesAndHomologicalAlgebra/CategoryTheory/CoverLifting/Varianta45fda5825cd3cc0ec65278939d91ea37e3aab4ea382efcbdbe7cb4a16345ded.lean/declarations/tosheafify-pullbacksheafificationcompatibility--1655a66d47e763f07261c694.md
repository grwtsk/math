# toSheafify_pullbackSheafificationCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd4146a3-a3aa-7899-bda2-52901908f324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0564adb2-313a-0e43-0db2-3dd47e92bde2",
  "kind": "lemma",
  "lexical_name": "toSheafify_pullbackSheafificationCompatibility",
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
  "slug": "tosheafify-pullbacksheafificationcompatibility--1655a66d47e763f07261c694",
  "source": {
    "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 390,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1655a66d47e763f07261c6947197487583dfb439c63f31034c4a8e46c5ab31b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0564adb2-313a-0e43-0db2-3dd47e92bde2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSheafify_pullbackSheafificationCompatibility (F : Dᵒᵖ ⥤ A) :
    toSheafify J (G.op ⋙ F) ≫
    ((G.pushforwardContinuousSheafificationCompatibility A J K).hom.app F).hom =
    whiskerLeft _ (toSheafify K _) := by
  let adj₁ := G.op.ranAdjunction A
  let adj₂ := sheafificationAdjunction J A
  let adj₃ := sheafificationAdjunction K A
  let adj₄ := G.sheafAdjunctionCocontinuous A J K
  change adj₂.unit.app (((whiskeringLeft Cᵒᵖ Dᵒᵖ A).obj G.op).obj F) ≫
    (sheafToPresheaf J A).map (((adj₁.comp adj₂).leftAdjointUniq (adj₃.comp adj₄)).hom.app F) =
      ((whiskeringLeft Cᵒᵖ Dᵒᵖ A).obj G.op).map (adj₃.unit.app F)
  apply (adj₁.homEquiv _ _).injective
  have eq := (adj₁.comp adj₂).unit_leftAdjointUniq_hom_app (adj₃.comp adj₄) F
  rw [Adjunction.comp_unit_app, Adjunction.comp_unit_app, comp_map,
    Category.assoc] at eq
  rw [adj₁.homEquiv_unit, Functor.map_comp, eq]
  apply (adj₁.homEquiv _ _).symm.injective
  simp only [Adjunction.homEquiv_counit, map_comp, Category.assoc,
    Adjunction.homEquiv_unit, Adjunction.unit_naturality]
  congr 3
  exact G.sheafAdjunctionCocontinuous_unit_app_hom A J K ((presheafToSheaf K A).obj F)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40637bfe56ffef83f620b50a8f018b54fffb3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
