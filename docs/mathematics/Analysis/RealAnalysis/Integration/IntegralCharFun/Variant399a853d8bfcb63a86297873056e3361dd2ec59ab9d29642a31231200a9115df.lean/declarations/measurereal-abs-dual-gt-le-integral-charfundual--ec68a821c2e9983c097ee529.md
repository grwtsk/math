# measureReal_abs_dual_gt_le_integral_charFunDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68b8dd78-34c7-776b-4919-77a7e87dad32",
  "kind": "lemma",
  "lexical_name": "measureReal_abs_dual_gt_le_integral_charFunDual",
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
  "slug": "measurereal-abs-dual-gt-le-integral-charfundual--ec68a821c2e9983c097ee529",
  "source": {
    "blob": "85bfd5aa5bbdbf40bc9b7bc6db9f8ab6f5b9df28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant399a853d8bfcb63a86297873056e3361dd2ec59ab9d29642a31231200a9115df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec68a821c2e9983c097ee529a5b03080ec9c4151c0c24608164be3cebcd5a0d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant399a853d8bfcb63a86297873056e3361dd2ec59ab9d29642a31231200a9115df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68b8dd78-34c7-776b-4919-77a7e87dad32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measureReal_abs_dual_gt_le_integral_charFunDual {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {mE : MeasurableSpace E} [OpensMeasurableSpace E]
    {μ : Measure E} [IsProbabilityMeasure μ] (L : StrongDual ℝ E) {r : ℝ} (hr : 0 < r) :
    μ.real {x | r < |L x|} ≤ 2⁻¹ * r * ‖∫ t in -2 * r⁻¹..2 * r⁻¹, 1 - charFunDual μ (t • L)‖ := by
  convert! measureReal_abs_gt_le_integral_charFun (μ := μ.map L) hr with x
  · rw [map_measureReal_apply (by fun_prop)]
    · simp
    · exact MeasurableSet.preimage measurableSet_Ioi (by fun_prop)
  · rw [charFun_map_eq_charFunDual_smul]

/-- A bound on the measure of the set `{x | r < |⟪a, x⟫|}` in terms of the integral of
the characteristic function, for a probability measure on an inner product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant399a853d8bfcb63a86297873056e3361dd2ec59ab9d29642a31231200a9115df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant399a853d8bfcb63a86297873056e3361dd2ec59ab9d29642a31231200a9115df.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85bfd5aa5bbdbf40bc9b7bc6db9f8ab6f5b9df28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
