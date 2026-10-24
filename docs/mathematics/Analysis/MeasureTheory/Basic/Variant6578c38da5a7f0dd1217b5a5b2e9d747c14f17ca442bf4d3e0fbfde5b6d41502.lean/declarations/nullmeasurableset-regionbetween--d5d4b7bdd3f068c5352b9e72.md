# nullMeasurableSet_regionBetween

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:570bd9a5-c10f-44d8-1b78-3a2ae2e95578",
  "kind": "lemma",
  "lexical_name": "nullMeasurableSet_regionBetween",
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
  "slug": "nullmeasurableset-regionbetween--d5d4b7bdd3f068c5352b9e72",
  "source": {
    "blob": "3b07f9e776b5119e22ac0ac9c3289c3c6eda1e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 564,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5d4b7bdd3f068c5352b9e720ca4c862846fdffbfc66946a97fa7ada48744f18",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:570bd9a5-c10f-44d8-1b78-3a2ae2e95578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nullMeasurableSet_regionBetween (μ : Measure α)
    {f g : α → ℝ} (f_mble : AEMeasurable f μ) (g_mble : AEMeasurable g μ)
    {s : Set α} (s_mble : NullMeasurableSet s μ) :
    NullMeasurableSet {p : α × ℝ | p.1 ∈ s ∧ p.snd ∈ Ioo (f p.fst) (g p.fst)} (μ.prod volume) := by
  refine NullMeasurableSet.inter
          (s_mble.preimage quasiMeasurePreserving_fst) (NullMeasurableSet.inter ?_ ?_)
  · exact nullMeasurableSet_lt (by fun_prop) measurable_snd.aemeasurable
  · exact nullMeasurableSet_lt measurable_snd.aemeasurable (by fun_prop)

/-- The region between two a.e.-measurable functions on a null-measurable set is null-measurable;
a version for the region together with the graph of the upper function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b07f9e776b5119e22ac0ac9c3289c3c6eda1e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
