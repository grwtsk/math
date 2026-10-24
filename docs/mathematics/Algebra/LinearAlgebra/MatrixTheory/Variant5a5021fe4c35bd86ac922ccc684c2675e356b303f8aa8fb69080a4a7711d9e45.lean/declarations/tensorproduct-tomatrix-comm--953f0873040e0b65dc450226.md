# TensorProduct.toMatrix_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e9358eb-7b71-e117-c08d-83bbd445b595",
  "kind": "theorem",
  "lexical_name": "TensorProduct.toMatrix_comm",
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
  "slug": "tensorproduct-tomatrix-comm--953f0873040e0b65dc450226",
  "source": {
    "blob": "99b934d0ae8922ca98f7b8fc08631c4960d70127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5a5021fe4c35bd86ac922ccc684c2675e356b303f8aa8fb69080a4a7711d9e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953f0873040e0b65dc450226677635dc5ec1194a9f9fde46bd862cb5c95c9f25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant5a5021fe4c35bd86ac922ccc684c2675e356b303f8aa8fb69080a4a7711d9e45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e9358eb-7b71-e117-c08d-83bbd445b595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TensorProduct.toMatrix_comm :
    toMatrix (bM.tensorProduct bN) (bN.tensorProduct bM) (TensorProduct.comm R M N) =
      (1 : Matrix (ι × κ) (ι × κ) R).submatrix Prod.swap _root_.id := by
  ext ⟨i, j⟩ ⟨i', j'⟩
  simp only [toMatrix_apply, Basis.tensorProduct_apply, LinearEquiv.coe_coe, comm_tmul,
    Basis.tensorProduct_repr_tmul_apply, Basis.repr_self, Finsupp.single_apply, @eq_comm _ i',
    @eq_comm _ j', smul_eq_mul, mul_ite, mul_one, mul_zero, ← ite_and, and_comm, submatrix_apply,
    Matrix.one_apply, Prod.swap_prod_mk, id_eq, Prod.mk.injEq]

/-- `TensorProduct.assoc` corresponds to a permutation of the identity matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant5a5021fe4c35bd86ac922ccc684c2675e356b303f8aa8fb69080a4a7711d9e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5a5021fe4c35bd86ac922ccc684c2675e356b303f8aa8fb69080a4a7711d9e45.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99b934d0ae8922ca98f7b8fc08631c4960d70127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
