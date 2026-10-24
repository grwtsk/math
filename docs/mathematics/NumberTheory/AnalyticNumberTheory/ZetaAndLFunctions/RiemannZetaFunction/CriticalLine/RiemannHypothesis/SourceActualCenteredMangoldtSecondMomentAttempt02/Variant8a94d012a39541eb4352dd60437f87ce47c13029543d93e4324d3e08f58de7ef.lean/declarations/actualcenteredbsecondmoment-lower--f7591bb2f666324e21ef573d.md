# actualCenteredBSecondMoment_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:789e4a76-7ba6-a704-bc6b-a2b7d3b2f684",
  "kind": "theorem",
  "lexical_name": "actualCenteredBSecondMoment_lower",
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
  "slug": "actualcenteredbsecondmoment-lower--f7591bb2f666324e21ef573d",
  "source": {
    "blob": "bdb3d2ad4d1f990272419a987fe579dcdad43f5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant8a94d012a39541eb4352dd60437f87ce47c13029543d93e4324d3e08f58de7ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7591bb2f666324e21ef573daa4080e118701cda5c8ff1e2a540aecf2c8af2ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant8a94d012a39541eb4352dd60437f87ce47c13029543d93e4324d3e08f58de7ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:789e4a76-7ba6-a704-bc6b-a2b7d3b2f684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredBSecondMoment_lower (Y : ℝ) (hY : 2 ≤ Y) :
    (1 / 50 : ℝ) ≤ actualCenteredBSecondMoment Y := by
  have hm := intervalIntegral.integral_mono_interval (μ := volume) le_rfl
    (by norm_num : (1 : ℝ) ≤ 2) hY
    (f := actualCenteredBDensity Y)
    (Filter.Eventually.of_forall (fun x => sq_nonneg
      (mangoldtLogError (Real.log x) - mangoldtLogError (Real.log Y))))
    (actualCenteredBDensity_intervalIntegrable Y hY)
  exact (actual_empty_prefix_variance_lower Y).trans hm

end FormalResearch.RiemannHypothesis.SourceActualCenteredMangoldtSecondMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant8a94d012a39541eb4352dd60437f87ce47c13029543d93e4324d3e08f58de7ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt02/Variant8a94d012a39541eb4352dd60437f87ce47c13029543d93e4324d3e08f58de7ef.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb3d2ad4d1f990272419a987fe579dcdad43f5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
