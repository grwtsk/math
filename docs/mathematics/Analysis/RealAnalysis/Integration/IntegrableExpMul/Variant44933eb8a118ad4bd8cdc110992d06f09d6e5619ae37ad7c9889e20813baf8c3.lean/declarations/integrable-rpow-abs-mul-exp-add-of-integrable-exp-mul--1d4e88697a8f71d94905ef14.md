# integrable_rpow_abs_mul_exp_add_of_integrable_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:356d2ecf-7147-ead3-4b1d-122f7fad7a8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43bedd43-cd1f-2f1b-1014-f4bd09faf6da",
  "kind": "lemma",
  "lexical_name": "integrable_rpow_abs_mul_exp_add_of_integrable_exp_mul",
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
  "slug": "integrable-rpow-abs-mul-exp-add-of-integrable-exp-mul--1d4e88697a8f71d94905ef14",
  "source": {
    "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d4e88697a8f71d94905ef14fd630207fbb8e3f1dd4ec28cfa1501b19c4b01ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43bedd43-cd1f-2f1b-1014-f4bd09faf6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_rpow_abs_mul_exp_add_of_integrable_exp_mul {x : ℝ}
    (h_int_pos : Integrable (fun ω ↦ exp ((v + t) * X ω)) μ)
    (h_int_neg : Integrable (fun ω ↦ exp ((v - t) * X ω)) μ) (h_nonneg : 0 ≤ x) (hx : x < |t|)
    {p : ℝ} (hp : 0 ≤ p) :
    Integrable (fun a ↦ |X a| ^ p * exp (v * X a + x * |X a|)) μ := by
  have ht : t ≠ 0 := by
    suffices |t| ≠ 0 by simpa
    exact (h_nonneg.trans_lt hx).ne'
  have hX : AEMeasurable X μ := aemeasurable_of_integrable_exp_mul ?_ h_int_pos h_int_neg
  swap; · rw [← sub_ne_zero]; simp [ht]
  rw [← integrable_norm_iff]
  swap; · fun_prop
  simp only [norm_mul, norm_pow, norm_eq_abs, sq_abs, abs_exp]
  have h_le a : |X a| ^ p * exp (v * X a + x * |X a|)
      ≤ (p / (|t| - x)) ^ p * exp (v * X a + |t| * |X a|) := by
    simp_rw [exp_add, mul_comm (exp (v * X a)), ← mul_assoc]
    gcongr ?_ * _
    have : |t| = |t| - x + x := by simp
    nth_rw 2 [this]
    rw [add_mul, exp_add, ← mul_assoc]
    gcongr ?_ * _
    convert rpow_abs_le_mul_exp_abs (X a) hp (t := |t| - x) _ using 4
    · nth_rw 2 [abs_of_nonneg]
      simp [hx.le]
    · nth_rw 2 [abs_of_nonneg]
      simp [hx.le]
    · rw [sub_ne_zero]
      exact hx.ne'
  refine Integrable.mono (g := fun a ↦ (p / (|t| - x)) ^ p * exp (v * X a + |t| * |X a|))
    ?_ ?_ <| ae_of_all _ fun ω ↦ ?_
  · refine Integrable.const_mul ?_ _
    simp_rw [add_comm (v * X _)]
    exact integrable_exp_abs_mul_abs_add h_int_pos h_int_neg
  · fun_prop
  · simp only [sq_abs, norm_mul, norm_pow, norm_eq_abs, abs_exp, norm_div, norm_ofNat]
    simp_rw [abs_rpow_of_nonneg (abs_nonneg _), abs_abs]
    refine (h_le ω).trans_eq ?_
    congr
    symm
    simp only [abs_eq_self, sub_nonneg]
    exact rpow_nonneg (div_nonneg hp (sub_nonneg_of_le hx.le)) _

/-- If `exp ((v + t) * X)` and `exp ((v - t) * X)` are integrable
then for any `n : ℕ` and any `x ∈ [0, |t|)`,
`|X| ^ n * exp (v * X + x * |X|)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568175606bd7c31c5eefd4bc86669be779ef9df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
