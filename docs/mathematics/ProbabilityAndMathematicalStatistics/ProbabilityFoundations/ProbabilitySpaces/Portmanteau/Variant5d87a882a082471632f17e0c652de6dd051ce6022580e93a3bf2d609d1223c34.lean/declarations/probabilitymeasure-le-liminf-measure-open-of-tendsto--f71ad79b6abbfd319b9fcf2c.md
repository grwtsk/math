# ProbabilityMeasure.le_liminf_measure_open_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eae51b7d85b1a0380f70d247544ca9f1d09da059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1475c49f-0070-2cf2-a0cd-bda75796a86e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:620a8680-3687-d6be-54ea-0f145dd16582",
  "kind": "theorem",
  "lexical_name": "ProbabilityMeasure.le_liminf_measure_open_of_tendsto",
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
  "slug": "probabilitymeasure-le-liminf-measure-open-of-tendsto--f71ad79b6abbfd319b9fcf2c",
  "source": {
    "blob": "eae51b7d85b1a0380f70d247544ca9f1d09da059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 396,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f71ad79b6abbfd319b9fcf2c3ca65cd32cc86b42af05a963a827ca830603d8ba",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:620a8680-3687-d6be-54ea-0f145dd16582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProbabilityMeasure.le_liminf_measure_open_of_tendsto {Ω ι : Type*} {L : Filter ι}
    [MeasurableSpace Ω] [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] {μ : ProbabilityMeasure Ω}
    {μs : ι → ProbabilityMeasure Ω} (μs_lim : Tendsto μs L (𝓝 μ)) {G : Set Ω} (G_open : IsOpen G) :
    (μ : Measure Ω) G ≤ L.liminf fun i => (μs i : Measure Ω) G :=
  haveI h_closeds : ∀ F, IsClosed F → (L.limsup fun i ↦ (μs i : Measure Ω) F) ≤ (μ : Measure Ω) F :=
    fun _ F_closed => ProbabilityMeasure.limsup_measure_closed_le_of_tendsto μs_lim F_closed
  le_measure_liminf_of_limsup_measure_compl_le G_open.measurableSet
    (h_closeds _ (isClosed_compl_iff.mpr G_open))
#align measure_theory.probability_measure.le_liminf_measure_open_of_tendsto MeasureTheory.ProbabilityMeasure.le_liminf_measure_open_of_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae51b7d85b1a0380f70d247544ca9f1d09da059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
