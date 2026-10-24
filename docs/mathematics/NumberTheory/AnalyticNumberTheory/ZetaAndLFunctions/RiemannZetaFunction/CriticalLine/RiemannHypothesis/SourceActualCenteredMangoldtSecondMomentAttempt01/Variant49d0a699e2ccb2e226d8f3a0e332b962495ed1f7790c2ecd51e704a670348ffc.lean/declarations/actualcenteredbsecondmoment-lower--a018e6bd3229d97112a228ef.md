# actualCenteredBSecondMoment_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d848f328-ad4c-d644-9650-d3dff0089fe7",
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
  "slug": "actualcenteredbsecondmoment-lower--a018e6bd3229d97112a228ef",
  "source": {
    "blob": "e9173b9948c8c927e8ae17ca61160647d6c25628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt01/Variant49d0a699e2ccb2e226d8f3a0e332b962495ed1f7790c2ecd51e704a670348ffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a018e6bd3229d97112a228efc60e8880dde504da17b1a08736eec984c6a477e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt01/Variant49d0a699e2ccb2e226d8f3a0e332b962495ed1f7790c2ecd51e704a670348ffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d848f328-ad4c-d644-9650-d3dff0089fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt01/Variant49d0a699e2ccb2e226d8f3a0e332b962495ed1f7790c2ecd51e704a670348ffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMomentAttempt01/Variant49d0a699e2ccb2e226d8f3a0e332b962495ed1f7790c2ecd51e704a670348ffc.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9173b9948c8c927e8ae17ca61160647d6c25628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
