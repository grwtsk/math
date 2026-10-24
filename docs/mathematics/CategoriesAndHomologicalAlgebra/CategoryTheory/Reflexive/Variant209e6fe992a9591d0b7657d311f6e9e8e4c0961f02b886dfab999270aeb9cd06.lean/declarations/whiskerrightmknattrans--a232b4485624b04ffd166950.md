# whiskerRightMkNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975fc126816a7cf6bcd130f7bc22490d9e3f9d43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ff4a16e-724a-b941-1d45-b2a5d104419b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:273be7cc-8681-0621-70ea-705ae5bd5fb4",
  "kind": "lemma",
  "lexical_name": "whiskerRightMkNatTrans",
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
  "slug": "whiskerrightmknattrans--a232b4485624b04ffd166950",
  "source": {
    "blob": "975fc126816a7cf6bcd130f7bc22490d9e3f9d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 475,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a232b4485624b04ffd166950fea1be210d746bd34d26d870a0be6bdcf29ee9f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:273be7cc-8681-0621-70ea-705ae5bd5fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerRightMkNatTrans {F G : WalkingReflexivePair ⥤ C}
    (e₀ : F.obj zero ⟶ G.obj zero) (e₁ : F.obj one ⟶ G.obj one)
    {h₁ : F.map left ≫ e₀ = e₁ ≫ G.map left}
    {h₂ : F.map right ≫ e₀ = e₁ ≫ G.map right}
    {h₃ : F.map reflexion ≫ e₁ = e₀ ≫ G.map reflexion}
    {D : Type u₂} [Category.{v₂} D] (H : C ⥤ D) :
    Functor.whiskerRight (mkNatTrans e₀ e₁ : F ⟶ G) H =
      mkNatTrans (H.map e₀) (H.map e₁)
          (by simp only [Functor.comp_obj, Functor.comp_map, ← Functor.map_comp, h₁])
          (by simp only [Functor.comp_obj, Functor.comp_map, ← Functor.map_comp, h₂])
          (by simp only [Functor.comp_obj, Functor.comp_map, ← Functor.map_comp, h₃]) := by
  ext x; cases x <;> simp

end

/-- Any functor out of the WalkingReflexivePair yields a reflexive pair -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975fc126816a7cf6bcd130f7bc22490d9e3f9d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
