# sum_range_choose_halfway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2df2329-69bf-22c8-d628-12a8084aae9b",
  "kind": "theorem",
  "lexical_name": "sum_range_choose_halfway",
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
  "slug": "sum-range-choose-halfway--b9e83d506640feb47ce5db6f",
  "source": {
    "blob": "892d2afebab874869572cb8af55e2431a20672d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9e83d506640feb47ce5db6fde57f67c92fc86600fab044d78c01a0ddfa1eb5f",
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

Occurrence: `result:e2df2329-69bf-22c8-d628-12a8084aae9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_range_choose_halfway (m : Nat) : (∑ i in range (m + 1), choose (2 * m + 1) i) = 4 ^ m :=
  have : (∑ i in range (m + 1), choose (2 * m + 1) (2 * m + 1 - i)) =
      ∑ i in range (m + 1), choose (2 * m + 1) i :=
    sum_congr rfl fun i hi ↦ choose_symm <| by linarith [mem_range.1 hi]
  mul_right_injective₀ two_ne_zero <|
    calc
      (2 * ∑ i in range (m + 1), choose (2 * m + 1) i) =
          (∑ i in range (m + 1), choose (2 * m + 1) i) +
            ∑ i in range (m + 1), choose (2 * m + 1) (2 * m + 1 - i) := by rw [two_mul, this]
      _ = (∑ i in range (m + 1), choose (2 * m + 1) i) +
            ∑ i in Ico (m + 1) (2 * m + 2), choose (2 * m + 1) i := by
        { rw [range_eq_Ico, sum_Ico_reflect]
          · congr
            have A : m + 1 ≤ 2 * m + 1 := by linarith
            rw [add_comm, add_tsub_assoc_of_le A, ← add_comm]
            congr
            rw [tsub_eq_iff_eq_add_of_le A]
            ring
          · linarith }
      _ = ∑ i in range (2 * m + 2), choose (2 * m + 1) i := sum_range_add_sum_Ico _ (by linarith)
      _ = 2 ^ (2 * m + 1) := sum_range_choose (2 * m + 1)
      _ = 2 * 4 ^ m := by rw [pow_succ, pow_mul, mul_comm]; rfl
#align nat.sum_range_choose_halfway Nat.sum_range_choose_halfway

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant7ec1962e489d1d6c2c6762fef9adcb88f5a40a997ecc6d6bcc3387f6c67f8431.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892d2afebab874869572cb8af55e2431a20672d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
