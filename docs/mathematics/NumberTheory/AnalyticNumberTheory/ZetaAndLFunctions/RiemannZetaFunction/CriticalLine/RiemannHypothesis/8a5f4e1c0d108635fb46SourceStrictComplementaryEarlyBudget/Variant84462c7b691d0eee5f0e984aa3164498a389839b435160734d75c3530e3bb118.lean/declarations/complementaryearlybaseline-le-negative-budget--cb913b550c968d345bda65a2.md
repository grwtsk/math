# complementaryEarlyBaseline_le_negative_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a86935-bac8-9ad1-f446-264d3911aa59",
  "kind": "theorem",
  "lexical_name": "complementaryEarlyBaseline_le_negative_budget",
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
  "slug": "complementaryearlybaseline-le-negative-budget--cb913b550c968d345bda65a2",
  "source": {
    "blob": "089190391386e29af2deaa8ff2fd2445f6df3d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb913b550c968d345bda65a26eb0c360d609f4f7cbc5288bbb6dbde5b04a17fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75a86935-bac8-9ad1-f446-264d3911aa59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementaryEarlyBaseline_le_negative_budget {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤
      -(5 / 32 : ℝ) * earlySourceFactor A * ((vaughanCutoff A : ℝ) - 1) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  have hi : IntervalIntegrable
      (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x) volume 1 (vaughanCutoff A : ℝ) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mpr
      ((early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self)
  have hc : Continuous (fun x : ℝ => -(5 / 16 : ℝ) * earlySourceFactor A * (x - 1)) := by
    fun_prop
  have hm := intervalIntegral.integral_mono_on hU hi (hc.intervalIntegrable _ _)
    (fun x hx => early_floor_derivative_le hA hx)
  have hd (x : ℝ) : HasDerivAt
      (fun u : ℝ => -(5 / 32 : ℝ) * earlySourceFactor A * (u - 1) ^ 2)
      (-(5 / 16 : ℝ) * earlySourceFactor A * (x - 1)) x :=
    ((((hasDerivAt_id x).sub_const 1).pow 2).const_mul
      (-(5 / 32 : ℝ) * earlySourceFactor A)).congr_deriv (by simp only [id_eq]; ring)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => hd x) (hc.intervalIntegrable 1 (vaughanCutoff A : ℝ))
  simp only [sub_self, zero_pow (by decide : 2 ≠ 0), mul_zero, sub_zero] at he
  rw [he] at hm
  unfold complementaryEarlyBaseline
  rw [← intervalIntegral.integral_of_le hU]
  exact hm

/-- The actual full source lies below its signed tail minus the explicit known early budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant84462c7b691d0eee5f0e984aa3164498a389839b435160734d75c3530e3bb118.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089190391386e29af2deaa8ff2fd2445f6df3d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
