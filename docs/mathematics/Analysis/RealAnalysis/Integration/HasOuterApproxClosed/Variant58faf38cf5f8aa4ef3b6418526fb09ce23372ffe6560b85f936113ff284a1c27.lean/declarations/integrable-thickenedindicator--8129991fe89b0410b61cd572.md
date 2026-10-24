# integrable_thickenedIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24acba94dd117c99ad39f86567ead16935981d85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:254eb379-d49d-8f46-4045-13ada8334881",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eec74e5-248a-61f1-bbf3-356ff27e03fb",
  "kind": "lemma",
  "lexical_name": "integrable_thickenedIndicator",
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
  "slug": "integrable-thickenedindicator--8129991fe89b0410b61cd572",
  "source": {
    "blob": "24acba94dd117c99ad39f86567ead16935981d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8129991fe89b0410b61cd5726416cf15a6c748e74e0f711b12a5977b89b0efd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eec74e5-248a-61f1-bbf3-356ff27e03fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_thickenedIndicator {Ω : Type*} {mΩ : MeasurableSpace Ω}
    [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] {μ : Measure Ω} [IsFiniteMeasure μ] (F : Set Ω)
    {δ : ℝ} (δ_pos : 0 < δ) :
    Integrable (fun ω ↦ (thickenedIndicator δ_pos F ω : ℝ)) μ := by
  refine .of_bound (by fun_prop) 1 (ae_of_all _ fun x ↦ ?_)
  simpa using thickenedIndicator_le_one δ_pos F x

/-- The integrals of thickened indicators of a closed set against a finite measure tend to the
measure of the closed set if the thickening radii tend to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24acba94dd117c99ad39f86567ead16935981d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
