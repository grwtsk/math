# smallHomMap'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2f2ddecc4e27b9ec1e460e4bb6a669e4b037d0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcd92c65-1484-aae5-3c41-2ed16bd18e33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6537804-2c63-d353-50cd-7cfeb3b8ed19",
  "kind": "lemma",
  "lexical_name": "smallHomMap'_comp",
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
  "slug": "smallhommap-comp--60b85d11fcf121276b2af8c0",
  "source": {
    "blob": "e2f2ddecc4e27b9ec1e460e4bb6a669e4b037d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b85d11fcf121276b2af8c011bf343255da3f9e549de4c34442dcf558daec53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6537804-2c63-d353-50cd-7cfeb3b8ed19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallHomMap'_comp (f : SmallHom.{w} W₁ X Y) (g : SmallHom.{w} W₁ Y Z) :
    Φ.smallHomMap' eX eZ (f.comp g) =
      (Φ.smallHomMap' eX eY f).comp (Φ.smallHomMap' eY eZ g) := by
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eX.symm eY.symm
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eY.symm (Iso.refl Y')
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eX.symm (Iso.refl Z')
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eY.symm eZ.symm
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eY.symm (Iso.refl Z')
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ (Iso.refl Y') eY.symm
  have := hasSmallLocalizedHom_of_isos.{w'} W₂ eY.symm eY.symm
  simp only [smallHomMap', smallHomMap_comp, SmallHom.comp_assoc]
  congr 2
  rw [← SmallHom.comp_assoc, SmallHom.mk_comp_mk, eY.hom_inv_id, SmallHom.mk_id_comp]

end

end LocalizerMorphism

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2f2ddecc4e27b9ec1e460e4bb6a669e4b037d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
