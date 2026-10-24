# measureReal_abs_dual_gt_le_integral_charFunDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fccd92228edb18396477fb6b2a2929d0dccd73fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78a24c824578db880717e8b486b648a436c7768da93e3df2268153ddb042dc4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1a30dd4-0510-53f7-62cd-c4e7f27f5197",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2637dc21-6aa0-a2b2-e058-4835c55297a5",
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
  "slug": "measurereal-abs-dual-gt-le-integral-charfundual--9e2f10a457f47fe1fd28c298",
  "source": {
    "blob": "fccd92228edb18396477fb6b2a2929d0dccd73fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant78a24c824578db880717e8b486b648a436c7768da93e3df2268153ddb042dc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2f10a457f47fe1fd28c2986a657522d4733ce0cb710eedf9ae7bac84ba950a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant78a24c824578db880717e8b486b648a436c7768da93e3df2268153ddb042dc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2637dc21-6aa0-a2b2-e058-4835c55297a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant78a24c824578db880717e8b486b648a436c7768da93e3df2268153ddb042dc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCharFun/Variant78a24c824578db880717e8b486b648a436c7768da93e3df2268153ddb042dc4e.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fccd92228edb18396477fb6b2a2929d0dccd73fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
