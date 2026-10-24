# FiniteModeSpectralComparisonCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cf1453de5aec71aa7b48811764f4f1b5895f52684016ca5ce45edb338863a16",
  "kind": "structure",
  "lexical_name": "FiniteModeSpectralComparisonCertificate",
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
  "slug": "finitemodespectralcomparisoncertificate--5bf5c4bbf14c911d2ca1a5a7",
  "source": {
    "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1318,
    "line": 1265,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bf5c4bbf14c911d2ca1a5a7646b1a0d294d547028c8e7915485a255fcaff8a3",
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

Occurrence: `declaration:6cf1453de5aec71aa7b48811764f4f1b5895f52684016ca5ce45edb338863a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1265–1318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteModeSpectralComparisonCertificate
    {vertexCount : Nat}
    (graph : FiniteGraphLaplacian vertexCount)
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    (continuum : LaplaceBeltramiSpectralModel FunctionSpace)
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (modeCount : Nat) where
  modeCount_le_vertices : modeCount ≤ vertexCount
  graphMode : Fin modeCount → Fin vertexCount
  continuumMode : Fin modeCount → Nat
  eigenvalueErrorBound : Fin modeCount → ℝ
  eigenspaceErrorBound : Fin modeCount → ℝ
  projectorErrorBound : Fin modeCount → ℝ
  graphEigengap : Fin modeCount → ℝ
  continuumEigengap : Fin modeCount → ℝ
  eigenvalueErrorBound_nonnegative : ∀ k, 0 ≤ eigenvalueErrorBound k
  eigenspaceErrorBound_nonnegative : ∀ k, 0 ≤ eigenspaceErrorBound k
  projectorErrorBound_nonnegative : ∀ k, 0 ≤ projectorErrorBound k
  graphEigengap_pos : ∀ k, 0 < graphEigengap k
  continuumEigengap_pos : ∀ k, 0 < continuumEigengap k
  graphClusterIsolated :
    ∀ k, comparison.GraphClusterIsolated graph.laplacian
      (graph.eigenvalue (graphMode k)) (graphEigengap k)
  continuumClusterIsolated :
    ∀ k, comparison.ContinuumClusterIsolated continuum.laplacian
      (continuum.eigenvalue (continuumMode k)) (continuumEigengap k)
  eigenvalue_error_le :
    ∀ k, |graph.eigenvalue (graphMode k) -
      continuum.eigenvalue (continuumMode k)| ≤ eigenvalueErrorBound k
  eigenspace_error_le :
    ∀ k,
      comparison.eigenspaceDistance
        (comparison.graphEigenspace (graphMode k))
        (comparison.continuumEigenspace (continuumMode k)) ≤
          eigenspaceErrorBound k
  projector_error_le :
    ∀ k,
      comparison.projectorDistance
        (comparison.graphProjector (graphMode k))
        (comparison.continuumProjector (continuumMode k)) ≤
          projectorErrorBound k

/--
An analytic comparison capability with fixed, explicit error bounds.  Its input
includes an admissible bandwidth/sampling corridor; smooth surgery and homotopy
data do not inhabit this type.  No limiting convergence statement is implied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean#L1265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452831ef1d438d27730a63a5b96ddbe403353550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
