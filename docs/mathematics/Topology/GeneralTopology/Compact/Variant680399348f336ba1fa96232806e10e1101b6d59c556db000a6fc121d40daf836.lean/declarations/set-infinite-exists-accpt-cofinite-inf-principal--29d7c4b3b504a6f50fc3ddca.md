# Set.Infinite.exists_accPt_cofinite_inf_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee81e41eedfe82ab91053ef242557a393994b7e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 800,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a37b87a-a75f-c7cb-779a-75590914cac1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d673de3f-1bf0-b6c0-8b23-22af7a841d7f",
  "kind": "lemma",
  "lexical_name": "Set.Infinite.exists_accPt_cofinite_inf_principal",
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
  "slug": "set-infinite-exists-accpt-cofinite-inf-principal--29d7c4b3b504a6f50fc3ddca",
  "source": {
    "blob": "ee81e41eedfe82ab91053ef242557a393994b7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 800,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29d7c4b3b504a6f50fc3ddca38d4813981f6cbaa35479af22e9e8bf2a2c630e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d673de3f-1bf0-b6c0-8b23-22af7a841d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.Infinite.exists_accPt_cofinite_inf_principal [CompactSpace X] (hs : s.Infinite) :
    ∃ x, AccPt x (cofinite ⊓ 𝓟 s) := by
  simpa only [mem_univ, true_and]
    using hs.exists_accPt_cofinite_inf_principal_of_subset_isCompact isCompact_univ s.subset_univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant680399348f336ba1fa96232806e10e1101b6d59c556db000a6fc121d40daf836.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee81e41eedfe82ab91053ef242557a393994b7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
