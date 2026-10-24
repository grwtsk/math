# ContinuousWithinAt.closure_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 756,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f12ef8a-77ff-be60-0edf-ee46478c32a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:228b26d3-fe3b-c823-74e3-e8ea44fffe34",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.closure_le",
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
  "slug": "continuouswithinat-closure-le--a032c09d784b54d64a10162b",
  "source": {
    "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 756,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a032c09d784b54d64a10162bd2133153d29908e529063d7d6535261a90a5fdee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:228b26d3-fe3b-c823-74e3-e8ea44fffe34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.closure_le [TopologicalSpace β] {f g : β → α} {s : Set β} {x : β}
    (hx : x ∈ closure s) (hf : ContinuousWithinAt f s x) (hg : ContinuousWithinAt g s x)
    (h : ∀ y ∈ s, f y ≤ g y) : f x ≤ g x :=
  show (f x, g x) ∈ { p : α × α | p.1 ≤ p.2 } from
    OrderClosedTopology.isClosed_le'.closure_subset ((hf.prodMk hg).mem_closure hx h)

/-- If `s` is a closed set and two functions `f` and `g` are continuous on `s`,
then the set `{x ∈ s | f x ≤ g x}` is a closed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fbe5b1fddf1f2206d288243edfadae02fc7931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
