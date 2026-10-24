# actualDampedXiSquare_logarithmic_deficiency_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ea3adc-056b-27fa-1a6f-6064e8f15cf1",
  "kind": "theorem",
  "lexical_name": "actualDampedXiSquare_logarithmic_deficiency_abs_le",
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
  "slug": "actualdampedxisquare-logarithmic-deficiency-abs-le--2cef05262a69218036470229",
  "source": {
    "blob": "788497dfb1938c844217ad7019b8b1abf827fb24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant85f30772dd925c313aefe64be58618d73badbbe3e7019eb8b58c1ac6c71345b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cef05262a692180364702294a7ca27ab1567979108d83a9c557d9e72346e671",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant85f30772dd925c313aefe64be58618d73badbbe3e7019eb8b58c1ac6c71345b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ea3adc-056b-27fa-1a6f-6064e8f15cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiSquare_logarithmic_deficiency_abs_le {Y : ℝ} (hY : 7 ≤ Y) :
    |actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
      actualDampedXiCompactSevenCorrection Y| ≤
        2 * (Real.log 4 + 4 + Real.log 2) +
          4 * RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant := by
  have ht : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) hY
  have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht
  rw [← actualDampedXiFinitePrimitive_eq_compact_square hY,
    abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  calc
    _ ≤ (1 / 2 : ℝ) * actualDampedXiFiniteBudget :=
      mul_le_mul_of_nonneg_left hJ (by norm_num)
    _ = _ := by unfold actualDampedXiFiniteBudget; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiCompactSquareBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant85f30772dd925c313aefe64be58618d73badbbe3e7019eb8b58c1ac6c71345b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant85f30772dd925c313aefe64be58618d73badbbe3e7019eb8b58c1ac6c71345b3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788497dfb1938c844217ad7019b8b1abf827fb24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
