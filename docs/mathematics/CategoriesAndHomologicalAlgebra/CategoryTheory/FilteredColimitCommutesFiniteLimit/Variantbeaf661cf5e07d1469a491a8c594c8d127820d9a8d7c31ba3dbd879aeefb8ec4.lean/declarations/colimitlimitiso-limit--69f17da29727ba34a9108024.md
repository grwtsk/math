# ι_colimitLimitIso_limit_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a34758978c247dc6dbfc547169b8dc6bc135081",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9ae4dd5-3690-cce4-9678-080e00317fa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffb2b719-8f8c-4323-b680-721a717886a7",
  "kind": "theorem",
  "lexical_name": "ι_colimitLimitIso_limit_π",
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
  "slug": "colimitlimitiso-limit--69f17da29727ba34a9108024",
  "source": {
    "blob": "0a34758978c247dc6dbfc547169b8dc6bc135081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 384,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f17da29727ba34a9108024850076de0d900eebc59a8d623dcf78facfb3dcf5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb2b719-8f8c-4323-b680-721a717886a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_colimitLimitIso_limit_π (F : J ⥤ K ⥤ C) (a) (b) :
    colimit.ι (limit F) a ≫ (colimitLimitIso F).hom ≫ limit.π (colimit F.flip) b =
      (limit.π F b).app a ≫ (colimit.ι F.flip a).app b := by
  dsimp [colimitLimitIso]
  simp only [Functor.mapCone_π_app, Iso.symm_hom,
    Limits.limit.conePointUniqueUpToIso_hom_comp_assoc, Limits.limit.cone_π,
    Limits.colimit.ι_map_assoc, Limits.colimitFlipIsoCompColim_inv_app, assoc,
    Limits.HasLimit.isoOfNatIso_hom_π]
  congr 1
  simp only [← Category.assoc, Iso.comp_inv_eq,
    Limits.colimitObjIsoColimitCompEvaluation_ι_app_hom,
    Limits.HasColimit.isoOfNatIso_ι_hom, NatIso.ofComponents_hom_app]
  dsimp
  simp
#align category_theory.limits.ι_colimit_limit_iso_limit_π CategoryTheory.Limits.ι_colimitLimitIso_limit_π

end

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a34758978c247dc6dbfc547169b8dc6bc135081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
