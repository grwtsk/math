# colimit.pre_post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd538ff84800a39510ea53f93f64ffcefebd3f44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 960,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d46de23-3893-f666-3e84-575f0f8967c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b3f5061-43c1-3a30-02c2-1c69c835d1c9",
  "kind": "theorem",
  "lexical_name": "colimit.pre_post",
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
  "slug": "colimit-pre-post--57195841b8f5cc274d6cc4d3",
  "source": {
    "blob": "dd538ff84800a39510ea53f93f64ffcefebd3f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 960,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57195841b8f5cc274d6cc4d3b027e6b11701f297380949d0c78218a02a97f194",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b3f5061-43c1-3a30-02c2-1c69c835d1c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit.pre_post {D : Type u'} [Category.{v'} D] (E : K ⥤ J) (F : J ⥤ C) (G : C ⥤ D)
    [HasColimit F] [HasColimit (E ⋙ F)] [HasColimit (F ⋙ G)] [h : HasColimit ((E ⋙ F) ⋙ G)] :
    -- G (colimit F) ⟶ G (colimit (E ⋙ F)) ⟶ colimit ((E ⋙ F) ⋙ G) vs
    -- G (colimit F) ⟶ colimit F ⋙ G ⟶ colimit (E ⋙ (F ⋙ G)) or
    haveI : HasColimit (E ⋙ F ⋙ G) := h
    colimit.post (E ⋙ F) G ≫ G.map (colimit.pre F E) =
      colimit.pre (F ⋙ G) E ≫ colimit.post F G := by
  ext j
  rw [← assoc, colimit.ι_post, ← G.map_comp, colimit.ι_pre, ← assoc]
  haveI : HasColimit (E ⋙ F ⋙ G) := h
  erw [colimit.ι_pre (F ⋙ G) E j, colimit.ι_post]

open CategoryTheory.Equivalence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd538ff84800a39510ea53f93f64ffcefebd3f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
