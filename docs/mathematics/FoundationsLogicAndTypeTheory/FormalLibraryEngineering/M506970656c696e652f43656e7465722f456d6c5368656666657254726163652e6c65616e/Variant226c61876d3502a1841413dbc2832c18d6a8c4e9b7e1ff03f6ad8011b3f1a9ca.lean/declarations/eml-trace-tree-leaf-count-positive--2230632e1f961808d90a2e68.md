# eml_trace_tree_leaf_count_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ed7f97-d276-e00e-90cc-3a19d44626fb",
  "kind": "theorem",
  "lexical_name": "eml_trace_tree_leaf_count_positive",
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
  "slug": "eml-trace-tree-leaf-count-positive--2230632e1f961808d90a2e68",
  "source": {
    "blob": "42a50c46f49e5995e8a283ff320b858f43ccede5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2230632e1f961808d90a2e6818cf90cf92d769881cdc859730f502bc0010b9b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ed7f97-d276-e00e-90cc-3a19d44626fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eml_trace_tree_leaf_count_positive
    (tree : EmlTraceTree) :
    0 < leafCount tree := by
  induction tree with
  | unit => simp [leafCount]
  | input _ => simp [leafCount]
  | residue _ => simp [leafCount]
  | node left right leftPositive rightPositive =>
      simp only [leafCount]
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a50c46f49e5995e8a283ff320b858f43ccede5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
