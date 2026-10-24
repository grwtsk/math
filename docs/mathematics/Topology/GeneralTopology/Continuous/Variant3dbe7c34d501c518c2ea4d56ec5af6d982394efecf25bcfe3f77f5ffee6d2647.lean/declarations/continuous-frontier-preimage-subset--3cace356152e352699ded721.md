# Continuous.frontier_preimage_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb4d872f-0d1a-8ba6-0f76-92cdef70121d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0582717-4fcd-7041-4cc7-af8cf32a0eb3",
  "kind": "theorem",
  "lexical_name": "Continuous.frontier_preimage_subset",
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
  "slug": "continuous-frontier-preimage-subset--3cace356152e352699ded721",
  "source": {
    "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cace356152e352699ded721d1a78d897ede98bdc68d57c81c0483043ba3feea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0582717-4fcd-7041-4cc7-af8cf32a0eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.frontier_preimage_subset (hf : Continuous f) (t : Set Y) :
    frontier (f ⁻¹' t) ⊆ f ⁻¹' frontier t :=
  diff_subset_diff (hf.closure_preimage_subset t) (preimage_interior_subset_interior_preimage hf)

/-- If a continuous map `f` maps `s` to `t`, then it maps `closure s` to `closure t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8650eeb53e70bac5ead941682e4055d17b8f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
