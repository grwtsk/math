# actualCorrelation_short_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd73c1e7-a8c4-d796-cc64-5a783450bf66",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_short_lower",
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
  "slug": "actualcorrelation-short-lower--3e05a66f0fe43cb88f6a56d2",
  "source": {
    "blob": "58653f0941aa5b23cbd5ce83acb861beb12bced7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e05a66f0fe43cb88f6a56d21f40352ef2bf3dda5697e40b500f61439a1b5d2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd73c1e7-a8c4-d796-cc64-5a783450bf66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_short_lower {A : ℝ} (hA : 25600 ≤ A) {n : ℕ}
    (hn : n ∈ Finset.Icc 2 (vaughanCutoff A)) :
    (1 / 2 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log n) := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hU1 : (1 : ℝ) ≤ vaughanCutoff A := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have ht0 := Real.log_nonneg hn1
  have hT0 := Real.log_nonneg hU1
  have htT : Real.log (n : ℝ) ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_le_log hn0 (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
  have hsq := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt
    (by linarith : 1 ≤ A)
  have hs := Real.sq_sqrt hp.le
  have hsA : Real.sqrt A ≤ A := by
    have := Real.sqrt_nonneg A
    nlinarith
  have hbound : (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 ≤ 1 / 2 := by
    have hts : (Real.log (n : ℝ)) ^ 2 ≤
        (Real.log (vaughanCutoff A : ℝ)) ^ 2 := by nlinarith
    apply (mul_le_mul_of_nonneg_left hts (by positivity)).trans
    apply (mul_le_mul_of_nonneg_left hsq (by positivity)).trans
    apply (le_div_iff₀ (by positivity : 0 < A ^ 2)).2
    nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
    (Real.log (n : ℝ))
  linarith [(abs_le.mp (hc.trans hbound)).1]

/-- Every real admitted scale retains the actual closed psi lower contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58653f0941aa5b23cbd5ce83acb861beb12bced7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
