# quotient_sample_eq_full_sub_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f9d607c-0949-0ba8-ab2e-2438d125d768",
  "kind": "theorem",
  "lexical_name": "quotient_sample_eq_full_sub_short",
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
  "slug": "quotient-sample-eq-full-sub-short--af29a769d1bbec67ec588c7c",
  "source": {
    "blob": "e7746fe420533a2b7e6a15dc950b80e6c006db41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variantb39d733de9ee9ad006018260cf61d7bf334aebb110115407ee1e9c8a3db8ff69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af29a769d1bbec67ec588c7c52cc62e6051d0856c29cd52c094d08d0f03fc52f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variantb39d733de9ee9ad006018260cf61d7bf334aebb110115407ee1e9c8a3db8ff69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f9d607c-0949-0ba8-ab2e-2438d125d768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_sample_eq_full_sub_short
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
    (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
    ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let f : ℕ → ℝ := fun j => sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)
  have hab : U / d ≤ N / d := Nat.div_le_div_right (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hs : (∑ j ∈ Finset.Icc 1 N, f j) = ∑ j ∈ Finset.Icc 1 (N / d), f j := by
    symm
    apply Finset.sum_subset
    · intro j hj
      have hb := (Finset.mem_Icc.mp hj).2
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hj).1, hb.trans (Nat.div_le_self _ _)⟩
    · intro j hj hjn
      have hgt : N / d < j := by
        have hlow := (Finset.mem_Icc.mp hj).1
        simp only [Finset.mem_Icc, not_and] at hjn
        exact lt_of_not_ge (hjn hlow)
      have hjN : N < d * j := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hd).mp hgt
      have hcut : N < m * (d * j) := by
        have hmul := Nat.mul_le_mul_right (d * j) (show 1 ≤ m by omega)
        have hmul' : d * j ≤ m * (d * j) := by simpa only [one_mul] using hmul
        exact hjN.trans_le hmul'
      exact sourcePlainWeight_zero_of_cutoff_lt A hA _ hcut
  have hdj : Disjoint (Finset.Icc 1 (U / d)) (Finset.Icc (U / d + 1) (N / d)) := by
    apply Finset.disjoint_left.mpr
    intro j hj hj'
    have h1 := (Finset.mem_Icc.mp hj).2
    have h2 := (Finset.mem_Icc.mp hj').1
    omega
  have hu : Finset.Icc 1 (U / d) ∪ Finset.Icc (U / d + 1) (N / d) =
      Finset.Icc 1 (N / d) := by
    have hua : 0 ≤ U / d := Nat.zero_le _
    ext j
    simp only [Finset.mem_union, Finset.mem_Icc]
    omega
  have hp := Finset.sum_union (f := f) hdj
  rw [hu] at hp
  change (∑ j ∈ Finset.Icc (U / d + 1) (N / d), f j) =
    (∑ j ∈ Finset.Icc 1 N, f j) - ∑ j ∈ Finset.Icc 1 (U / d), f j
  rw [hs]
  linarith

/-- The actual quotient remainder preserves the source main and short prefix at their signs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variantb39d733de9ee9ad006018260cf61d7bf334aebb110115407ee1e9c8a3db8ff69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2c9f867972402a405a0cSourceDivisorQuotientRemainder/Variantb39d733de9ee9ad006018260cf61d7bf334aebb110115407ee1e9c8a3db8ff69.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7746fe420533a2b7e6a15dc950b80e6c006db41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
