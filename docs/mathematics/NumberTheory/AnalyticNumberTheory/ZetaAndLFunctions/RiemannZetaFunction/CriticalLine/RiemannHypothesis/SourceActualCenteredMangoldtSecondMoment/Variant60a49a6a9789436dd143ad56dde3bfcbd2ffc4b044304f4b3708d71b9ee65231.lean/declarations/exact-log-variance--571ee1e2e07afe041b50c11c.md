# exact_log_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f731959-7311-5c03-ceb0-6703c40fefaa",
  "kind": "theorem",
  "lexical_name": "exact_log_variance",
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
  "slug": "exact-log-variance--571ee1e2e07afe041b50c11c",
  "source": {
    "blob": "a76ed8ae2910797dbbd4ccb346629d5f4b4ff509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant60a49a6a9789436dd143ad56dde3bfcbd2ffc4b044304f4b3708d71b9ee65231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571ee1e2e07afe041b50c11cd9e44a98dda39edb005d38de4b66fde68d1b09ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant60a49a6a9789436dd143ad56dde3bfcbd2ffc4b044304f4b3708d71b9ee65231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f731959-7311-5c03-ceb0-6703c40fefaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_log_variance (q : ℝ) :
    (∫ x in (1 : ℝ)..2, (q - Real.log x) ^ 2) =
      (q - (2 * Real.log 2 - 1)) ^ 2 + 1 - 2 * (Real.log 2) ^ 2 := by
  have hc : ContinuousOn (fun x : ℝ => (q - Real.log x) ^ 2) (Icc 1 2) := by
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact ((continuousAt_const.sub (Real.continuousAt_log hp.ne')).pow 2).continuousWithinAt
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x (hx : x ∈ uIcc (1 : ℝ) 2) => squareLogPrimitive_hasDerivAt q x (by
      rw [uIcc_of_le (by norm_num : (1 : ℝ) ≤ 2)] at hx
      linarith [hx.1])) (hc.intervalIntegrable_of_Icc (by norm_num))
  rw [hi]
  unfold squareLogPrimitive
  rw [Real.log_one]
  ring

/-- The actual empty-prefix cell cannot have vanishing variance after any constant centering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant60a49a6a9789436dd143ad56dde3bfcbd2ffc4b044304f4b3708d71b9ee65231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant60a49a6a9789436dd143ad56dde3bfcbd2ffc4b044304f4b3708d71b9ee65231.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76ed8ae2910797dbbd4ccb346629d5f4b4ff509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
