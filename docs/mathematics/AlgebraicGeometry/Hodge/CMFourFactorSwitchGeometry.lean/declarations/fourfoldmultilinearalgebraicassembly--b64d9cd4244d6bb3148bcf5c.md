# FourfoldMultilinearAlgebraicAssembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7473672f252a2ea799f3d7cafe3ea739dd2a9d90e5f3c9631093cfcda33c4ec",
  "kind": "structure",
  "lexical_name": "FourfoldMultilinearAlgebraicAssembly",
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
  "slug": "fourfoldmultilinearalgebraicassembly--b64d9cd4244d6bb3148bcf5c",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 293,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b64d9cd4244d6bb3148bcf5c0ade4baf43925d600ae4cdf6f14eeec46370cd5a",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7473672f252a2ea799f3d7cafe3ea739dd2a9d90e5f3c9631093cfcda33c4ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FourfoldMultilinearAlgebraicAssembly where
  assemble :
    (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) →ₗ[ℚ]
    (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) →ₗ[ℚ]
    (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) →ₗ[ℚ]
    (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ]
      GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers) →ₗ[ℚ]
    (GRWTSK.LinearAlgebra.TensorProduct.GaloisScalarDescent.AlgebraicNumbers
        ⊗[ℚ] CanonicalFourfoldVectorTarget)
  pure_formula :
    ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄,
      assemble
          (a₁ ⊗ₜ[ℚ] x₁)
          (a₂ ⊗ₜ[ℚ] x₂)
          (a₃ ⊗ₜ[ℚ] x₃)
          (a₄ ⊗ₜ[ℚ] x₄) =
        canonicalPureAlgebraicAssembly
          a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

/-- Full Galois equivariance follows formally from Q-multilinearity and the
pure-factor equivariance theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
