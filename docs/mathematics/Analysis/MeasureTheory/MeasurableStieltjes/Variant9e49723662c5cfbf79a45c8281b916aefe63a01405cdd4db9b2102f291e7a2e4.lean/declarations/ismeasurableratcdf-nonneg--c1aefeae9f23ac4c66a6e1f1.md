# IsMeasurableRatCDF.nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a2ff9cea7566e0c24d4464f6e329f6e8577e89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98e9f2bd-10fd-64d2-3afb-fde46f1d941e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc7601c9-fbd0-9d0a-383b-606827e3f031",
  "kind": "lemma",
  "lexical_name": "IsMeasurableRatCDF.nonneg",
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
  "slug": "ismeasurableratcdf-nonneg--c1aefeae9f23ac4c66a6e1f1",
  "source": {
    "blob": "b2a2ff9cea7566e0c24d4464f6e329f6e8577e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 138,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1aefeae9f23ac4c66a6e1f1b55b0f3c4347d3603b927ae70d93cae2b2fffb94",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc7601c9-fbd0-9d0a-383b-606827e3f031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMeasurableRatCDF.nonneg {f : α → ℚ → ℝ} (hf : IsMeasurableRatCDF f) (a : α) (q : ℚ) :
    0 ≤ f a q :=
  Monotone.le_of_tendsto (hf.isRatStieltjesPoint a).mono
    (hf.isRatStieltjesPoint a).tendsto_atBot_zero q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a2ff9cea7566e0c24d4464f6e329f6e8577e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
