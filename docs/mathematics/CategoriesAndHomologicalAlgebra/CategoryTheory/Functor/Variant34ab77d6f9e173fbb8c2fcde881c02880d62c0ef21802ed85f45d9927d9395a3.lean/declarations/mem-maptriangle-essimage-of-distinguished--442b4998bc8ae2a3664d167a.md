# mem_mapTriangle_essImage_of_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dda1a83a-3890-2203-394c-63738288e00b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c88bf6a-b047-c91c-9eb2-9c4d7a329d9e",
  "kind": "lemma",
  "lexical_name": "mem_mapTriangle_essImage_of_distinguished",
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
  "slug": "mem-maptriangle-essimage-of-distinguished--442b4998bc8ae2a3664d167a",
  "source": {
    "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442b4998bc8ae2a3664d167add8089a000a45b9792e1be4925128e66ffad7f53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c88bf6a-b047-c91c-9eb2-9c4d7a329d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_mapTriangle_essImage_of_distinguished
    [F.IsTriangulated] [F.mapArrow.EssSurj] (T : Triangle D) (hT : T ∈ distTriang D) :
    ∃ (T' : Triangle C) (_ : T' ∈ distTriang C), Nonempty (F.mapTriangle.obj T' ≅ T) := by
  obtain ⟨X, Y, f, e₁, e₂, w⟩ : ∃ (X Y : C) (f : X ⟶ Y) (e₁ : F.obj X ≅ T.obj₁)
    (e₂ : F.obj Y ≅ T.obj₂), F.map f ≫ e₂.hom = e₁.hom ≫ T.mor₁ := by
      let e := F.mapArrow.objObjPreimageIso (Arrow.mk T.mor₁)
      exact ⟨_, _, _, Arrow.leftFunc.mapIso e, Arrow.rightFunc.mapIso e, e.hom.w.symm⟩
  obtain ⟨W, g, h, H⟩ := distinguished_cocone_triangle f
  exact ⟨_, H, ⟨isoTriangleOfIso₁₂ _ _ (F.map_distinguished _ H) hT e₁ e₂ w⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9232e8aeda25ca6688680dc7c0e40ba84fad90ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
