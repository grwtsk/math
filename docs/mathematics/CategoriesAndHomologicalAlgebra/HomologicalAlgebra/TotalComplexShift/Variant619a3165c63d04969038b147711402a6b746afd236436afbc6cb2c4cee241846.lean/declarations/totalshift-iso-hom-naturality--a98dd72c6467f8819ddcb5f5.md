# totalShift₂Iso_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84204484c2e7a8a56e907808493ed72c43b49a54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2f048d9-6e94-0610-bfe0-2fc6c282c464",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6cce783-66bd-0580-e98b-1eeb2cc9c7ba",
  "kind": "lemma",
  "lexical_name": "totalShift₂Iso_hom_naturality",
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
  "slug": "totalshift-iso-hom-naturality--a98dd72c6467f8819ddcb5f5",
  "source": {
    "blob": "84204484c2e7a8a56e907808493ed72c43b49a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 344,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a98dd72c6467f8819ddcb5f593435037319c6487919524ff7ef26d70bdb69929",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6cce783-66bd-0580-e98b-1eeb2cc9c7ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totalShift₂Iso_hom_naturality [L.HasTotal (up ℤ)] :
    total.map ((shiftFunctor₂ C y).map f) (up ℤ) ≫ (L.totalShift₂Iso y).hom =
      (K.totalShift₂Iso y).hom ≫ (total.map f (up ℤ))⟦y⟧' := by
  ext n i₁ i₂ h
  dsimp at h ⊢
  rw [ιTotal_map_assoc, L.ι_totalShift₂Iso_hom_f y i₁ i₂ n h _ rfl _ rfl,
    K.ι_totalShift₂Iso_hom_f_assoc y i₁ i₂ n h _ rfl _ rfl]
  dsimp
  rw [id_comp, id_comp, comp_id, comp_id, Linear.comp_units_smul,
    Linear.units_smul_comp, ιTotal_map]

variable (C) in
/-- The shift functors `shiftFunctor₁ C x` and `shiftFunctor₂ C y` on bicomplexes
with respect to both variables commute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84204484c2e7a8a56e907808493ed72c43b49a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
