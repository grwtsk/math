# toFunAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:391c148de6931da60948d38d0cce40edad3f76df4cd7fdd05a571b7ee977ea96",
  "kind": "def",
  "lexical_name": "toFunAlgHom",
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
  "slug": "tofunalghom--7dc3a34c1a946659cefd8630",
  "source": {
    "blob": "805766b4ef42cac78bb9c86a5fb7fae5b88719e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dc3a34c1a946659cefd8630e2e65e06c5bda05492785855e4e08f238ba3be8e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:391c148de6931da60948d38d0cce40edad3f76df4cd7fdd05a571b7ee977ea96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFunAlgHom : A ⊗[R] Matrix n n R →ₐ[R] Matrix n n A :=
  algHomOfLinearMapTensorProduct (toFunLinear R A n)
    (by
      intros
      simp_rw [toFunLinear, lift.tmul, toFunBilinear_apply, Matrix.map_mul]
      ext
      dsimp
      simp_rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul, Finset.mul_sum,
        _root_.mul_assoc, Algebra.left_comm])
    (by
      intros
      simp_rw [toFunLinear, lift.tmul, toFunBilinear_apply,
        Matrix.map_one (algebraMap R A) (map_zero _) (map_one _), algebraMap_smul,
        Algebra.algebraMap_eq_smul_one])
#align matrix_equiv_tensor.to_fun_alg_hom MatrixEquivTensor.toFunAlgHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805766b4ef42cac78bb9c86a5fb7fae5b88719e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
