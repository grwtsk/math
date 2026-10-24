# FiniteGraphLaplacian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:344768920fbd9a4465450c234649b5af8f89267a238dc5567577687a91e6852a",
  "kind": "structure",
  "lexical_name": "FiniteGraphLaplacian",
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
  "slug": "finitegraphlaplacian--825fdda8fdb70d04fa3426f9",
  "source": {
    "blob": "7fa68aec1ca6b87549c76394c1db963d802ed455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 671,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:825fdda8fdb70d04fa3426f96e509612f8825d0df6fabde7786a157a7401c8e3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:344768920fbd9a4465450c234649b5af8f89267a238dc5567577687a91e6852a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteGraphLaplacian (vertexCount : Nat) where
  normalization : GraphLaplacianNormalization
  bandwidth : ℝ
  bandwidth_pos : 0 < bandwidth
  vertexMass : Fin vertexCount → ℝ
  vertexMass_pos : ∀ i, 0 < vertexMass i
  kernelWeight : Fin vertexCount → Fin vertexCount → ℝ
  normalizationCoefficient : Fin vertexCount → ℝ
  normalizationCoefficient_pos : ∀ i, 0 < normalizationCoefficient i
  normalizedWeight : Fin vertexCount → Fin vertexCount → ℝ
  normalizedWeight_formula :
    ∀ i j, normalizedWeight i j =
      normalizationCoefficient i * kernelWeight i j * vertexMass j
  weight_symmetric : ∀ i j, normalizedWeight i j = normalizedWeight j i
  weight_nonnegative : ∀ i j, 0 ≤ normalizedWeight i j
  innerProduct :
    (Fin vertexCount → ℝ) → (Fin vertexCount → ℝ) → ℝ
  innerProduct_apply :
    ∀ f g, innerProduct f g =
      ∑ i : Fin vertexCount, vertexMass i * f i * g i
  laplacian :
    (Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)
  laplacian_apply :
    ∀ f i, laplacian f i =
      ∑ j : Fin vertexCount,
        normalizedWeight i j * (f i - f j)
  laplacian_weighted_self_adjoint :
    ∀ f g, innerProduct (laplacian f) g = innerProduct f (laplacian g)
  eigenvalue : Fin vertexCount → ℝ
  eigenvector : Fin vertexCount → (Fin vertexCount → ℝ)
  eigenvector_ne_zero : ∀ k, eigenvector k ≠ 0
  eigen_equation :
    ∀ k, laplacian (eigenvector k) = eigenvalue k • eigenvector k

namespace FiniteGraphLaplacian

/-- Every declared discrete eigenvector is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa68aec1ca6b87549c76394c1db963d802ed455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
