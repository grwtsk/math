# Presieve.IsSheaf.comp_of_W_map_of_adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b6655f53266068302604173c7105930a2992693",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/066ed5ca5fb56e436bb0a04807195da23d27f1d6b7d3c91b2799357e55024f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c756ee1-69b3-2fee-8173-a230c7078ccf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:593cbb84-97ab-7fd9-8acf-b2e3e24dc60d",
  "kind": "lemma",
  "lexical_name": "Presieve.IsSheaf.comp_of_W_map_of_adjunction",
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
  "slug": "presieve-issheaf-comp-of-w-map-of-adjunction--dde698fe97dfd84ff2772152",
  "source": {
    "blob": "7b6655f53266068302604173c7105930a2992693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant066ed5ca5fb56e436bb0a04807195da23d27f1d6b7d3c91b2799357e55024f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dde698fe97dfd84ff2772152d8c9c66fdf8cb49ab5859a24d64b59b5c718f773",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant066ed5ca5fb56e436bb0a04807195da23d27f1d6b7d3c91b2799357e55024f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593cbb84-97ab-7fd9-8acf-b2e3e24dc60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Presieve.IsSheaf.comp_of_W_map_of_adjunction
    [LocallySmall.{w} C] {F : C ⥤ D} {H : (Cᵒᵖ ⥤ Type w) ⥤ (Dᵒᵖ ⥤ Type w)}
    (adj : H ⊣ (Functor.whiskeringLeft _ _ _).obj F.op)
    (h : ∀ ⦃X : C⦄ ⦃S : Sieve X⦄, S ∈ J X → K.W (H.map <| (Sieve.shrinkFunctor.{w} S).ι))
    (G : Dᵒᵖ ⥤ Type w) (hG : Presieve.IsSheaf K G) :
    Presieve.IsSheaf J (F.op ⋙ G) := by
  intro X S hS
  rw [Presieve.isSheafFor_iff_bijective_shrinkFunctor_ι_comp, ← Functor.whiskeringLeft_obj_obj,
    ← adj.map_comp_bijective_iff]
  refine h hS _ ?_
  rwa [isSheaf_iff_isSheaf_of_type]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant066ed5ca5fb56e436bb0a04807195da23d27f1d6b7d3c91b2799357e55024f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant066ed5ca5fb56e436bb0a04807195da23d27f1d6b7d3c91b2799357e55024f71.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b6655f53266068302604173c7105930a2992693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
