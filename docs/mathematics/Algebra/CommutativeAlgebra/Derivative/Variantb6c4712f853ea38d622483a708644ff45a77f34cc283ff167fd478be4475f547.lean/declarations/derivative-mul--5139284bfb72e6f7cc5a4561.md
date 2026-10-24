# derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4402e611-42dc-a9c3-f710-f986200b4d67",
  "kind": "theorem",
  "lexical_name": "derivative_mul",
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
  "slug": "derivative-mul--5139284bfb72e6f7cc5a4561",
  "source": {
    "blob": "d8da881b3ac25b0df10cfc4e153e7b05324c1636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 294,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5139284bfb72e6f7cc5a45612508e1ce7e1c01f0ce2857fa02b616756829f3fa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4402e611-42dc-a9c3-f710-f986200b4d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_mul {f g : R[X]} : derivative (f * g) = derivative f * g + f * derivative g :=
  calc
    derivative (f * g) =
        f.sum fun n a => g.sum fun m b => (n + m) • (C (a * b) * X ^ (n + m - 1)) := by
      rw [mul_eq_sum_sum, derivative_sum]
      trans
      · apply Finset.sum_congr rfl
        intro x _
        exact derivative_sum
      apply Finset.sum_congr rfl; intro n _; apply Finset.sum_congr rfl; intro m _
      trans
      · exact congr_arg _ C_mul_X_pow_eq_monomial.symm
      dsimp; rw [← smul_mul_assoc, smul_C, nsmul_eq_mul']; exact derivative_C_mul_X_pow _ _
    _ =
        f.sum fun n a =>
          g.sum fun m b =>
            n • (C a * X ^ (n - 1)) * (C b * X ^ m) + C a * X ^ n * m • (C b * X ^ (m - 1)) :=
      (sum_congr rfl fun n hn =>
        sum_congr rfl fun m hm => by
          cases n <;> cases m <;>
            simp_rw [add_smul, mul_smul_comm, smul_mul_assoc, X_pow_mul_assoc, ← mul_assoc, ←
              C_mul, mul_assoc, ← pow_add] <;>
            simp [Nat.add_succ, Nat.succ_add, Nat.succ_sub_one, zero_smul, add_comm])
    _ = derivative f * g + f * derivative g := by
      conv =>
        rhs
        congr
        · rw [← sum_C_mul_X_pow_eq g]
        · rw [← sum_C_mul_X_pow_eq f]
      simp only [sum, sum_add_distrib, Finset.mul_sum, Finset.sum_mul, derivative_apply]
      simp_rw [← smul_mul_assoc, smul_C, nsmul_eq_mul']
      rw [Finset.sum_comm]
      congr 1
      rw [Finset.sum_comm]
#align polynomial.derivative_mul Polynomial.derivative_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8da881b3ac25b0df10cfc4e153e7b05324c1636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
