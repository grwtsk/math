# ιMapTrifunctorMapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50749839541e966a2a115a4e130ca767346fa1838641357be5c83f55cff1ad96",
  "kind": "def",
  "lexical_name": "ιMapTrifunctorMapObj",
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
  "slug": "maptrifunctormapobj--9b48c41b72188994bd52c98e",
  "source": {
    "blob": "d7117dfca04fa26e8df627c5369cfe89b02aef0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b48c41b72188994bd52c98eab085a13697eec92e5438de2223c62c0ebe78897",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50749839541e966a2a115a4e130ca767346fa1838641357be5c83f55cff1ad96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ιMapTrifunctorMapObj (X₁ : GradedObject I₁ C₁) (X₂ : GradedObject I₂ C₂)
    (X₃ : GradedObject I₃ C₃) (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (j : J) (h : p ⟨i₁, i₂, i₃⟩ = j)
    [HasMap ((((mapTrifunctor F I₁ I₂ I₃).obj X₁).obj X₂).obj X₃) p] :
    ((F.obj (X₁ i₁)).obj (X₂ i₂)).obj (X₃ i₃) ⟶ mapTrifunctorMapObj F p X₁ X₂ X₃ j :=
  ((((mapTrifunctor F I₁ I₂ I₃).obj X₁).obj X₂).obj X₃).ιMapObj p ⟨i₁, i₂, i₃⟩ j h

/-- The maps `mapTrifunctorMapObj F p X₁ X₂ X₃ ⟶ mapTrifunctorMapObj F p Y₁ Y₂ Y₃` which
express the functoriality of `mapTrifunctorMapObj`, see `mapTrifunctorMap` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97684f45e42446ad2ff6083a70b42181bb25eb163ad4ff5e3f12c7caadce3b77.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7117dfca04fa26e8df627c5369cfe89b02aef0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
