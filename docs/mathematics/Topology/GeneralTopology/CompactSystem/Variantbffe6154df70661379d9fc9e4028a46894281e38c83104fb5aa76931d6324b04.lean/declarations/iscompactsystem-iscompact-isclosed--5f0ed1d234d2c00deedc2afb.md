# isCompactSystem_isCompact_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3360187f0d8df4463bd97205079e3dc8b344d44f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85cc996a-3039-afe1-8416-ca3957c0f813",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eacddfbe-f883-5ca5-a581-4aac4f31a9e3",
  "kind": "theorem",
  "lexical_name": "isCompactSystem_isCompact_isClosed",
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
  "slug": "iscompactsystem-iscompact-isclosed--5f0ed1d234d2c00deedc2afb",
  "source": {
    "blob": "3360187f0d8df4463bd97205079e3dc8b344d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0ed1d234d2c00deedc2afb6a400764f1bc4112c42227d4fe5f7aebe009ffd2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eacddfbe-f883-5ca5-a581-4aac4f31a9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompactSystem_isCompact_isClosed (α : Type*) [TopologicalSpace α] :
    IsCompactSystem {s : Set α | IsCompact s ∧ IsClosed s} := by
  refine IsCompactSystem.of_nonempty_iInter fun C hC_cc h_nonempty ↦ ?_
  rw [← iInter_dissipate]
  refine IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed (Set.dissipate C)
    (fun n ↦ ?_) h_nonempty ?_ (fun n ↦ isClosed_biInter (fun i _ ↦ (hC_cc i).2))
  · exact Set.antitone_dissipate (by lia)
  · simpa using (hC_cc 0).1

/-- In a `T2Space` the set of compact sets is a compact system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactSystem/Variantbffe6154df70661379d9fc9e4028a46894281e38c83104fb5aa76931d6324b04.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3360187f0d8df4463bd97205079e3dc8b344d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
