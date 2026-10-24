# criticalMangoldtWork_eq_head_add_remaining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ca48d2-8074-0536-f73e-b08d4888b213",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_eq_head_add_remaining",
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
  "slug": "criticalmangoldtwork-eq-head-add-remaining--acd3077cff7468f462b98688",
  "source": {
    "blob": "534477b4a97f3a9212295ce9b8b5af3ca6bf5c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acd3077cff7468f462b98688a954358ff348c1327c74ef56e20e66fb6b33866a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ca48d2-8074-0536-f73e-b08d4888b213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_eq_head_add_remaining (A : ℝ) (hA : 1 ≤ A) :
    criticalMangoldtWork A = firstAtomHeadWork A + remainingAtomWork A := by
  have hp : 0 < A := by linarith
  have hb : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hi0 := mangoldtLogError_mul_deriv_intervalIntegrable 0 (Real.log 2) hb
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  have hi1 := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    (by linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)])
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  exact (intervalIntegral.integral_add_adjacent_intervals hi0 hi1).symm

/-- A future signed remaining-tail witness pays only the fixed head budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variantdc5718f71f647ac3a7aece7e0b650651c2301478427b7def6d70ab4adb6b2786.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `534477b4a97f3a9212295ce9b8b5af3ca6bf5c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
