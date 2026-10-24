# mem_mapTriangle_essImage_of_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72d05d5-4fc0-952a-255b-b5b08781149c",
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
  "slug": "mem-maptriangle-essimage-of-distinguished--f6aa23e83e19a950e4d3993a",
  "source": {
    "blob": "72a7dcbb4019c0cebe55d7f39308ad02735b86f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6aa23e83e19a950e4d3993aaff5902a0ec887b328fd89e159730e469c123869",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72d05d5-4fc0-952a-255b-b5b08781149c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–255.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a7dcbb4019c0cebe55d7f39308ad02735b86f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
