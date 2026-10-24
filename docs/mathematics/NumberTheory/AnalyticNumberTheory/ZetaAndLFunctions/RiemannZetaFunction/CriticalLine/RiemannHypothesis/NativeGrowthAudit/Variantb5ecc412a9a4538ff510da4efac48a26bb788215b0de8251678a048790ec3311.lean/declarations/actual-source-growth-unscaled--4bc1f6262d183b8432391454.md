# actual_source_growth_unscaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a79ca918-638f-a822-4a29-d62c4e60bb6b",
  "kind": "theorem",
  "lexical_name": "actual_source_growth_unscaled",
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
  "slug": "actual-source-growth-unscaled--4bc1f6262d183b8432391454",
  "source": {
    "blob": "240701abb55cb436646413e4e3adf56bccabcb03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeGrowthAudit/Variantb5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc1f6262d183b843239145411efe8d92ed4900b1ac6bf175d048d91a4aa03e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeGrowthAudit/Variantb5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a79ca918-638f-a822-4a29-d62c4e60bb6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_growth_unscaled (A : ℝ) (hA : 1 ≤ A) :
    |actualQ A| ≤
      2 * growthConstant * Real.exp A / ((4096 / 109395 : ℝ) * A ^ 9) := by
  have hApos : 0 < A := by linarith
  have hZpos := source_normalization_pos A hA
  have hC := growthConstant_nonneg
  have he := (Real.exp_pos A).le
  have h8 : 1 ≤ A ^ 8 := one_le_pow₀ hA
  have hn := weightedSource_growth A hA
  unfold weightedSource at hn
  rw [Complex.norm_real, Real.norm_eq_abs, abs_mul, abs_mul,
    abs_of_pos (pow_pos hApos 17), abs_of_pos hZpos] at hn
  apply (le_div_iff₀ (by positivity :
    0 < (4096 / 109395 : ℝ) * A ^ 9)).mpr
  have hs :
      A ^ 8 * (|actualQ A| * ((4096 / 109395 : ℝ) * A ^ 9)) ≤
        A ^ 8 * (2 * growthConstant * Real.exp A) := by
    calc
      _ = A ^ 17 * (4096 / 109395 : ℝ) * |actualQ A| := by ring
      _ ≤ A ^ 17 * sourceNormalization A * |actualQ A| := by
        gcongr
        exact normalization_lower A
      _ ≤ growthConstant * (1 + A ^ 8) * Real.exp A := hn
      _ ≤ growthConstant * (2 * A ^ 8) * Real.exp A := by
        gcongr
        linarith
      _ = A ^ 8 * (2 * growthConstant * Real.exp A) := by ring
  exact (mul_le_mul_left (pow_pos hApos 8)).mp hs

end
end FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview

set_option pp.all true
set_option pp.universes true
set_option pp.proofs true
set_option pp.fullNames true
set_option pp.maxDepth 100000
set_option pp.width 100000
#print FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.normalization_lower
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.normalization_lower
#print FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.actual_source_growth_unscaled
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaNativeGrowthReview.actual_source_growth_unscaled
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeGrowthAudit/Variantb5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeGrowthAudit/Variantb5ecc412a9a4538ff510da4efac48a26bb788215b0de8251678a048790ec3311.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240701abb55cb436646413e4e3adf56bccabcb03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
