# _root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.MeasurableEmbedding.stronglyMeasurable_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4165c66f-e1b5-6246-20a5-8675a3d6b0e1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.MeasurableEmbedding.stronglyMeasurable_extend",
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
  "slug": "root-grwtsk-analysis-measuretheory-stronglymeasurable-variantbc488ed7d72--70ed3ada78ad4da591f8fd70",
  "source": {
    "blob": "d70e47d4c025a18eace67bec5f4b487bf6dc01ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 872,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ed3ada78ad4da591f8fd70fd0244b7cff45939ba41f0fda700ec249598cccc",
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

Occurrence: `result:4165c66f-e1b5-6246-20a5-8675a3d6b0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.StronglyMeasurable.Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.MeasurableEmbedding.stronglyMeasurable_extend {f : α → β} {g : α → γ} {g' : γ → β}
    {mα : MeasurableSpace α} {mγ : MeasurableSpace γ} [TopologicalSpace β]
    (hg : MeasurableEmbedding g) (hf : StronglyMeasurable f) (hg' : StronglyMeasurable g') :
    StronglyMeasurable (Function.extend g f g') := by
  refine ⟨fun n => SimpleFunc.extend (hf.approx n) g hg (hg'.approx n), ?_⟩
  intro x
  by_cases hx : ∃ y, g y = x
  · rcases hx with ⟨y, rfl⟩
    simpa only [SimpleFunc.extend_apply, hg.injective, Injective.extend_apply] using
      hf.tendsto_approx y
  · simpa only [hx, SimpleFunc.extend_apply', not_false_iff, extend_apply'] using
      hg'.tendsto_approx x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant28e9825b72ef3d72f615eb38bc387462e4cd89917b6c7447a4082a74bb466bb2.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70e47d4c025a18eace67bec5f4b487bf6dc01ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
