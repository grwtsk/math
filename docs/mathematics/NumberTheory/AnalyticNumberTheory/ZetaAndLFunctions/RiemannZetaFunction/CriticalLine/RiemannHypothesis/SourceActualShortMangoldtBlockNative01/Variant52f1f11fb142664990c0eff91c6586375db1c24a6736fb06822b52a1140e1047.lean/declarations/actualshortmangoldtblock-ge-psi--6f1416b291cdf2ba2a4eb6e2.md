# actualShortMangoldtBlock_ge_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6f695c-7790-1346-1afc-4493b36bf0d5",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldtBlock_ge_psi",
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
  "slug": "actualshortmangoldtblock-ge-psi--6f1416b291cdf2ba2a4eb6e2",
  "source": {
    "blob": "58653f0941aa5b23cbd5ce83acb861beb12bced7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f1416b291cdf2ba2a4eb6e248283582ada7dc5805d02cfd011b5103d1541ab2",
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

Occurrence: `result:5f6f695c-7790-1346-1afc-4493b36bf0d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldtBlock_ge_psi {A : ℝ} (hA : 25600 ≤ A) :
    Chebyshev.psi (A ^ 2) / (2 * A) ≤ actualShortMangoldtBlock A := by
  have hp : 0 < A := by linarith
  have hU1 : 1 ≤ A := by linarith
  rw [← actualShortMangoldt_unweighted_eq_psi hU1, Finset.sum_div]
  unfold actualShortMangoldtBlock
  apply Finset.sum_le_sum
  intro n hn
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hnA : (n : ℝ) ≤ A ^ 2 :=
    (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
      (Nat.floor_le (sq_nonneg A))
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  have hsA : Real.sqrt (n : ℝ) ≤ A := by
    exact (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
  have hc := actualCorrelation_short_lower hA hn
  have hw : 1 / (2 * A) ≤ closedPrimeWeight A n := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    apply (le_div_iff₀ hsn).2
    have hh : Real.sqrt (n : ℝ) / (2 * A) ≤ 1 / 2 := by
      apply (div_le_iff₀ (by positivity : 0 < 2 * A)).2
      linarith
    exact hh.trans hc
  simpa only [div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left hw (vonMangoldt_nonneg (n := n))

/-- Genuine actual PNT supplies a real threshold for the closed square-scale psi lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant52f1f11fb142664990c0eff91c6586375db1c24a6736fb06822b52a1140e1047.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58653f0941aa5b23cbd5ce83acb861beb12bced7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
