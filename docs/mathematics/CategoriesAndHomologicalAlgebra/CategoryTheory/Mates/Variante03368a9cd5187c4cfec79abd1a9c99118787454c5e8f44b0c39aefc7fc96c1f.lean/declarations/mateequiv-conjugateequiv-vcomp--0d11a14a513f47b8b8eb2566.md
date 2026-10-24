# mateEquiv_conjugateEquiv_vcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac742bc02e4759e5a7ec21abd787ef8a6509f3b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03368a9cd5187c4cfec79abd1a9c99118787454c5e8f44b0c39aefc7fc96c1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:471231a8-cc96-9fae-6413-8f919595f757",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e861c7a3-70cc-5149-f7b5-99d780a292a5",
  "kind": "theorem",
  "lexical_name": "mateEquiv_conjugateEquiv_vcomp",
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
  "slug": "mateequiv-conjugateequiv-vcomp--0d11a14a513f47b8b8eb2566",
  "source": {
    "blob": "ac742bc02e4759e5a7ec21abd787ef8a6509f3b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 485,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variante03368a9cd5187c4cfec79abd1a9c99118787454c5e8f44b0c39aefc7fc96c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d11a14a513f47b8b8eb2566a329c56c3dd17b78edb69c698709ab4a970200ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variante03368a9cd5187c4cfec79abd1a9c99118787454c5e8f44b0c39aefc7fc96c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e861c7a3-70cc-5149-f7b5-99d780a292a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_conjugateEquiv_vcomp {L₁ : A ⥤ B} {R₁ : B ⥤ A} {L₂ : C ⥤ D} {R₂ : D ⥤ C}
    {L₃ : C ⥤ D} {R₃ : D ⥤ C}
    (adj₁ : L₁ ⊣ R₁) (adj₂ : L₂ ⊣ R₂) (adj₃ : L₃ ⊣ R₃) (α : TwoSquare G L₁ L₂ H) (β : L₃ ⟶ L₂) :
    (mateEquiv adj₁ adj₃) (α.whiskerRight β) =
      (mateEquiv adj₁ adj₂ α).whiskerBottom (conjugateEquiv adj₂ adj₃ β) := by
  ext b
  have vcomp := mateEquiv_vcomp adj₁ adj₂ adj₃ α (L₃.leftUnitor.hom ≫ β ≫ L₂.rightUnitor.inv)
  unfold vComp hComp at vcomp
  have vcompb := congr_app vcomp b
  simp only [comp_obj, id_obj, whiskerLeft_comp, assoc, mateEquiv_apply, whiskerLeft_twice,
    Iso.hom_inv_id_assoc, whiskerRight_comp, comp_app, Functor.whiskerLeft_app,
    Functor.whiskerRight_app, associator_hom_app, map_id, associator_inv_app, leftUnitor_hom_app,
    rightUnitor_inv_app, Functor.id_map, Functor.comp_map, id_comp, whiskerRight_twice,
    comp_id] at vcompb
  simpa [mateEquiv]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The mates equivalence commutes with this composition, essentially by `mateEquiv_vcomp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variante03368a9cd5187c4cfec79abd1a9c99118787454c5e8f44b0c39aefc7fc96c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variante03368a9cd5187c4cfec79abd1a9c99118787454c5e8f44b0c39aefc7fc96c1f.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac742bc02e4759e5a7ec21abd787ef8a6509f3b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
