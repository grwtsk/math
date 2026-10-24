# firstPrimeDecayingMain_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b111b688992e3b15c161c4b605b22d6dbb11d6cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:930f5618-8968-af2a-efd4-cd6a493c1315",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:011850bd-5b7b-47bd-ee63-0d4a10f3a862",
  "kind": "theorem",
  "lexical_name": "firstPrimeDecayingMain_abs_le",
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
  "slug": "firstprimedecayingmain-abs-le--24e723f464cc3a7eb1d32ba5",
  "source": {
    "blob": "b111b688992e3b15c161c4b605b22d6dbb11d6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24e723f464cc3a7eb1d32ba5415e700d8c87175cb8b07fd701cb2fe59b8fdea4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011850bd-5b7b-47bd-ee63-0d4a10f3a862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeDecayingMain_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |firstPrimeDecayingMain A| ≤ 2 := by
  have h0 : 0 ≤ 2 * A := by linarith
  have he : Continuous (fun u : ℝ => Real.exp (-u / 2)) :=
    Real.continuous_exp.comp (continuous_neg.div_const 2)
  have hf := firstPrimeDecayingMain_intervalIntegrable A hA
  have hftc : ∀ u ∈ uIcc (0 : ℝ) (2 * A),
      HasDerivAt (fun u : ℝ => -2 * Real.exp (-u / 2)) (Real.exp (-u / 2)) u := by
    intro u _
    apply (((((hasDerivAt_id u).neg).div_const 2).exp).const_mul (-2)).congr_deriv
    change -2 * (Real.exp (-u / 2) * ((-1 : ℝ) / 2)) = Real.exp (-u / 2)
    ring
  have hi : (∫ u in 0..2 * A, Real.exp (-u / 2)) = 2 - 2 * Real.exp (-A) := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hftc (he.intervalIntegrable _ _)]
    have hx : -(2 * A) / 2 = -A := by ring
    simp only [hx, neg_zero, zero_div, Real.exp_zero]
    ring
  unfold firstPrimeDecayingMain
  calc
    _ ≤ ∫ u in 0..2 * A, |Real.exp (-u / 2) *
        sourceCorrelation explicitSecondDerivative A u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := fun u => Real.exp (-u / 2) *
          sourceCorrelation explicitSecondDerivative A u) h0
    _ ≤ ∫ u in 0..2 * A, Real.exp (-u / 2) := by
      apply intervalIntegral.integral_mono_on h0
        (by simpa only [Real.norm_eq_abs] using hf.norm) (he.intervalIntegrable _ _)
      intro u _
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      exact mul_le_of_le_one_right (Real.exp_pos _).le
        (EstimateCorrelation.actual_correlation_abs_le_one A u hA)
    _ ≤ 2 := by rw [hi]; nlinarith [Real.exp_pos (-A)]

/-- The exact derivative bound still carries the exponential weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant12b2346acad20c7dd61d438b106959c04f937e8792089eb8ae3eb533cceee6ef.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b111b688992e3b15c161c4b605b22d6dbb11d6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
