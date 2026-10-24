# CollaredSurgeryPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c88a788afa4cda74b36f5731a39d9bc14143f79bffacc8c481675e4ab081168a",
  "kind": "structure",
  "lexical_name": "CollaredSurgeryPresentation",
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
  "slug": "collaredsurgerypresentation--19d92b0c90a31678cf4757a5",
  "source": {
    "blob": "d4a75eacee9cdb7f88e8c066c1e13864d1203bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19d92b0c90a31678cf4757a56839fd56888e04e5045c650031551bcb9afebf53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c88a788afa4cda74b36f5731a39d9bc14143f79bffacc8c481675e4ab081168a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CollaredSurgeryPresentation
    {T : SmoothFramedSurgeryTheory}
    (G : RelativeBoundaryDiffeomorphismTheory T)
    (C : CollaredGluingCapability T G)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M)
    (exterior : C.Exterior) where
  removedPiece : C.Piece
  replacementPiece : C.Piece
  removed_compatible : C.Compatible exterior removedPiece
  replacement_compatible : C.Compatible exterior replacementPiece
  originalChart : G.Hom (C.glued exterior removedPiece) M
  surgeryChart :
    G.Hom (C.glued exterior replacementPiece) (T.surgery embedding)
  original_exterior_covered : C.ExteriorCoveredBy exterior M
  original_removed_piece_covered : C.PieceCoveredBy removedPiece M
  original_seam_covered : C.SeamCoveredBy (C.exteriorSeam exterior) M
  surgery_exterior_covered : C.ExteriorCoveredBy exterior (T.surgery embedding)
  surgery_replacement_piece_covered :
    C.PieceCoveredBy replacementPiece (T.surgery embedding)
  surgery_seam_covered :
    C.SeamCoveredBy (C.exteriorSeam exterior) (T.surgery embedding)
  original_chart_collared :
    C.ChartRespectsCollar originalChart (C.collarData removed_compatible)
  surgery_chart_collared :
    C.ChartRespectsCollar surgeryChart (C.collarData replacement_compatible)

namespace CollaredSurgeryPresentation

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {C : CollaredGluingCapability T G}
    {p₀ q₀ p₁ q₁ : Nat}
    {M : T.Manifold}
    {e₀ : T.FramedEmbedding p₀ q₀ M}
    {e₁ : T.FramedEmbedding p₁ q₁ M}
    {exterior : C.Exterior}

/-- The original chart has explicit exterior, removed-piece, and seam coverage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a75eacee9cdb7f88e8c066c1e13864d1203bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
