# isOpen_iff_scottContinuous_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36a5c27b-2d66-2f71-a18e-5d1b2cfd8ac5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04242ea9-bc72-14a8-a040-53c27e84b73c",
  "kind": "lemma",
  "lexical_name": "isOpen_iff_scottContinuous_mem",
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
  "slug": "isopen-iff-scottcontinuous-mem--3062567689e98f0bfaac190d",
  "source": {
    "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 320,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3062567689e98f0bfaac190d434b127a3bdd80fdbaebf5130a66abc62c64da85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04242ea9-bc72-14a8-a040-53c27e84b73c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_iff_scottContinuous_mem [Preorder α] {s : Set α} [TopologicalSpace α]
    [IsScott α univ] : IsOpen s ↔ ScottContinuous fun x ↦ x ∈ s := by
  rw [← scottContinuousOn_univ, scottContinuousOn_iff_continuous (fun _ _ _ ↦ by trivial)]
  exact isOpen_iff_continuous_mem

end IsScott

/--
Type synonym for a preorder equipped with the Scott topology
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6d170ab3f18670812898173cd0806c7ad333ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
