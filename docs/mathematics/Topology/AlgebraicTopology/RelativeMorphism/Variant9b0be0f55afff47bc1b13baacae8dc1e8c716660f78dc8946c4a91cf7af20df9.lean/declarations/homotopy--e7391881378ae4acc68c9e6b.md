# Homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d67c771e4a6328b9fdc244b93790f8242e769d34d87df8854ed102901a663c95",
  "kind": "structure",
  "lexical_name": "Homotopy",
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
  "slug": "homotopy--e7391881378ae4acc68c9e6b",
  "source": {
    "blob": "30ebf9125b6e64309b138902624c514f1bad2c19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7391881378ae4acc68c9e6b7603d43a109b16f104443f11947addbcd001b5d6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d67c771e4a6328b9fdc244b93790f8242e769d34d87df8854ed102901a663c95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Homotopy where
  /-- The homotopy. -/
  h : X ⊗ Δ[1] ⟶ Y
  h₀ : ι₀ ≫ h = f.map := by cat_disch
  h₁ : ι₁ ≫ h = g.map := by cat_disch
  rel : A.ι ▷ _ ≫ h = fst _ _ ≫ φ ≫ B.ι := by cat_disch

namespace Homotopy

attribute [reassoc (attr := simp)] h₀ h₁ rel

variable {f g} in
/-- Two equal relative morphisms are homotopic. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30ebf9125b6e64309b138902624c514f1bad2c19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
