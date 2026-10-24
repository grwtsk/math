# iterate_derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a2cdc3-706a-5286-077c-8d0d28a7438e",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_mul",
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
  "slug": "iterate-derivative-mul--8a82e9530a0205f5ff396c63",
  "source": {
    "blob": "d8da881b3ac25b0df10cfc4e153e7b05324c1636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 428,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a82e9530a0205f5ff396c633eb08dff1c00181e5202e83a4d393310b2df7cd0",
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

Occurrence: `result:85a2cdc3-706a-5286-077c-8d0d28a7438e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_mul {n} (p q : R[X]) :
    derivative^[n] (p * q) =
      ∑ k in range n.succ, (n.choose k • (derivative^[n - k] p * derivative^[k] q)) := by
  induction' n with n IH
  · simp [Finset.range]
  calc
    derivative^[n + 1] (p * q) =
        derivative (∑ k : ℕ in range n.succ,
            n.choose k • (derivative^[n - k] p * derivative^[k] q)) :=
      by rw [Function.iterate_succ_apply', IH]
    _ = (∑ k : ℕ in range n.succ,
          n.choose k • (derivative^[n - k + 1] p * derivative^[k] q)) +
        ∑ k : ℕ in range n.succ,
          n.choose k • (derivative^[n - k] p * derivative^[k + 1] q) := by
      simp_rw [derivative_sum, derivative_smul, derivative_mul, Function.iterate_succ_apply',
        smul_add, sum_add_distrib]
    _ = (∑ k : ℕ in range n.succ,
              n.choose k.succ • (derivative^[n - k] p * derivative^[k + 1] q)) +
            1 • (derivative^[n + 1] p * derivative^[0] q) +
          ∑ k : ℕ in range n.succ, n.choose k • (derivative^[n - k] p * derivative^[k + 1] q) :=
      ?_
    _ = ((∑ k : ℕ in range n.succ, n.choose k • (derivative^[n - k] p * derivative^[k + 1] q)) +
            ∑ k : ℕ in range n.succ,
              n.choose k.succ • (derivative^[n - k] p * derivative^[k + 1] q)) +
          1 • (derivative^[n + 1] p * derivative^[0] q) :=
      by rw [add_comm, add_assoc]
    _ = (∑ i : ℕ in range n.succ,
            (n + 1).choose (i + 1) • (derivative^[n + 1 - (i + 1)] p * derivative^[i + 1] q)) +
          1 • (derivative^[n + 1] p * derivative^[0] q) :=
      by simp_rw [Nat.choose_succ_succ, Nat.succ_sub_succ, add_smul, sum_add_distrib]
    _ = ∑ k : ℕ in range n.succ.succ,
          n.succ.choose k • (derivative^[n.succ - k] p * derivative^[k] q) :=
      by rw [sum_range_succ' _ n.succ, Nat.choose_zero_right, tsub_zero]
  congr
  refine' (sum_range_succ' _ _).trans (congr_arg₂ (· + ·) _ _)
  · rw [sum_range_succ, Nat.choose_succ_self, zero_smul, add_zero]
    refine' sum_congr rfl fun k hk => _
    rw [mem_range] at hk
    congr
    rw [tsub_add_eq_add_tsub (Nat.succ_le_of_lt hk), Nat.succ_sub_succ]
  · rw [Nat.choose_zero_right, tsub_zero]
#align polynomial.iterate_derivative_mul Polynomial.iterate_derivative_mul

end Semiring

section CommSemiring

variable [CommSemiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8da881b3ac25b0df10cfc4e153e7b05324c1636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
