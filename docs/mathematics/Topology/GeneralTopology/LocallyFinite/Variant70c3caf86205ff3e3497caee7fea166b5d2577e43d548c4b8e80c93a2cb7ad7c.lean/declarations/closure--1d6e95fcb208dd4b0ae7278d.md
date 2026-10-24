# closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "573732189552e9aef7fb9c78b281dcb2b0d9ded2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8d9beaa-b044-6f3c-c4b5-ba3b0265b40e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75f63d4a-d38f-367e-164c-f7dab7f539dd",
  "kind": "theorem",
  "lexical_name": "closure",
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
  "slug": "closure--1d6e95fcb208dd4b0ae7278d",
  "source": {
    "blob": "573732189552e9aef7fb9c78b281dcb2b0d9ded2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6e95fcb208dd4b0ae7278d9ac654fe8114311515713ca672d42e74077c8ee0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75f63d4a-d38f-367e-164c-f7dab7f539dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem closure (hf : LocallyFinite f) : LocallyFinite fun i => closure (f i) := by
  intro x
  rcases hf x with ⟨s, hsx, hsf⟩
  refine ⟨interior s, interior_mem_nhds.2 hsx, hsf.subset fun i hi => ?_⟩
  exact (hi.mono isOpen_interior.closure_inter).of_closure.mono
    (inter_subset_inter_right _ interior_subset)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573732189552e9aef7fb9c78b281dcb2b0d9ded2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
