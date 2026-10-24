# _root_.MeasurableEmbedding.exists_stronglyMeasurable_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54ee612fcbf62feb05db72a60e85689615b71f4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 877,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fdfc858-d28d-447f-ec1d-550ada12f504",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:632dfc1b-5bd7-6cf4-68e6-d663ce58c4e2",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableEmbedding.exists_stronglyMeasurable_extend",
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
  "slug": "root-measurableembedding-exists-stronglymeasurable-extend--f84c80d82f052cea2f3d8d86",
  "source": {
    "blob": "54ee612fcbf62feb05db72a60e85689615b71f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 877,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f84c80d82f052cea2f3d8d86549a39bf3c6f46115cfce78567072199f8723e61",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632dfc1b-5bd7-6cf4-68e6-d663ce58c4e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableEmbedding.exists_stronglyMeasurable_extend {f : α → β} {g : α → γ}
    {_ : MeasurableSpace α} {_ : MeasurableSpace γ} [TopologicalSpace β]
    (hg : MeasurableEmbedding g) (hf : StronglyMeasurable f) (hne : γ → Nonempty β) :
    ∃ f' : γ → β, StronglyMeasurable f' ∧ f' ∘ g = f :=
  ⟨Function.extend g f fun x => Classical.choice (hne x),
    hg.stronglyMeasurable_extend hf (stronglyMeasurable_const' fun _ _ => rfl),
    funext fun _ => hg.injective.extend_apply _ _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ee612fcbf62feb05db72a60e85689615b71f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
