# continuum_projector_is_actual_orthogonal_cluster_projector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fee69c5-17a2-8482-6810-75221a4c39ee",
  "kind": "theorem",
  "lexical_name": "continuum_projector_is_actual_orthogonal_cluster_projector",
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
  "slug": "continuum-projector-is-actual-orthogonal-cluster-projector--1ceeb361412dfd239ca9f203",
  "source": {
    "blob": "7fa68aec1ca6b87549c76394c1db963d802ed455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1166,
    "line": 1134,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ceeb361412dfd239ca9f2038e99fe0ac46321694ecb0ca238a584b5f256eb36",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fee69c5-17a2-8482-6810-75221a4c39ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1134–1166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_projector_is_actual_orthogonal_cluster_projector
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (D : SpectralComparisonData graph continuum
      EigenspaceDescriptor ProjectorDescriptor)
    (k : Nat) :
    IsIdempotentElem (D.projectorOperator (D.continuumProjector k)) ∧
      IsSelfAdjoint (D.projectorOperator (D.continuumProjector k)) ∧
      LinearMap.range (D.projectorOperator (D.continuumProjector k) :
        FunctionSpace →ₗ[ℝ] FunctionSpace) = D.continuumClusterSubspace k ∧
      ∀ f, f ∈ D.continuumClusterSubspace k ↔
        ∃ u : continuum.laplacian.domain,
          continuum.laplacian u =
              continuum.eigenvalue k • (u : FunctionSpace) ∧
            (u : FunctionSpace) = f :=
  ⟨D.continuumProjector_idempotent k,
    D.continuumProjector_self_adjoint k,
    D.continuumProjector_range_eq_cluster k,
    D.continuumClusterSubspace_spec k⟩

end SpectralComparisonData

/--
All scale, density, normalization, boundary, and sampling assumptions for one
finite-mode spectral comparison.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean#L1134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa68aec1ca6b87549c76394c1db963d802ed455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
