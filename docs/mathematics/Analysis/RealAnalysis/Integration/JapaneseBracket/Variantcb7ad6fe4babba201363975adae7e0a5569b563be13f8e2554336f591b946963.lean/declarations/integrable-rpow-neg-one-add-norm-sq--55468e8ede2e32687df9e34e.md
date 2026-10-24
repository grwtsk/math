# integrable_rpow_neg_one_add_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53624264e17f9f26edf0fb1ce109889ad416f4d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52451588-a2e2-e392-0c70-d4327d2ca9ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4377d1c2-dcdf-fed9-0f83-022f9e768517",
  "kind": "theorem",
  "lexical_name": "integrable_rpow_neg_one_add_norm_sq",
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
  "slug": "integrable-rpow-neg-one-add-norm-sq--55468e8ede2e32687df9e34e",
  "source": {
    "blob": "53624264e17f9f26edf0fb1ce109889ad416f4d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55468e8ede2e32687df9e34e0ed6c0f771e918d24de3375c18bed7b9325bca7e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4377d1c2-dcdf-fed9-0f83-022f9e768517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_rpow_neg_one_add_norm_sq [MeasureSpace E] [BorelSpace E]
    [(@volume E _).IsAddHaarMeasure] {r : ℝ} (hnr : (finrank ℝ E : ℝ) < r) :
    Integrable fun x : E => ((1 : ℝ) + ‖x‖ ^ 2) ^ (-r / 2) := by
  have hr : 0 < r := lt_of_le_of_lt (finrank ℝ E).cast_nonneg hnr
  refine ((integrable_one_add_norm hnr).const_mul <| (2 : ℝ) ^ (r / 2)).mono'
    ?_ (eventually_of_forall fun x => ?_)
  · -- porting note: was `measurability`
    exact (((measurable_id.norm.pow_const _).const_add _).pow_const _).aestronglyMeasurable
  refine (abs_of_pos ?_).trans_le (rpow_neg_one_add_norm_sq_le x hr)
  positivity
#align integrable_rpow_neg_one_add_norm_sq integrable_rpow_neg_one_add_norm_sq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53624264e17f9f26edf0fb1ce109889ad416f4d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
