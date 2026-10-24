# sourceCorrelation_two_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2902f4e8-25a0-ead4-7937-b66c4d01d790",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_two_pos",
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
  "slug": "sourcecorrelation-two-pos--28357ed4ef511c43ba633a87",
  "source": {
    "blob": "e0bb2eb844de326150773721134ab1e76ea76d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variantd2dc724c3c2f7bea4750a716956d5aadfcc61f1091e164f92d36e6bc2d5d476b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28357ed4ef511c43ba633a8735c6afaaad2ab9111a3625c5d8bd4a6d8dc6ee3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variantd2dc724c3c2f7bea4750a716956d5aadfcc61f1091e164f92d36e6bc2d5d476b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2902f4e8-25a0-ead4-7937-b66c4d01d790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_two_pos {t : ℝ} (ht : 3 ≤ t) (ht4 : t < 4) :
    0 < sourceCorrelation explicitSecondDerivative 2 t := by
  let f : ℝ → ℝ := fun x => normalizedTest explicitSecondDerivative 2 x *
    normalizedTest explicitSecondDerivative 2 (x - t)
  have hcq := (normalizedTest_contDiff 2 (by norm_num)).continuous
  have hc : Continuous f := hcq.mul (hcq.comp (continuous_id.sub continuous_const))
  have hs : HasCompactSupport f := (normalizedTest_hasCompactSupport 2 (by norm_num)).mul_right
  have hp : 0 ≤ f := by
    intro x
    by_cases hx : 2 ≤ |x|
    · simp [f, normalizedTest_zero_of_le_abs 2 x (by norm_num) hx]
    by_cases hxt : 2 ≤ |x - t|
    · simp [f, normalizedTest_zero_of_le_abs 2 (x - t) (by norm_num) hxt]
    have hx2 : |x| < 2 := lt_of_not_ge hx
    have hxt2 : |x - t| < 2 := lt_of_not_ge hxt
    have hx1 : 1 ≤ |x| := by
      have h := (abs_lt.mp hxt2).1
      exact (by linarith : 1 ≤ x).trans (le_abs_self x)
    have hxt1 : 1 ≤ |x - t| := by
      have h := (abs_lt.mp hx2).2
      have hn : x - t ≤ -1 := by linarith
      rw [abs_of_nonpos (by linarith : x - t ≤ 0)]
      linarith
    exact mul_nonneg (normalizedTest_two_nonneg hx1) (normalizedTest_two_nonneg hxt1)
  have hf0 : f (t / 2) ≠ 0 := by
    have htm : 1 ≤ |t / 2| := by rw [abs_of_nonneg (by linarith)]; linarith
    have htp : |t / 2| < 2 := by rw [abs_of_nonneg (by linarith)]; linarith
    have hnm : 1 ≤ |t / 2 - t| := by rw [abs_of_nonpos (by linarith)]; linarith
    have hnp : |t / 2 - t| < 2 := by rw [abs_of_nonpos (by linarith)]; linarith
    exact (mul_pos (normalizedTest_two_pos htm htp) (normalizedTest_two_pos hnm hnp)).ne'
  exact hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hp hf0

/-- Exact elementary bounds put the product of the actual atoms 5 and 7 in that band. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variantd2dc724c3c2f7bea4750a716956d5aadfcc61f1091e164f92d36e6bc2d5d476b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeKernel/Variantd2dc724c3c2f7bea4750a716956d5aadfcc61f1091e164f92d36e6bc2d5d476b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0bb2eb844de326150773721134ab1e76ea76d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
