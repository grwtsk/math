# complete_short_multiple_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ded76b-b05e-4d46-5e57-b609b7326e31",
  "kind": "theorem",
  "lexical_name": "complete_short_multiple_sum",
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
  "slug": "complete-short-multiple-sum--85e6710e47bd8e8709b8e5dc",
  "source": {
    "blob": "65f7adb35136bc2d6161d9433a7ecd7e0709f1de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant307f90e4b733b374ed5d3414283fd55b1030bb47eb8c067f5e98424a3938b690.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e6710e47bd8e8709b8e5dc50ead48217e0460cdcf33bf91ff1cdbf60a0db55",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant307f90e4b733b374ed5d3414283fd55b1030bb47eb8c067f5e98424a3938b690.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ded76b-b05e-4d46-5e57-b609b7326e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_short_multiple_sum (U : ℕ) (hU : 1 ≤ U) (f : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
      (∑ j ∈ Finset.Icc 1 (U / d), f (d * j))) = f 1 := by
  classical
  have he (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      (∑ j ∈ Finset.Icc 1 (U / d), f (d * j)) =
        ∑ n ∈ Finset.Icc 1 U, if d ∣ n then f n else 0 := by
    have h := sum_multiples_eq_quotient_interval 0 U d
      (by have := (Finset.mem_Icc.mp hd).1; omega) f
    have hi : Finset.Ioc 0 U = Finset.Icc 1 U := by
      ext n
      simp only [Finset.mem_Ioc, Finset.mem_Icc]
      omega
    simpa only [Nat.zero_div, zero_add, hi] using h.symm
  have hs (n : ℕ) (hn : n ∈ Finset.Icc 1 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have hb := beta_eq_delta_sub_short U n
    rw [beta_zero_of_le U n (Finset.mem_Icc.mp hn).2,
      short_divisor_sum_eq_indicator U n
        (by have := (Finset.mem_Icc.mp hn).1; omega)] at hb
    linarith
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ n ∈ Finset.Icc 1 U, if d ∣ n then f n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [he d hd]
    _ = ∑ n ∈ Finset.Icc 1 U,
        (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) * f n := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro d _
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.Icc 1 U, (if n = 1 then 1 else 0) * f n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [hs n hn]
    _ = f 1 := by
      simp only [ite_mul, one_mul, zero_mul]
      simp [hU]

/-- The outer Mangoldt range remains LONG during the short-multiple collapse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant307f90e4b733b374ed5d3414283fd55b1030bb47eb8c067f5e98424a3938b690.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant307f90e4b733b374ed5d3414283fd55b1030bb47eb8c067f5e98424a3938b690.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7adb35136bc2d6161d9433a7ecd7e0709f1de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
