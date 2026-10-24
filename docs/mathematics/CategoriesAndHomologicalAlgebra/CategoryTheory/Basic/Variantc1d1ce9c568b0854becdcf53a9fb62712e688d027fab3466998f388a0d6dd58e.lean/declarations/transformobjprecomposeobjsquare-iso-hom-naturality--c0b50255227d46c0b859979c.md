# transformObjPrecomposeObjSquare_iso_hom_naturality₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 804,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e21f649-8470-ef29-699e-f53e8513b3b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9921b02-7c99-1de4-4c69-77925a32ae4a",
  "kind": "lemma",
  "lexical_name": "transformObjPrecomposeObjSquare_iso_hom_naturality₂",
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
  "slug": "transformobjprecomposeobjsquare-iso-hom-naturality--c0b50255227d46c0b859979c",
  "source": {
    "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 804,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0b50255227d46c0b859979cbe670b51771f1307bd48d63b0357325eaa58a534",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9921b02-7c99-1de4-4c69-77925a32ae4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transformObjPrecomposeObjSquare_iso_hom_naturality₂
    {X : Type u₇} {Y : Type u₈} [Category.{v₇} X] [Category.{v₈} Y]
    (U : X ⥤ Y) {ψ ψ' : CatCospanTransform F G F₁ G₁} (η : ψ ⟶ ψ') :
    whiskerRight (transform Y |>.map η) (precompose F₁ G₁ |>.obj U) ≫
      (CatCommSq.iso _ (precompose F G |>.obj U) _ (transform X |>.obj ψ')).hom =
    (CatCommSq.iso _ (precompose F G |>.obj U) _ (transform X |>.obj ψ)).hom ≫
      whiskerLeft (precompose F G |>.obj U) (transform X |>.map η) := by
  ext <;> simp

set_option backward.defeqAttrib.useBackward true in
/-- The square `transformObjPrecomposeObjSquare` respects identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3eae45401e390e6acf57aef9e60aacb88f4c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
