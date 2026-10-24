# coeff_hermite_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9439a14dd0c0438f36739e8b47ab21d5af456c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a54aad0b-c8ff-00d3-d56a-b255dfe3f06d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7dc72eb-8c82-970e-d397-bad0fada83e1",
  "kind": "theorem",
  "lexical_name": "coeff_hermite_explicit",
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
  "slug": "coeff-hermite-explicit--d2f02136328438c5cd6d9a49",
  "source": {
    "blob": "a9439a14dd0c0438f36739e8b47ab21d5af456c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 153,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f02136328438c5cd6d9a49cb208c58f9f414ff16b4fbff57656825d356c56b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7dc72eb-8c82-970e-d397-bad0fada83e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_hermite_explicit :
    ∀ n k : ℕ, coeff (hermite (2 * n + k)) k = (-1) ^ n * (2 * n - 1)‼ * Nat.choose (2 * n + k) k
  | 0, _ => by simp
  | n + 1, 0 => by
    convert coeff_hermite_succ_zero (2 * n + 1) using 1
    -- porting note: ring_nf did not solve the goal on line 165
    rw [coeff_hermite_explicit n 1, (by rw [Nat.left_distrib, mul_one, Nat.succ_sub_one] :
      2 * (n + 1) - 1 = 2 * n + 1), Nat.doubleFactorial_add_one, Nat.choose_zero_right,
      Nat.choose_one_right, pow_succ]
    push_cast
    ring
  | n + 1, k + 1 => by
    let hermite_explicit : ℕ → ℕ → ℤ := fun n k =>
      (-1) ^ n * (2 * n - 1)‼ * Nat.choose (2 * n + k) k
    have hermite_explicit_recur :
      ∀ n k : ℕ,
        hermite_explicit (n + 1) (k + 1) =
          hermite_explicit (n + 1) k - (k + 2) * hermite_explicit n (k + 2) := by
      intro n k
      simp only
      -- Factor out (-1)'s.
      rw [mul_comm (↑k + _ : ℤ), sub_eq_add_neg]
      nth_rw 3 [neg_eq_neg_one_mul]
      simp only [mul_assoc, ← mul_add, pow_succ]
      congr 2
      -- Factor out double factorials.
      norm_cast
      -- porting note: ring_nf did not solve the goal on line 186
      rw [(by rw [Nat.left_distrib, mul_one, Nat.succ_sub_one] : 2 * (n + 1) - 1 = 2 * n + 1),
        Nat.doubleFactorial_add_one, mul_comm (2 * n + 1)]
      simp only [mul_assoc, ← mul_add]
      congr 1
      -- Match up binomial coefficients using `Nat.choose_succ_right_eq`.
      rw [(by ring : 2 * (n + 1) + (k + 1) = 2 * n + 1 + (k + 1) + 1),
        (by ring : 2 * (n + 1) + k = 2 * n + 1 + (k + 1)),
        (by ring : 2 * n + (k + 2) = 2 * n + 1 + (k + 1))]
      rw [Nat.choose, Nat.choose_succ_right_eq (2 * n + 1 + (k + 1)) (k + 1), Nat.add_sub_cancel,
        Int.negSucc_eq]
      -- porting note: ring could not solve the goal so the lines 195, 198-200 were added.
      ring_nf
      simp only [sub_eq_add_neg, ← neg_mul, ← right_distrib _ _ ((-(1 : ℤ)) ^ n), ← neg_add]
      norm_cast
      simp only [← add_assoc, add_comm]
    change _ = hermite_explicit _ _
    rw [← add_assoc, coeff_hermite_succ_succ, hermite_explicit_recur]
    congr
    · rw [coeff_hermite_explicit (n + 1) k]
    · rw [(by ring : 2 * (n + 1) + k = 2 * n + (k + 2)), coeff_hermite_explicit n (k + 2)]
-- porting note: Lean 3 worked this out automatically
termination_by _ n k => (n, k)
#align polynomial.coeff_hermite_explicit Polynomial.coeff_hermite_explicit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant817431144d86987719795198a6da8d645dd3e25e0289ddebf2a63106eb788596.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9439a14dd0c0438f36739e8b47ab21d5af456c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
