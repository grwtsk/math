# CMFiniteCanonicalNestedLinearMap.equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1801b428-ece1-0dfc-1a36-badf8d8dac22",
  "kind": "theorem",
  "lexical_name": "CMFiniteCanonicalNestedLinearMap.equivariant",
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
  "slug": "cmfinitecanonicalnestedlinearmap-equivariant--1409a4446b62ff361afca639",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1525,
    "line": 1489,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1409a4446b62ff361afca639bd44dfb7ad5cf5dd9185ebb896d9149c9fb32546",
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

Occurrence: `result:1801b428-ece1-0dfc-1a36-badf8d8dac22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1489–1525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CMFiniteCanonicalNestedLinearMap.equivariant
    {E : CMGaloisIntermediateField}
    (M : CMFiniteCanonicalNestedLinearMap E)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (t₁ t₂ t₃ t₄ : E.carrier ⊗[ℚ] E.carrier) :
    GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate
        σ (M.map t₁ t₂ t₃ t₄) =
      M.map
        (GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₁)
        (GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₂)
        (GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₃)
        (GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₄) := by
  induction t₁ with
  | tmul a₁ x₁ =>
      induction t₂ with
      | tmul a₂ x₂ =>
          induction t₃ with
          | tmul a₃ x₃ =>
              induction t₄ with
              | tmul a₄ x₄ =>
                  simp only [
                    GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate_tmul,
                    M.pure_formula]
                  exact canonicalFinitePureAssembly_scalarConjugate
                    E σ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
              | add x y hx hy =>
                  simp [map_add, hx, hy]
          | add x y hx hy =>
              simp [map_add, hx, hy]
      | add x y hx hy =>
          simp [map_add, hx, hy]
  | add x y hx hy =>
      simp [map_add, hx, hy]

/-- A finite canonical map with the pure formula gives the full original
nested-linear assembly, including the previously independent Galois
compatibility at the chosen transported factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L1489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
