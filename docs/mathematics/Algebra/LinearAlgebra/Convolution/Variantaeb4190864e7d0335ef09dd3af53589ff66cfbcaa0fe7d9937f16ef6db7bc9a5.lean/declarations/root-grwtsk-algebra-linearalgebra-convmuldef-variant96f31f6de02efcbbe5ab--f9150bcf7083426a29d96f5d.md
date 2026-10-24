# _root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.TensorProduct.map_convMul_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98d66e22-89a6-7544-85f2-e3edd1dd41f8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.TensorProduct.map_convMul_map",
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
  "slug": "root-grwtsk-algebra-linearalgebra-convmuldef-variant96f31f6de02efcbbe5ab--f9150bcf7083426a29d96f5d",
  "source": {
    "blob": "e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9150bcf7083426a29d96f5d8b805c6d2091d4f9e2e01f0e02baa83c52da1be0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d66e22-89a6-7544-85f2-e3edd1dd41f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.TensorProduct.map_convMul_map {D : Type*} [AddCommMonoid B] [Module R B]
    [CoalgebraStruct R B] [NonUnitalNonAssocSemiring D] [Module R D] [SMulCommClass R D D]
    [IsScalarTower R D D] {f h : WithConv (C →ₗ[R] A)} {g k : WithConv (B →ₗ[R] D)} :
    toConv (f.ofConv ⊗ₘ g.ofConv) * toConv (h.ofConv ⊗ₘ k.ofConv) =
      toConv ((f * h).ofConv ⊗ₘ (g * k).ofConv) := by
  simp_rw [convMul_def, comul_def, mul'_tensor, comp_assoc, AlgebraTensorModule.map_eq,
    ← comp_assoc _ _ (tensorTensorTensorComm R _ _ _ _).toLinearMap]
  nth_rw 2 [← comp_assoc, comp_assoc]
  simp [AlgebraTensorModule.tensorTensorTensorComm_eq, ← tensorTensorTensorComm_comp_map,
    ← comp_assoc, map_comp]

end NonUnitalNonAssocSemiring

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
  [AddCommMonoid C] [Module R C] [CoalgebraStruct R C]

/-- Non-unital and non-associative convolution ring structure on linear maps from a
coalgebra to a non-unital and non-associative algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
