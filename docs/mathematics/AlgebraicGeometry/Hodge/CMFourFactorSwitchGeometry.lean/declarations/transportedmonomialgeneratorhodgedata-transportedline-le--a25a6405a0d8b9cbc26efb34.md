# TransportedMonomialGeneratorHodgeData.transportedLine_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eceae73c-0ed9-f951-ebb8-a2526a3c00c8",
  "kind": "theorem",
  "lexical_name": "TransportedMonomialGeneratorHodgeData.transportedLine_le",
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
  "slug": "transportedmonomialgeneratorhodgedata-transportedline-le--a25a6405a0d8b9cbc26efb34",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2203,
    "line": 2175,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25a6405a0d8b9cbc26efb342aba4f767764e9542be88f3b24e6559ec287d3a3",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eceae73c-0ed9-f951-ebb8-a2526a3c00c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2175–2203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TransportedMonomialGeneratorHodgeData.transportedLine_le
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    {factors :
      CMEmbeddingTransport.FourEmbeddingLineVectors
        (k := ℚ)
        (E :=
          GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers)}
    {tensor :
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ] V}
    {D : FourfoldMonomialAssemblyData factors tensor}
    {hodgeSubspace : Submodule ℂ (ℂ ⊗[ℚ] V)}
    (H : TransportedMonomialGeneratorHodgeData D hodgeSubspace)
    (σ :
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ≃ₐ[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) :
    D.transportedLine σ ≤ hodgeSubspace := by
  rw [FourfoldMonomialAssemblyData.transportedLine]
  apply Submodule.span_le.mpr
  intro z hz
  have hz' :
      z = D.assemble ((factors.scalarTransport σ).vector) := by
    simpa only [Set.mem_singleton_iff] using hz
  subst z
  exact H.generator_mem σ

/-- Fourfold assembly plus actual factor typing canonically supplies the
transported-generator H^(2,2) package. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L2175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
