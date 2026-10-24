# le_jacobson_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:057715a0-4b79-b074-5449-704276521954",
  "kind": "theorem",
  "lexical_name": "le_jacobson_bot",
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
  "slug": "le-jacobson-bot--3f7ecbc1df8284c3023204c1",
  "source": {
    "blob": "402a28d81e26d0b2f627bfb14a151487ee0e7648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7ecbc1df8284c3023204c10266d4b8e6d68fbeaa580a40e298f019d0656b7b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:057715a0-4b79-b074-5449-704276521954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_jacobson_bot [IsAdicComplete I R] : I ≤ (⊥ : Ideal R).jacobson := by
  intro x hx
  rw [← Ideal.neg_mem_iff, Ideal.mem_jacobson_bot]
  intro y
  rw [add_comm]
  let f : ℕ → R := fun n => ∑ i in range n, (x * y) ^ i
  have hf : ∀ m n, m ≤ n → f m ≡ f n [SMOD I ^ m • (⊤ : Submodule R R)] := by
    intro m n h
    simp only [Algebra.id.smul_eq_mul, Ideal.mul_top, SModEq.sub_mem]
    rw [← add_tsub_cancel_of_le h, Finset.sum_range_add, ← sub_sub, sub_self, zero_sub,
      @neg_mem_iff]
    apply Submodule.sum_mem
    intro n _
    rw [mul_pow, pow_add, mul_assoc]
    exact Ideal.mul_mem_right _ (I ^ m) (Ideal.pow_mem_pow hx m)
  obtain ⟨L, hL⟩ := IsPrecomplete.prec toIsPrecomplete @hf
  · rw [isUnit_iff_exists_inv]
    use L
    rw [← sub_eq_zero, neg_mul]
    apply IsHausdorff.haus (toIsHausdorff : IsHausdorff I R)
    intro n
    specialize hL n
    rw [SModEq.sub_mem, Algebra.id.smul_eq_mul, Ideal.mul_top] at hL ⊢
    rw [sub_zero]
    suffices (1 - x * y) * f n - 1 ∈ I ^ n by
      convert Ideal.sub_mem _ this (Ideal.mul_mem_left _ (1 + -(x * y)) hL) using 1
      ring
    cases n
    · simp only [Ideal.one_eq_top, pow_zero, Nat.zero_eq, mem_top]
    · rw [← neg_sub _ (1 : R), neg_mul, mul_geom_sum, neg_sub, sub_sub, add_comm, ← sub_sub,
        sub_self, zero_sub, @neg_mem_iff, mul_pow]
      exact Ideal.mul_mem_right _ (I ^ _) (Ideal.pow_mem_pow hx _)
#align is_adic_complete.le_jacobson_bot IsAdicComplete.le_jacobson_bot

end IsAdicComplete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402a28d81e26d0b2f627bfb14a151487ee0e7648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
