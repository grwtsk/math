# actual_empty_prefix_variance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05ee6289-1139-64a2-1a77-08fa01f00024",
  "kind": "theorem",
  "lexical_name": "actual_empty_prefix_variance_lower",
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
  "slug": "actual-empty-prefix-variance-lower--a49d4756f0ff9889ae18c19f",
  "source": {
    "blob": "ec039ebef3e61d9c4ab0592abd092e401cfe4290",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49d4756f0ff9889ae18c19ffb445cb9cc730b6c00043e9b95e4a8327f176d8e",
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

Occurrence: `result:05ee6289-1139-64a2-1a77-08fa01f00024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_empty_prefix_variance_lower (Y : ℝ) :
    (1 / 50 : ℝ) ≤ ∫ x in (1 : ℝ)..2, actualCenteredBDensity Y x := by
  have he : (∫ x in (1 : ℝ)..2, actualCenteredBDensity Y x) =
      ∫ x in (1 : ℝ)..2, (-mangoldtLogError (Real.log Y) - Real.log x) ^ 2 := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by norm_num)
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    have hlog : Real.log x < Real.log 2 :=
      (Real.log_lt_log_iff hp (by norm_num : (0 : ℝ) < 2)).mpr hx.2
    unfold actualCenteredBDensity
    rw [mangoldtLogError_below_first_atom hlog]
    ring
  rw [he, exact_log_variance]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl7 : Real.log (2 : ℝ) ≤ (7 / 10 : ℝ) := by
    linarith [Real.log_two_lt_d9]
  have hs := mul_self_le_mul_self hl0 hl7
  nlinarith [sq_nonneg (-mangoldtLogError (Real.log Y) - (2 * Real.log 2 - 1))]

/-- This is a positive actual second-moment floor, not a signed-target divergence claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant02c8e90ca4511f0973659944c58778f34622d410ff4f2f3c6398f2be07f96c5b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec039ebef3e61d9c4ab0592abd092e401cfe4290` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
