# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaf4372e1802ec17c95f1a0a1273b77c30b9bcfbb8ba94ab0455fc750ba8c31a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--68c8dad9a9e145c5443fa969",
  "source": {
    "blob": "7b4432b57e812f769d735af1ddad003c300785b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 767,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant8b3111866b5f57f05405c8e1bacf813069e69c4e881c6a4b7cc69927480ffcad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68c8dad9a9e145c5443fa969e43c7355fcb5af966996b6ae6ba65bad601bb6a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant8b3111866b5f57f05405c8e1bacf813069e69c4e881c6a4b7cc69927480ffcad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaf4372e1802ec17c95f1a0a1273b77c30b9bcfbb8ba94ab0455fc750ba8c31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    {vertexCount : Nat}
    {graph : FiniteGraphLaplacian vertexCount}
    {FunctionSpace : Type uFunction}
    [NormedAddCommGroup FunctionSpace]
    [InnerProductSpace ℝ FunctionSpace]
    [CompleteSpace FunctionSpace]
    {continuum : LaplaceBeltramiSpectralModel FunctionSpace}
    {EigenspaceDescriptor : Type uEigenspace}
    {ProjectorDescriptor : Type uProjector}
    (comparison :
      SpectralComparisonData graph continuum
        EigenspaceDescriptor ProjectorDescriptor)
    (k : Nat) :
    IsIdempotentElem
        (comparison.projectorOperator (comparison.continuumProjector k)) ∧
      IsSelfAdjoint
        (comparison.projectorOperator (comparison.continuumProjector k)) ∧
      LinearMap.range
          (comparison.projectorOperator (comparison.continuumProjector k) :
            FunctionSpace →ₗ[ℝ] FunctionSpace) =
        comparison.continuumClusterSubspace k :=
  ⟨comparison.continuumProjector_idempotent k,
    comparison.continuumProjector_self_adjoint k,
    comparison.continuumProjector_range_eq_cluster k⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant8b3111866b5f57f05405c8e1bacf813069e69c4e881c6a4b7cc69927480ffcad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant8b3111866b5f57f05405c8e1bacf813069e69c4e881c6a4b7cc69927480ffcad.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4432b57e812f769d735af1ddad003c300785b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
