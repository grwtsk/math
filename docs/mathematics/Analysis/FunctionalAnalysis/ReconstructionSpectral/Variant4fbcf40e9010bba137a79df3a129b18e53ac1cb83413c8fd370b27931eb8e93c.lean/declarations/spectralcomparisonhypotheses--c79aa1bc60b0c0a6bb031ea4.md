# SpectralComparisonHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:251c6450f1ac2fb8885a93efba4bee284c489553bf7a1f90204eb421c4237548",
  "kind": "structure",
  "lexical_name": "SpectralComparisonHypotheses",
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
  "slug": "spectralcomparisonhypotheses--c79aa1bc60b0c0a6bb031ea4",
  "source": {
    "blob": "7fa68aec1ca6b87549c76394c1db963d802ed455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1196,
    "line": 1167,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c79aa1bc60b0c0a6bb031ea407e72bf1c492dd67a7540f8a7fd2f350a800b481",
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

Occurrence: `declaration:251c6450f1ac2fb8885a93efba4bee284c489553bf7a1f90204eb421c4237548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1167–1196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpectralComparisonHypotheses
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace) where
  requiredNormalization : GraphLaplacianNormalization
  normalization_matches : graph.normalization = requiredNormalization
  requiredBoundaryCondition : LaplaceBoundaryCondition
  boundary_matches :
    continuum.boundaryCondition = requiredBoundaryCondition
  requiredOperatorSign : SpectralOperatorSign
  operator_sign_matches : continuum.operatorSign = requiredOperatorSign
  samplingRegime : SpectralSamplingRegime
  sampleResolution : ℝ
  samplingError : ℝ
  geometryScale : ℝ
  densityLowerBound : ℝ
  densityUpperBound : ℝ
  density_bounds_certified :
    continuum.DensityBoundedBetween
      continuum.density densityLowerBound densityUpperBound
  kernelNormalizationLaw : Prop
  kernel_normalized : kernelNormalizationLaw

namespace SpectralComparisonHypotheses

/-- The bandwidth corridor and density bounds required by the comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean#L1167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa68aec1ca6b87549c76394c1db963d802ed455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
