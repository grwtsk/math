# SpectralComparisonData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f8c60dc316eb572babda1c976625a0effb85fcaefef36de97008166abd5f626",
  "kind": "structure",
  "lexical_name": "SpectralComparisonData",
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
  "slug": "spectralcomparisondata--d5d124b6da116e9d2b394936",
  "source": {
    "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1003,
    "line": 889,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5d124b6da116e9d2b394936ba7c78739b6d29976e57059593c7bbe3e3ce9cda",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f8c60dc316eb572babda1c976625a0effb85fcaefef36de97008166abd5f626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–1003.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpectralComparisonData
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    (EigenspaceDescriptor : Type uEigenspace)
    (ProjectorDescriptor : Type uProjector) where
  interpolate : (Fin vertexCount → ℝ) →L[ℝ] FunctionSpace
  restrict : FunctionSpace →L[ℝ] (Fin vertexCount → ℝ)
  restrict_interpolate : Function.LeftInverse restrict interpolate
  graphNorm : (Fin vertexCount → ℝ) → ℝ
  continuumNorm : FunctionSpace → ℝ
  graphNorm_nonnegative : ∀ f, 0 ≤ graphNorm f
  graphNorm_eq_sqrt_innerProduct :
    ∀ f, graphNorm f = Real.sqrt (graph.innerProduct f f)
  continuumNorm_eq_norm : ∀ f, continuumNorm f = ‖f‖
  normCompatibilityError : (Fin vertexCount → ℝ) → ℝ
  normCompatibilityError_nonnegative : ∀ f, 0 ≤ normCompatibilityError f
  interpolation_norm_error_le :
    ∀ f, |continuumNorm (interpolate f) - graphNorm f| ≤
      normCompatibilityError f
  graphEigenspace : Fin vertexCount → EigenspaceDescriptor
  continuumEigenspace : Nat → EigenspaceDescriptor
  /-- The exact transported graph cluster subspace selected by each mode. -/
  graphClusterSubspace : Fin vertexCount → Submodule ℝ FunctionSpace
  /-- The exact continuum eigenspace selected by each mode. -/
  continuumClusterSubspace : Nat → Submodule ℝ FunctionSpace
  /--
  Membership in a graph cluster is exactly interpolation of an eigenvector of
  the declared graph operator at the declared eigenvalue.
  -/
  graphClusterSubspace_spec : ∀ k f,
    f ∈ graphClusterSubspace k ↔
      ∃ v : Fin vertexCount → ℝ,
        graph.laplacian v = graph.eigenvalue k • v ∧ interpolate v = f
  /--
  Membership in a continuum cluster is exactly an eigenvector in the domain
  of the declared unbounded operator at the declared eigenvalue.
  -/
  continuumClusterSubspace_spec : ∀ k f,
    f ∈ continuumClusterSubspace k ↔
      ∃ u : continuum.laplacian.domain,
        continuum.laplacian u =
            continuum.eigenvalue k • (u : FunctionSpace) ∧
          (u : FunctionSpace) = f
  eigenspaceProjector :
    EigenspaceDescriptor → FunctionSpace →L[ℝ] FunctionSpace
  eigenspaceDistance : EigenspaceDescriptor → EigenspaceDescriptor → ℝ
  eigenspaceDistance_eq_operatorNorm :
    ∀ E F, eigenspaceDistance E F =
      ‖eigenspaceProjector E - eigenspaceProjector F‖
  graphProjector : Fin vertexCount → ProjectorDescriptor
  continuumProjector : Nat → ProjectorDescriptor
  projectorOperator :
    ProjectorDescriptor → FunctionSpace →L[ℝ] FunctionSpace
  projectorDistance : ProjectorDescriptor → ProjectorDescriptor → ℝ
  projectorDistance_eq_operatorNorm :
    ∀ P Q, projectorDistance P Q =
      ‖projectorOperator P - projectorOperator Q‖
  /-- The graph descriptor is an idempotent operator, rather than a free label. -/
  graphProjector_idempotent : ∀ k,
    IsIdempotentElem (projectorOperator (graphProjector k))
  /-- The graph descriptor is self-adjoint, hence an orthogonal projector. -/
  graphProjector_self_adjoint : ∀ k,
    IsSelfAdjoint (projectorOperator (graphProjector k))
  /-- Its actual operator range is exactly the stated graph cluster subspace. -/
  graphProjector_range_eq_cluster : ∀ k,
    LinearMap.range (projectorOperator (graphProjector k) :
      FunctionSpace →ₗ[ℝ] FunctionSpace) = graphClusterSubspace k
  /-- The continuum descriptor is an idempotent operator, rather than a free label. -/
  continuumProjector_idempotent : ∀ k,
    IsIdempotentElem (projectorOperator (continuumProjector k))
  /-- The continuum descriptor is self-adjoint, hence an orthogonal projector. -/
  continuumProjector_self_adjoint : ∀ k,
    IsSelfAdjoint (projectorOperator (continuumProjector k))
  /-- Its actual operator range is exactly the stated continuum cluster subspace. -/
  continuumProjector_range_eq_cluster : ∀ k,
    LinearMap.range (projectorOperator (continuumProjector k) :
      FunctionSpace →ₗ[ℝ] FunctionSpace) = continuumClusterSubspace k
  GraphEigenspaceRepresents :
    EigenspaceDescriptor →
      ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) → ℝ → Prop
  ContinuumEigenspaceRepresents :
    EigenspaceDescriptor →
      (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → Prop
  graphEigenspace_represents : ∀ k,
    GraphEigenspaceRepresents (graphEigenspace k)
      graph.laplacian (graph.eigenvalue k)
  continuumEigenspace_represents : ∀ k,
    ContinuumEigenspaceRepresents (continuumEigenspace k)
      continuum.laplacian (continuum.eigenvalue k)
  GraphProjectorRepresents :
    ProjectorDescriptor →
      ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) → ℝ → Prop
  ContinuumProjectorRepresents :
    ProjectorDescriptor →
      (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → Prop
  graphProjector_represents : ∀ k,
    GraphProjectorRepresents (graphProjector k)
      graph.laplacian (graph.eigenvalue k)
  continuumProjector_represents : ∀ k,
    ContinuumProjectorRepresents (continuumProjector k)
      continuum.laplacian (continuum.eigenvalue k)
  GraphClusterIsolated :
    ((Fin vertexCount → ℝ) →L[ℝ] (Fin vertexCount → ℝ)) →
      ℝ → ℝ → Prop
  ContinuumClusterIsolated :
    (FunctionSpace →ₗ.[ℝ] FunctionSpace) → ℝ → ℝ → Prop

namespace SpectralComparisonData

/-- Interpolation and restriction are exact on discrete functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452831ef1d438d27730a63a5b96ddbe403353550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
