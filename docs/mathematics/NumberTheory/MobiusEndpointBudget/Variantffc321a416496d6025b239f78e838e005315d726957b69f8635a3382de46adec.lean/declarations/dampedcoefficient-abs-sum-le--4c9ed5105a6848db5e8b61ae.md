# dampedCoefficient_abs_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02270594-0931-0d0c-f23a-050bc3290957",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_abs_sum_le",
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
  "slug": "dampedcoefficient-abs-sum-le--4c9ed5105a6848db5e8b61ae",
  "source": {
    "blob": "a90dda14996b30a7a0efd95c12564fc754605bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 110,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c9ed5105a6848db5e8b61ae1bbd7c4f70541a2984270e39403bbd5f689cb55e",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02270594-0931-0d0c-f23a-050bc3290957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_abs_sum_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ≤
      2 * (X : ℝ) * (1 + Real.log (X : ℝ)) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg hXr
  have he (d : ℕ) (hd : 1 ≤ d) : Real.exp (-ε * Real.log (d : ℝ)) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε)
      (Real.log_nonneg (by exact_mod_cast hd))
  have ht (d : ℕ) (hd : d ∈ Finset.Icc 1 X) :
      |dampedCoefficient X ε d| ≤
        1 + if d = X then (X : ℝ) * |mobiusReciprocalSum X| else 0 := by
    have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    have ha : |(ArithmeticFunction.moebius d : ℝ) *
        Real.exp (-ε * Real.log (d : ℝ))| ≤ 1 := by
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      exact (mul_le_mul hm (he d (Finset.mem_Icc.mp hd).1)
        (Real.exp_pos _).le zero_le_one).trans_eq (by norm_num)
    unfold dampedCoefficient
    refine (abs_sub _ _).trans (add_le_add ha ?_)
    split_ifs with h
    · rw [abs_mul, abs_mul, abs_of_nonneg (Nat.cast_nonneg X),
        abs_of_pos (Real.exp_pos _)]
      exact mul_le_mul_of_nonneg_right
        (by simpa only [mul_one] using
          mul_le_mul_of_nonneg_left (he X hX) (Nat.cast_nonneg X)) (abs_nonneg _)
    · simp
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 X,
        (1 + if d = X then (X : ℝ) * |mobiusReciprocalSum X| else 0) :=
      Finset.sum_le_sum ht
    _ = (X : ℝ) + (X : ℝ) * |mobiusReciprocalSum X| := by
      rw [Finset.sum_add_distrib]
      simp [hX]
    _ ≤ (X : ℝ) + (X : ℝ) * (1 + Real.log (X : ℝ)) := by
      gcongr
      exact reciprocal_abs_le_one_add_log X
    _ ≤ _ := by nlinarith [Nat.cast_nonneg (α := ℝ) X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudget/Variantffc321a416496d6025b239f78e838e005315d726957b69f8635a3382de46adec.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90dda14996b30a7a0efd95c12564fc754605bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
