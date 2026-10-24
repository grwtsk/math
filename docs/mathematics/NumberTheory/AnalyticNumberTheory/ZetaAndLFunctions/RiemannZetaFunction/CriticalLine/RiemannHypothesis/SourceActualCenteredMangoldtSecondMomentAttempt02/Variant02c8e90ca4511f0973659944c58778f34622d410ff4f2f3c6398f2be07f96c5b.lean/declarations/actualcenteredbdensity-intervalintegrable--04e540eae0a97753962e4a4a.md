# actualCenteredBDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df872d94-b983-dc13-224d-c5c45cac4ae0",
  "kind": "theorem",
  "lexical_name": "actualCenteredBDensity_intervalIntegrable",
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
  "slug": "actualcenteredbdensity-intervalintegrable--04e540eae0a97753962e4a4a",
  "source": {
    "blob": "ec039ebef3e61d9c4ab0592abd092e401cfe4290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e540eae0a97753962e4a4a1dd74f2bac606005fb1a37c3da0ae4c05ae740ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df872d94-b983-dc13-224d-c5c45cac4ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredBDensity_intervalIntegrable (Y : ℝ) (hY : 2 ≤ Y) :
    IntervalIntegrable (actualCenteredBDensity Y) volume 1 Y := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2
  have hC : 0 ≤ C := by
    dsimp only [C]
    positivity
  have hg : Measurable (actualCenteredBDensity Y) := by
    exact (actual_weighted_error_measurable.sub measurable_const).pow_const 2
  have hi : IntervalIntegrable (fun _ : ℝ => (2 * C) ^ 2) volume 1 Y :=
    continuous_const.intervalIntegrable _ _
  apply hi.mono_fun' hg.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with x hx
  rw [uIoc_of_le (by linarith : (1 : ℝ) ≤ Y)] at hx
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx.1.le
  have hYlog : 0 ≤ Real.log Y := Real.log_nonneg (by linarith)
  have he : |mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y)| ≤ 2 * C := by
    have hxE := mangoldtLogError_abs_le (Real.log x) hxlog
    have hYE := mangoldtLogError_abs_le (Real.log Y) hYlog
    exact (abs_sub _ _).trans (by dsimp only [C]; linarith)
  rw [Real.norm_eq_abs, actualCenteredBDensity, abs_of_nonneg (sq_nonneg _)]
  have hs := (sq_le_sq₀ (abs_nonneg
    (mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y)))
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hC)).2 he
  simpa only [sq_abs] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec039ebef3e61d9c4ab0592abd092e401cfe4290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
