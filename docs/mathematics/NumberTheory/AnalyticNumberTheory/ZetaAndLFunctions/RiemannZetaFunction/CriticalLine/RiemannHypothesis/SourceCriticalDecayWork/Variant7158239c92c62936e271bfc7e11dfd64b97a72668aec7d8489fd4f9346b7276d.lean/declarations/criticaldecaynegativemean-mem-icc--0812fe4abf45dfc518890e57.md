# criticalDecayNegativeMean_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da7700c1-ea24-1a3b-e0f0-18d4d8c59919",
  "kind": "theorem",
  "lexical_name": "criticalDecayNegativeMean_mem_Icc",
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
  "slug": "criticaldecaynegativemean-mem-icc--0812fe4abf45dfc518890e57",
  "source": {
    "blob": "83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0812fe4abf45dfc518890e57421e8a9865fef48052cc8c5d5efc1e67b641363c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7700c1-ea24-1a3b-e0f0-18d4d8c59919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDecayNegativeMean_mem_Icc {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ criticalDecayNegativeMean A ∧ criticalDecayNegativeMean A ≤ 1 := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (fun u => criticalDecay u * negativeSlope A u)
      volume 0 (2*A) := by
    simpa only [Pi.mul_apply] using
      (criticalDecay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
        (μ := volume) 0 (2*A)
  constructor
  · apply div_nonneg
    · exact intervalIntegral.integral_nonneg (by linarith)
        (fun u _ => mul_nonneg (Real.exp_pos _).le (negativeSlope_nonneg A u))
    · exact (negativeMass_pos hA).le
  · unfold criticalDecayNegativeMean
    apply (div_le_iff₀ (negativeMass_pos hA)).mpr
    have hb : (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) ≤
        ∫ u in 0..2*A, negativeSlope A u := by
      apply intervalIntegral.integral_mono_on (by linarith) hi (negativeSlope_intervalIntegrable hp)
      intro u hu
      have hh : criticalDecay u ≤ 1 := by
        unfold criticalDecay
        rw [Real.exp_le_one_iff]
        linarith [hu.1]
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right hh (negativeSlope_nonneg A u)
    simpa only [one_mul, negativeMass] using hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant7158239c92c62936e271bfc7e11dfd64b97a72668aec7d8489fd4f9346b7276d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c1d8b7cfed567a39f63c5f3a8fe899ad7cc45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
