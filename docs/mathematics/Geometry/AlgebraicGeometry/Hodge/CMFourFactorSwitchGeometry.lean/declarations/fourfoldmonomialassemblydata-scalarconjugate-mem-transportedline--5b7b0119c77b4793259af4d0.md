# FourfoldMonomialAssemblyData.scalarConjugate_mem_transportedLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a53846c-6a2b-a51e-02f4-a728bfa7f77f",
  "kind": "theorem",
  "lexical_name": "FourfoldMonomialAssemblyData.scalarConjugate_mem_transportedLine",
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
  "slug": "fourfoldmonomialassemblydata-scalarconjugate-mem-transportedline--5b7b0119c77b4793259af4d0",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 573,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7b0119c77b4793259af4d0a03e609e66649c8b836939f838b39a95204f03b2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a53846c-6a2b-a51e-02f4-a728bfa7f77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FourfoldMonomialAssemblyData.scalarConjugate_mem_transportedLine
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    {factors :
      CMEmbeddingTransport.FourEmbeddingLineVectors
        (k := ℚ)
        (E :=
          GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers)}
    {tensor :
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ] V}
    (D : FourfoldMonomialAssemblyData factors tensor)
    (σ :
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ≃ₐ[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) :
    GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.coefficientInclusion
      (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.scalarConjugate
        σ tensor) ∈ D.transportedLine σ := by
  rw [D.scalar_conjugate_eq σ]
  exact Submodule.subset_span (Set.mem_singleton _)

/-- For a presented canonical fourfold multilinear assembly, every scalar
conjugate of the assembled tensor belongs to the corresponding transported
monomial line with no additional naturality premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
