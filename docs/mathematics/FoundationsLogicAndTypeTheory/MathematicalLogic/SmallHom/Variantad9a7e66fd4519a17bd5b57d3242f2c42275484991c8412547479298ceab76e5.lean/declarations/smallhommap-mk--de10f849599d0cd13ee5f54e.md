# smallHomMap'_mk

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
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdde40b1-f0af-97d0-5d58-50b77e6c6ac6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d3f0da5-537a-42e4-c657-60307eb8d714",
  "kind": "lemma",
  "lexical_name": "smallHomMap'_mk",
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
  "slug": "smallhommap-mk--de10f849599d0cd13ee5f54e",
  "source": {
    "blob": "e2f2ddecc4e27b9ec1e460e4bb6a669e4b037d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de10f849599d0cd13ee5f54e60e0546dd9bd23e1126d2f0c95c8553dd568453d",
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

Occurrence: `result:3d3f0da5-537a-42e4-c657-60307eb8d714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallHomMap'_mk (f : X ⟶ Y) :
    Φ.smallHomMap' eX eY (SmallHom.mk _ f) =
      SmallHom.mk _ (eX.inv ≫ Φ.functor.map f ≫ eY.hom) := by
  simp [smallHomMap', SmallHom.mk_comp_mk]

end

section

variable {X Y Z : C₁} [HasSmallLocalizedHom.{w} W₁ X Y] [HasSmallLocalizedHom.{w} W₁ Y Z]
  [HasSmallLocalizedHom.{w} W₁ X Z] {X' Y' Z' : C₂}
  [HasSmallLocalizedHom.{w'} W₂ X' X'] [HasSmallLocalizedHom.{w'} W₂ Y' Y']
  [HasSmallLocalizedHom.{w'} W₂ Z' Z'] [HasSmallLocalizedHom.{w'} W₂ X' Y']
  [HasSmallLocalizedHom.{w'} W₂ Y' Z'] [HasSmallLocalizedHom.{w'} W₂ X' Z']
  (eX : Φ.functor.obj X ≅ X') (eY : Φ.functor.obj Y ≅ Y') (eZ : Φ.functor.obj Z ≅ Z')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantad9a7e66fd4519a17bd5b57d3242f2c42275484991c8412547479298ceab76e5.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2f2ddecc4e27b9ec1e460e4bb6a669e4b037d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
