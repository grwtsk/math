# setLIntegral_tilted'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a77d80e74ed9d0096077c531a77dda5c728e46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcfe46e4-9345-5b3f-b6e5-1d177e78d9ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0faf63d9-ba59-d646-4050-fab2a52aaa63",
  "kind": "lemma",
  "lexical_name": "setLIntegral_tilted'",
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
  "slug": "setlintegral-tilted--953312785b3ccc7a5c55fa25",
  "source": {
    "blob": "b2a77d80e74ed9d0096077c531a77dda5c728e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953312785b3ccc7a5c55fa251b0eac65d5df0f7e542b4aa652a003d5bac0afa9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0faf63d9-ba59-d646-4050-fab2a52aaa63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setLIntegral_tilted' (f : α → ℝ) (g : α → ℝ≥0∞) {s : Set α} (hs : MeasurableSet s) :
    ∫⁻ x in s, g x ∂(μ.tilted f)
      = ∫⁻ x in s, ENNReal.ofReal (exp (f x) / ∫ x, exp (f x) ∂μ) * g x ∂μ := by
  by_cases hf : AEMeasurable f μ
  · rw [Measure.tilted, setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀]
    · simp only [Pi.mul_apply]
    · refine AEMeasurable.restrict ?_
      exact ((measurable_exp.comp_aemeasurable hf).div_const _).ennreal_ofReal
    · exact hs
    · filter_upwards
      simp only [ENNReal.ofReal_lt_top, implies_true]
  · have hf' : ¬ Integrable (fun x ↦ exp (f x)) μ := by
      exact fun h ↦ hf (aemeasurable_of_aemeasurable_exp h.1.aemeasurable)
    simp only [hf, not_false_eq_true, tilted_of_not_aemeasurable, Measure.restrict_zero,
      lintegral_zero_measure]
    rw [integral_undef hf']
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a77d80e74ed9d0096077c531a77dda5c728e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
