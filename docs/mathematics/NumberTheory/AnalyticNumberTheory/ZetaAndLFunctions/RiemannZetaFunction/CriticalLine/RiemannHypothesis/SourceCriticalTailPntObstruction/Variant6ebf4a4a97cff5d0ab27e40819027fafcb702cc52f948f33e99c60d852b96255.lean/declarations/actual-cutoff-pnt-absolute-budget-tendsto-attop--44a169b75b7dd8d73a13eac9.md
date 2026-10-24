# actual_cutoff_pnt_absolute_budget_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9423f8bd-6b66-c0df-b52b-db04653f70a6",
  "kind": "theorem",
  "lexical_name": "actual_cutoff_pnt_absolute_budget_tendsto_atTop",
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
  "slug": "actual-cutoff-pnt-absolute-budget-tendsto-attop--44a169b75b7dd8d73a13eac9",
  "source": {
    "blob": "d810de1723362bae0548b3b37c75fd5408f90d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalTailPntObstruction/Variant6ebf4a4a97cff5d0ab27e40819027fafcb702cc52f948f33e99c60d852b96255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a169b75b7dd8d73a13eac937e75767c9f022d7773288d5315661745bcc8ceb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalTailPntObstruction/Variant6ebf4a4a97cff5d0ab27e40819027fafcb702cc52f948f33e99c60d852b96255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9423f8bd-6b66-c0df-b52b-db04653f70a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cutoff_pnt_absolute_budget_tendsto_atTop (c : ℝ) (hc : 0 ≤ c) :
    Tendsto (fun A : ℝ => actualCutoffPntAbsoluteBudget A c) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9)) =
      fun A => (Real.exp (-1 / 2) / (30 * 2 ^ 9)) *
        (Real.exp (A / 2) / (A / 2) ^ 9) := by
    funext A
    rw [show A / 2 - 1 / 2 = A / 2 + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    apply Tendsto.const_mul_atTop (by positivity)
    exact (Real.tendsto_exp_div_pow_atTop 9).comp
      (by simpa only [div_eq_mul_inv, mul_comm, one_mul, id_eq] using
        (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 1 / 2)))
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (max (25600 : ℝ) (8 * c ^ 2))] with A hA
  have hA0 : 25600 ≤ A := (le_max_left _ _).trans hA
  have hAc : 8 * c ^ 2 ≤ A := (le_max_right _ _).trans hA
  have hs : c * Real.sqrt (2 * A) ≤ A / 2 := by
    have hsq : (c * Real.sqrt (2 * A)) ^ 2 = 2 * c ^ 2 * A := by
      rw [mul_pow, Real.sq_sqrt (by positivity : 0 ≤ 2 * A)]
      ring
    nlinarith [mul_nonneg hc (Real.sqrt_nonneg (2 * A))]
  have hle : Real.exp (A / 2 - 1 / 2) / (30 * A ^ 9) ≤
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) :=
    div_le_div_of_nonneg_right (Real.exp_le_exp.mpr (by linarith)) (by positivity)
  exact hle.trans (actual_cutoff_pnt_absolute_budget_lower hA0 hc)

end
end FormalResearch.RiemannHypothesis.SourceCriticalTailPntObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalTailPntObstruction/Variant6ebf4a4a97cff5d0ab27e40819027fafcb702cc52f948f33e99c60d852b96255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalTailPntObstruction/Variant6ebf4a4a97cff5d0ab27e40819027fafcb702cc52f948f33e99c60d852b96255.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d810de1723362bae0548b3b37c75fd5408f90d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
