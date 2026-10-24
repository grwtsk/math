# actual_logProfile_complement_eq_literal_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b04bef3d0d8467c6ffde23f322bac1fed194ffc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6bcc09c-e09f-9457-0d54-b581b850c928",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebf18c4a-5692-fd45-eeb1-150d9cc1adb5",
  "kind": "theorem",
  "lexical_name": "actual_logProfile_complement_eq_literal_L",
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
  "slug": "actual-logprofile-complement-eq-literal-l--126d207b8f53a1b4cafd025e",
  "source": {
    "blob": "b04bef3d0d8467c6ffde23f322bac1fed194ffc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:126d207b8f53a1b4cafd025e3480510851ece31662451813ad1a86e27e311f47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebf18c4a-5692-fd45-eeb1-150d9cc1adb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logProfile_complement_eq_literal_L (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) =
        literalOmegaComplementarySector A := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  have hU : 0 < U := by have := vaughanCutoff_pos A hA; omega
  have hzero (d m : ℕ) (hcut : N < d * m) : plainProfile A 1 ((d * m : ℕ) : ℝ) = 0 := by
    apply plainProfile_cutoff_tail hA (by norm_num : (1 : ℝ) ≤ 1)
    exact_mod_cast (by omega : N + 1 ≤ d * m)
  have hc : (∑ d ∈ Finset.Ioc U N, realMoebius d *
      (∑ m ∈ Finset.Icc 1 N, logProfile A (d : ℝ) (m : ℝ))) =
      ∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
        (∑ d ∈ Finset.Ioc U N, realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro d hd
    rw [actual_logProfile_eq_log_mul_product A d m
      (by have := (Finset.mem_Ioc.mp hd).1; omega)
      (by have := (Finset.mem_Icc.mp hm).1; omega)]
    ring
  have hclip (m : ℕ) (hm : 0 < m) :
      (∑ d ∈ Finset.Ioc U N, realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) =
      ∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ) := by
    symm
    apply Finset.sum_subset
    · intro d hd
      have hb := Finset.mem_Icc.mp hd
      exact Finset.mem_Ioc.mpr ⟨by omega, hb.2.trans (Nat.div_le_self _ _)⟩
    · intro d hd hdn
      have hb := Finset.mem_Ioc.mp hd
      have hgt : N / m < d := by
        simp only [Finset.mem_Icc, not_and] at hdn
        exact lt_of_not_ge (hdn (by omega))
      have hcut : N < d * m := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hm).mp hgt
      rw [hzero d m hcut, mul_zero]
  have ht : (∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
      (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ))) =
      ∑ m ∈ Finset.Icc 1 (N / U), Real.log (m : ℝ) *
        (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
    symm
    apply Finset.sum_subset
    · intro m hm
      have hb := Finset.mem_Icc.mp hm
      exact Finset.mem_Icc.mpr ⟨hb.1, hb.2.trans (Nat.div_le_self _ _)⟩
    · intro m hm hmn
      have hb := Finset.mem_Icc.mp hm
      have hgt : N / U < m := by
        simp only [Finset.mem_Icc, not_and] at hmn
        exact lt_of_not_ge (hmn hb.1)
      have hcut : N < U * m := by
        simpa only [Nat.mul_comm] using (Nat.div_lt_iff_lt_mul hU).mp hgt
      have hsum : (∑ d ∈ Finset.Icc (U + 1) (N / m),
          realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) = 0 := by
        apply Finset.sum_eq_zero
        intro d hd
        have hdU : U < d := by have := (Finset.mem_Icc.mp hd).1; omega
        have hmp : 0 < m := by omega
        have hprod : d * m ≤ N := (Nat.le_div_iff_mul_le hmp).mp (Finset.mem_Icc.mp hd).2
        have hmul : U * m < d * m := Nat.mul_lt_mul_of_pos_right hdU hmp
        omega
      rw [hsum, mul_zero]
  change (∑ d ∈ Finset.Ioc U N, realMoebius d *
    (∑ m ∈ Finset.Icc 1 N, logProfile A (d : ℝ) (m : ℝ))) = _
  rw [hc]
  calc
    _ = ∑ m ∈ Finset.Icc 1 N, Real.log (m : ℝ) *
        (∑ d ∈ Finset.Icc (U + 1) (N / m), realMoebius d * plainProfile A 1 ((d * m : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro m hm
      rw [hclip m (by have := (Finset.mem_Icc.mp hm).1; omega)]
    _ = _ := ht
    _ = literalOmegaComplementarySector A := by
      unfold literalOmegaComplementarySector
      simp_rw [floor_exp_two_mul_div_natCast]
      rfl

/-- The complete original residual has the genuine disjoint short and literal
complementary sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variant7a35f37001d1e2c29ade4ce58607da6ea6d155bd6c59bfdc532985a23fb28eb4.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04bef3d0d8467c6ffde23f322bac1fed194ffc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
