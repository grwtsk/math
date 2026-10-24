# add_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2be4bf77-59a5-687a-de0f-0f371a7bc739",
  "kind": "theorem",
  "lexical_name": "add_pow",
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
  "slug": "add-pow--2ce76bdfecf7a2d56f76d562",
  "source": {
    "blob": "892d2afebab874869572cb8af55e2431a20672d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ce76bdfecf7a2d56f76d56295283940101b0c2da815a8f078ef66cd8581e898",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2be4bf77-59a5-687a-de0f-0f371a7bc739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_pow (h : Commute x y) (n : ℕ) :
    (x + y) ^ n = ∑ m in range (n + 1), x ^ m * y ^ (n - m) * choose n m := by
  let t : ℕ → ℕ → R := fun n m ↦ x ^ m * y ^ (n - m) * choose n m
  change (x + y) ^ n = ∑ m in range (n + 1), t n m
  have h_first : ∀ n, t n 0 = y ^ n := fun n ↦ by
    simp only [choose_zero_right, _root_.pow_zero, Nat.cast_one, mul_one, one_mul, tsub_zero]
  have h_last : ∀ n, t n n.succ = 0 := fun n ↦ by
    simp only [ge_iff_le, choose_succ_self, cast_zero, mul_zero]
  have h_middle :
    ∀ n i : ℕ, i ∈ range n.succ → (t n.succ ∘ Nat.succ) i =
      x * t n i + y * t n i.succ := by
    intro n i h_mem
    have h_le : i ≤ n := Nat.le_of_lt_succ (mem_range.mp h_mem)
    dsimp only
    rw [Function.comp_apply, choose_succ_succ, Nat.cast_add, mul_add]
    congr 1
    · rw [pow_succ x, succ_sub_succ, mul_assoc, mul_assoc, mul_assoc]
    · rw [← mul_assoc y, ← mul_assoc y, (h.symm.pow_right i.succ).eq]
      by_cases h_eq : i = n
      · rw [h_eq, choose_succ_self, Nat.cast_zero, mul_zero, mul_zero]
      · rw [succ_sub (lt_of_le_of_ne h_le h_eq)]
        rw [pow_succ y, mul_assoc, mul_assoc, mul_assoc, mul_assoc]
  induction' n with n ih
  · rw [_root_.pow_zero, sum_range_succ, range_zero, sum_empty, zero_add]
    dsimp only
    rw [_root_.pow_zero, _root_.pow_zero, choose_self, Nat.cast_one, mul_one, mul_one]
  · rw [sum_range_succ', h_first]
    erw [sum_congr rfl (h_middle n), sum_add_distrib, add_assoc]
    rw [pow_succ (x + y), ih, add_mul, mul_sum, mul_sum]
    congr 1
    rw [sum_range_succ', sum_range_succ, h_first, h_last, mul_zero, add_zero, _root_.pow_succ]
#align commute.add_pow Commute.add_pow

/-- A version of `Commute.add_pow` that avoids ℕ-subtraction by summing over the antidiagonal and
also with the binomial coefficient applied via scalar action of ℕ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892d2afebab874869572cb8af55e2431a20672d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
