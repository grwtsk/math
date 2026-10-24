# tensorDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee14004cf23944922bbed4b775ed5199bf9c5a614054bb8da8122743bb819d36",
  "kind": "def",
  "lexical_name": "tensorDistrib",
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
  "slug": "tensordistrib--417e9f18b014b83bee6386fe",
  "source": {
    "blob": "4f84bdbaf3a8762bba2b6e9a496677f20b93c77e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:417e9f18b014b83bee6386fef1c7fa8becaa5752e9685f06aaa68a91124fb4ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee14004cf23944922bbed4b775ed5199bf9c5a614054bb8da8122743bb819d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorDistrib :
    (BilinMap A M₁ N₁ ⊗[R] BilinMap R M₂ N₂) →ₗ[A] BilinMap A (M₁ ⊗[R] M₂) (N₁ ⊗[R] N₂) :=
  (TensorProduct.lift.equiv A (M₁ ⊗[R] M₂) (M₁ ⊗[R] M₂) (N₁ ⊗[R] N₂)).symm.toLinearMap ∘ₗ
  ((LinearMap.llcomp A _ _ _).flip
   (TensorProduct.AlgebraTensorModule.tensorTensorTensorComm R A M₁ M₂ M₁ M₂).toLinearMap)
  ∘ₗ TensorProduct.AlgebraTensorModule.homTensorHomMap R _ _ _ _ _ _
  ∘ₗ (TensorProduct.AlgebraTensorModule.congr
    (TensorProduct.lift.equiv A M₁ M₁ N₁)
    (TensorProduct.lift.equiv R _ _ _)).toLinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f84bdbaf3a8762bba2b6e9a496677f20b93c77e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
