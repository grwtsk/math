# _root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.ContinuousOn.stronglyMeasurable_of_countable_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d74f341a-948a-7bf8-83e9-f7d97008d091",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.ContinuousOn.stronglyMeasurable_of_countable_compl",
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
  "slug": "root-grwtsk-analysis-measuretheory-stronglymeasurable-variantbc488ed7d72--4d3ec2e01e2512bfbf9903cc",
  "source": {
    "blob": "d70e47d4c025a18eace67bec5f4b487bf6dc01ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 845,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d3ec2e01e2512bfbf9903ccbba1e748a476d948adf5117a4a77b94d6c469355",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d74f341a-948a-7bf8-83e9-f7d97008d091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.ContinuousOn.stronglyMeasurable_of_countable_compl [MeasurableSpace α]
    [TopologicalSpace α] [OpensMeasurableSpace α] [MeasurableSingletonClass α]
    [TopologicalSpace β] [PseudoMetrizableSpace β]
    [h : SecondCountableTopologyEither α β] {f : α → β} {s : Set α} (hf : ContinuousOn f s)
    (hs : (sᶜ).Countable) : StronglyMeasurable f := by
  classical
  have h's : MeasurableSet s := by simpa using hs.measurableSet.compl
  have : f = fun x ↦ if hx : x ∈ s then f (⟨x, hx⟩ : s) else f (⟨x, hx⟩ : (sᶜ : Set α)) := by simp
  rw [this]
  apply StronglyMeasurable.dite (f := fun x ↦ f x) (g := fun x ↦ f x) ?_ ?_ h's
  · have : SecondCountableTopologyEither s β := by cases h.out <;> infer_instance
    exact (continuousOn_iff_continuous_domRestrict.1 hf).stronglyMeasurable
  · have := hs.to_subtype
    exact MeasureTheory.StronglyMeasurable.of_discrete

/-- If a function is continuous outside of a countable set, then it is strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70e47d4c025a18eace67bec5f4b487bf6dc01ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
