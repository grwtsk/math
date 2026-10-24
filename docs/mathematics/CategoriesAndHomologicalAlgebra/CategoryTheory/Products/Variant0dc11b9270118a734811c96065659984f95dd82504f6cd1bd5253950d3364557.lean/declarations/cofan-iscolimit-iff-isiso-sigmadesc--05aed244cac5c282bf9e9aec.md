# Cofan.isColimit_iff_isIso_sigmaDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c8ebddb92a25b690a254e3470bb72146f10ddff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e29bca12-f855-9f33-11b4-b09af407091f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b41eb1b-fc01-f639-e9a9-695e80454ad6",
  "kind": "lemma",
  "lexical_name": "Cofan.isColimit_iff_isIso_sigmaDesc",
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
  "slug": "cofan-iscolimit-iff-isiso-sigmadesc--05aed244cac5c282bf9e9aec",
  "source": {
    "blob": "8c8ebddb92a25b690a254e3470bb72146f10ddff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05aed244cac5c282bf9e9aec3af15b316318dbbca6fdc3a8794315e0dac9c614",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b41eb1b-fc01-f639-e9a9-695e80454ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cofan.isColimit_iff_isIso_sigmaDesc {f : β → C} [HasCoproduct f] (c : Cofan f) :
    IsIso (Sigma.desc c.inj) ↔ Nonempty (IsColimit c) := by
  refine ⟨fun h ↦ ⟨isColimitOfIsIsoSigmaDesc c⟩, fun ⟨hc⟩ ↦ ?_⟩
  have : IsIso (((coproductIsCoproduct f).coconePointUniqueUpToIso hc).hom ≫ hc.desc c) := by
    simp; infer_instance
  convert this
  ext
  simp only [colimit.ι_desc, mk_pt, mk_ι_app, IsColimit.coconePointUniqueUpToIso,
    coproductIsCoproduct, colimit.cocone_x, Functor.mapIso_hom, IsColimit.uniqueUpToIso_hom,
    Cocones.forget_map, IsColimit.descCoconeMorphism_hom, IsColimit.ofIsoColimit_desc,
    Cocones.ext_inv_hom, Iso.refl_inv, colimit.isColimit_desc, Category.id_comp,
    IsColimit.desc_self, Category.comp_id]
  rfl

/-- A coproduct of coproducts is a coproduct -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c8ebddb92a25b690a254e3470bb72146f10ddff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
