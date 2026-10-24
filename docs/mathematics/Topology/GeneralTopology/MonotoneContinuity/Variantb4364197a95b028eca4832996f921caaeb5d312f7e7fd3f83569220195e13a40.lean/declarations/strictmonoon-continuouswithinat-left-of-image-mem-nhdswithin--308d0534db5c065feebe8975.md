# StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f191fa4-0679-93e2-0811-c105833e088e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4668c150-cf7c-9e88-3d07-e8e50b2ed2af",
  "kind": "theorem",
  "lexical_name": "StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin",
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
  "slug": "strictmonoon-continuouswithinat-left-of-image-mem-nhdswithin--308d0534db5c065feebe8975",
  "source": {
    "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:308d0534db5c065feebe89759e813afacb1a0cd5d2633d532e29e4e4836d3a28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4668c150-cf7c-9e88-3d07-e8e50b2ed2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictMonoOn.continuousWithinAt_left_of_image_mem_nhdsWithin [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝[≤] a) (hfs : f '' s ∈ 𝓝[≤] f a) :
    ContinuousWithinAt f (Iic a) a :=
  h_mono.dual.continuousWithinAt_right_of_image_mem_nhdsWithin hs hfs

/-- If a function `f` is strictly monotone on a left neighborhood of `a` and the image of this
neighborhood under `f` includes `Iio (f a)`, then `f` is continuous at `a` from the left. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26fcdf43df039cd60336608ee88b05cf273ec78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
