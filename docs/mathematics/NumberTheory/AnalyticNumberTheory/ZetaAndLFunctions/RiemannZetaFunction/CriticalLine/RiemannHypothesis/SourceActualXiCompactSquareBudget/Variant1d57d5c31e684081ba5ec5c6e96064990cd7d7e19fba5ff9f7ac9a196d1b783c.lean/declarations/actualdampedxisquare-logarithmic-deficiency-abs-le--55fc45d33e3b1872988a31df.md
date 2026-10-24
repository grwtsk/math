# actualDampedXiSquare_logarithmic_deficiency_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:402ee84c-7439-5a3b-b7c9-55727c493dc0",
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
  "slug": "actualdampedxisquare-logarithmic-deficiency-abs-le--55fc45d33e3b1872988a31df",
  "source": {
    "blob": "efa2bc2bdc20379517271e69713d480d6c92c09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant1d57d5c31e684081ba5ec5c6e96064990cd7d7e19fba5ff9f7ac9a196d1b783c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fc45d33e3b1872988a31df390d32c20cd76c5c405f6da24369f8a129f547a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant1d57d5c31e684081ba5ec5c6e96064990cd7d7e19fba5ff9f7ac9a196d1b783c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:402ee84c-7439-5a3b-b7c9-55727c493dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant1d57d5c31e684081ba5ec5c6e96064990cd7d7e19fba5ff9f7ac9a196d1b783c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiCompactSquareBudget/Variant1d57d5c31e684081ba5ec5c6e96064990cd7d7e19fba5ff9f7ac9a196d1b783c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efa2bc2bdc20379517271e69713d480d6c92c09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
