# isClosed_iff_frequently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfaf091a-5b49-ee42-46a7-1fd6276c7662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e97746a-d791-af0a-b20e-d25403516f84",
  "kind": "theorem",
  "lexical_name": "isClosed_iff_frequently",
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
  "slug": "isclosed-iff-frequently--83c264fb213d45b6b43e624b",
  "source": {
    "blob": "7d2a1cfb93171ea1e3c9fdef9c241d062856a45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1288,
    "line": 1281,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c264fb213d45b6b43e624ba4e55c8da140ab8b6e96275ecc882426c3f38519",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e97746a-d791-af0a-b20e-d25403516f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1281–1288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_iff_frequently {s : Set α} : IsClosed s ↔ ∀ x, (∃ᶠ y in 𝓝 x, y ∈ s) → x ∈ s := by
  rw [← closure_subset_iff_isClosed]
  refine' forall_congr' fun x => _
  rw [mem_closure_iff_frequently]
#align is_closed_iff_frequently isClosed_iff_frequently

/-- The set of cluster points of a filter is closed. In particular, the set of limit points
of a sequence is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb7e7ad3a922333bf917d7607ee1d1a036377bf371a328a0ee48b743fc585308a.lean#L1281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2a1cfb93171ea1e3c9fdef9c241d062856a45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
