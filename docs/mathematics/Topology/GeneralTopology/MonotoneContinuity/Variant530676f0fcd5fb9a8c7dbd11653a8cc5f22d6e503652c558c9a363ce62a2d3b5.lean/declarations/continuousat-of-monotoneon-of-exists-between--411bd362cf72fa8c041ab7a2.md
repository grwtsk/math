# continuousAt_of_monotoneOn_of_exists_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "507942de3ccf4129140b7528892d63d11c25fd1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92238d4b-b781-9f4b-6d6d-1ddabcd71557",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f460c10b-a06b-1123-90f9-34f3d0ea49cc",
  "kind": "theorem",
  "lexical_name": "continuousAt_of_monotoneOn_of_exists_between",
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
  "slug": "continuousat-of-monotoneon-of-exists-between--411bd362cf72fa8c041ab7a2",
  "source": {
    "blob": "507942de3ccf4129140b7528892d63d11c25fd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:411bd362cf72fa8c041ab7a294611086364c41b518f40363ec6fc06b88a2cdff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f460c10b-a06b-1123-90f9-34f3d0ea49cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a) (hfs_l : ∀ b < f a, ∃ c ∈ s, f c ∈ Ioo b (f a))
    (hfs_r : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨continuousWithinAt_left_of_monotoneOn_of_exists_between h_mono (mem_nhdsWithin_of_mem_nhds hs)
        hfs_l,
      continuousWithinAt_right_of_monotoneOn_of_exists_between h_mono
        (mem_nhdsWithin_of_mem_nhds hs) hfs_r⟩
#align continuous_at_of_monotone_on_of_exists_between continuousAt_of_monotoneOn_of_exists_between

/-- If a function `f` with a densely ordered codomain is monotone on a neighborhood of `a` and the
closure of the image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is
continuous at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant530676f0fcd5fb9a8c7dbd11653a8cc5f22d6e503652c558c9a363ce62a2d3b5.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507942de3ccf4129140b7528892d63d11c25fd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
