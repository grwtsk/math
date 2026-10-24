# IndParallelPairPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:825e64456df26a4337f9270372b8a9404edb247599215b86adc38377b4becd33",
  "kind": "structure",
  "lexical_name": "IndParallelPairPresentation",
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
  "slug": "indparallelpairpresentation--dff12902f9b04b308ae11189",
  "source": {
    "blob": "6a92e84ff8bef970be0ff0e7eab47b3a4d4cd29c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant5c56a645168ddf1e0a5d97a5159a1fc54e1665c5c460b6c9a579506a4a3abe09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dff12902f9b04b308ae1118964d5fa2c504bcb065ef87d2e66619410d6e70e9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant5c56a645168ddf1e0a5d97a5159a1fc54e1665c5c460b6c9a579506a4a3abe09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:825e64456df26a4337f9270372b8a9404edb247599215b86adc38377b4becd33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IndParallelPairPresentation {A B : Cᵒᵖ ⥤ Type v₁} (f g : A ⟶ B) where
  /-- The indexing category. -/
  I : Type v₁
  /-- Category instance on the indexing category. -/
  [ℐ : SmallCategory I]
  [hI : IsFiltered I]
  /-- The diagram presenting `A`. -/
  F₁ : I ⥤ C
  /-- The diagram presenting `B`. -/
  F₂ : I ⥤ C
  /-- The cocone on `F₁` with apex `A`. -/
  ι₁ : F₁ ⋙ yoneda ⟶ (Functor.const I).obj A
  /-- The cocone on `F₁` with apex `A` is a colimit cocone. -/
  isColimit₁ : IsColimit (Cocone.mk A ι₁)
  /-- The cocone on `F₂` with apex `B`. -/
  ι₂ : F₂ ⋙ yoneda ⟶ (Functor.const I).obj B
  /-- The cocone on `F₂` with apex `B` is a colimit cocone. -/
  isColimit₂ : IsColimit (Cocone.mk B ι₂)
  /-- The natural transformation presenting `f`. -/
  φ : F₁ ⟶ F₂
  /-- The natural transformation presenting `g`. -/
  ψ : F₁ ⟶ F₂
  /-- `f` is in fact presented by `φ`. -/
  hf : f = IsColimit.map isColimit₁ (Cocone.mk B ι₂) (whiskerRight φ yoneda)
  /-- `g` is in fact presented by `ψ`. -/
  hg : g = IsColimit.map isColimit₁ (Cocone.mk B ι₂) (whiskerRight ψ yoneda)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant5c56a645168ddf1e0a5d97a5159a1fc54e1665c5c460b6c9a579506a4a3abe09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParallelPair/Variant5c56a645168ddf1e0a5d97a5159a1fc54e1665c5c460b6c9a579506a4a3abe09.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a92e84ff8bef970be0ff0e7eab47b3a4d4cd29c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
