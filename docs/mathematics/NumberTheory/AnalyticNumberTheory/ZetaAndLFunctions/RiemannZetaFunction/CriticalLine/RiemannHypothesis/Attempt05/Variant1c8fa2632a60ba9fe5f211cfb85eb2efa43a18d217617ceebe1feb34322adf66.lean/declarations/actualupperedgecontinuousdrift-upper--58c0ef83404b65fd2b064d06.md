# actualUpperEdgeContinuousDrift_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:503a24e4-677d-392a-b63c-b5288bc02583",
  "kind": "theorem",
  "lexical_name": "actualUpperEdgeContinuousDrift_upper",
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
  "slug": "actualupperedgecontinuousdrift-upper--58c0ef83404b65fd2b064d06",
  "source": {
    "blob": "c9f3d4a19bc2cbff578dc0cd317bcb84a7660f07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 297,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c0ef83404b65fd2b064d06c699fb95a0e02b3e7157908ee0a07cc70fb7389f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:503a24e4-677d-392a-b63c-b5288bc02583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEdgeContinuousDrift_upper {A : ℝ} (hA : 91 ≤ A) :
    actualUpperEdgeContinuousDrift A ≤
      -(200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) := by
  have hZ := source_normalization_pos A (by linarith : 1 ≤ A)
  have hd : 0 < A ^ 9 * sourceNormalization A := by positivity
  have hp : 0 < A := by linarith
  have hb : (∫ t in (2 * A - 1)..2 * A,
      -(400 * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A)) * (2 * A - t) ^ 5) =
      -(200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) := by
    rw [intervalIntegral.integral_const_mul,
      intervalIntegral.integral_comp_sub_left (fun t : ℝ => t ^ 5) (2 * A)]
    norm_num [intervalIntegral.integral_pow]
    ring
  rw [← hb]
  unfold actualUpperEdgeContinuousDrift
  apply intervalIntegral.integral_mono_on (by linarith)
    ((continuous_const.sub continuous_id).intervalIntegrable.mul_continuousOn
      (critical_kernel_continuous A hp).continuousOn)
    (by apply Continuous.intervalIntegrable; fun_prop)
  intro t ht
  have hh : 0 ≤ 2 * A - t := by linarith [ht.2]
  have hh1 : 2 * A - t ≤ 1 := by linarith [ht.1]
  have hk := actualCriticalKernel_edge_upper hA hh hh1
  rw [show 2 * A - (2 * A - t) = t by ring] at hk
  have he : Real.exp (A - 1 / 2) ≤ Real.exp (t / 2) :=
    Real.exp_le_exp.mpr (by linarith [ht.1])
  have hn : -400 * (2 * A - t) ^ 4 / (A ^ 9 * sourceNormalization A) ≤ 0 := by
    apply div_nonpos_of_nonpos_of_nonneg
    · nlinarith [pow_nonneg hh 4]
    · positivity
  have h0 := mul_le_mul_of_nonneg_left hk
    (mul_nonneg hh (Real.exp_pos (t / 2)).le)
  have h1 := mul_le_mul_of_nonpos_right he hn
  have h2 := mul_le_mul_of_nonneg_left h1 hh
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalEdgeSector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f3d4a19bc2cbff578dc0cd317bcb84a7660f07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
