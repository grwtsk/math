# norm_exp_sub_sum_le_norm_mul_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc54f350-a0c7-9de2-0ff7-4becbae9942b",
  "kind": "lemma",
  "lexical_name": "norm_exp_sub_sum_le_norm_mul_exp",
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
  "slug": "norm-exp-sub-sum-le-norm-mul-exp--eda73acf5ecb1bae1f442624",
  "source": {
    "blob": "bd6a2d80c81e25a49593d60aae8f460f329d62fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 477,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda73acf5ecb1bae1f44262493a48d3dd72a38f3c42120e42628634bd4e5d462",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc54f350-a0c7-9de2-0ff7-4becbae9942b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_exp_sub_sum_le_norm_mul_exp (x : ℂ) (n : ℕ) :
    ‖exp x - ∑ m ∈ range n, x ^ m / m.factorial‖ ≤ ‖x‖ ^ n * Real.exp ‖x‖ := by
  rw [← CauSeq.lim_const (abv := norm) (∑ m ∈ range n, _), Complex.exp, sub_eq_add_neg,
    ← CauSeq.lim_neg, CauSeq.lim_add, ← lim_norm]
  refine CauSeq.lim_le (CauSeq.le_of_exists ⟨n, fun j hj => ?_⟩)
  simp_rw [← sub_eq_add_neg]
  show ‖(∑ m ∈ range j, x ^ m / m.factorial) - ∑ m ∈ range n, x ^ m / m.factorial‖ ≤ _
  rw [sum_range_sub_sum_range hj]
  calc
    ‖∑ m ∈ range j with n ≤ m, (x ^ m / m.factorial : ℂ)‖
      = ‖∑ m ∈ range j with n ≤ m, (x ^ n * (x ^ (m - n) / m.factorial) : ℂ)‖ := by
      refine congr_arg norm (sum_congr rfl fun m hm => ?_)
      rw [mem_filter, mem_range] at hm
      rw [← mul_div_assoc, ← pow_add, add_tsub_cancel_of_le hm.2]
    _ ≤ ∑ m ∈ range j with n ≤ m, ‖x ^ n * (x ^ (m - n) / m.factorial)‖ :=
      IsAbsoluteValue.abv_sum norm ..
    _ ≤ ∑ m ∈ range j with n ≤ m, ‖x‖ ^ n * (‖x‖ ^ (m - n) / (m - n).factorial) := by
      simp_rw [Complex.norm_mul, Complex.norm_pow, Complex.norm_div, norm_natCast]
      gcongr with i hi
      · rw [Complex.norm_pow]
      · simp
    _ = ‖x‖ ^ n * ∑ m ∈ range j with n ≤ m, (‖x‖ ^ (m - n) / (m - n).factorial) := by
      rw [← mul_sum]
    _ = ‖x‖ ^ n * ∑ m ∈ range (j - n), (‖x‖ ^ m / m.factorial) := by
      congr 1
      refine (sum_bij (fun m hm ↦ m + n) ?_ ?_ ?_ ?_).symm
      · intro a ha
        simp only [mem_filter, mem_range, le_add_iff_nonneg_left, zero_le, and_true]
        simp only [mem_range] at ha
        rwa [← lt_tsub_iff_right]
      · intro a ha b hb hab
        simpa using hab
      · intro b hb
        simp only [mem_range, exists_prop]
        simp only [mem_filter, mem_range] at hb
        refine ⟨b - n, ?_, ?_⟩
        · rw [tsub_lt_tsub_iff_right hb.2]
          exact hb.1
        · rw [tsub_add_cancel_of_le hb.2]
      · simp
    _ ≤ ‖x‖ ^ n * Real.exp ‖x‖ := by
      gcongr
      refine Real.sum_le_exp_of_nonneg ?_ _
      exact norm_nonneg _

@[deprecated (since := "2025-02-16")] alias abs_exp_sub_one_le := norm_exp_sub_one_le
@[deprecated (since := "2025-02-16")] alias abs_exp_sub_one_sub_id_le := norm_exp_sub_one_sub_id_le
@[deprecated (since := "2025-02-16")] alias  abs_exp_sub_sum_le_exp_abs_sub_sum :=
  norm_exp_sub_sum_le_exp_norm_sub_sum
@[deprecated (since := "2025-02-16")] alias abs_exp_le_exp_abs := norm_exp_le_exp_norm
@[deprecated (since := "2025-02-16")] alias abs_exp_sub_sum_le_abs_mul_exp :=
  norm_exp_sub_sum_le_norm_mul_exp

end Complex

namespace Real

open Complex Finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd6a2d80c81e25a49593d60aae8f460f329d62fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
