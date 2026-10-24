# blockDirections_pair12_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d337e5fd48bee421d3aaee1e81cd5911035c463",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9265ab3273472a07fcc6d58319b534fe11028616396ee03579612aa1e4043687.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:091d2000-4117-40f2-830f-470ed1dd3427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:767efa39-fbeb-e472-d910-0f81927e212e",
  "kind": "theorem",
  "lexical_name": "blockDirections_pair12_four",
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
  "slug": "blockdirections-pair12-four--ba45faee0387632ff59c1f26",
  "source": {
    "blob": "7d337e5fd48bee421d3aaee1e81cd5911035c463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variant9265ab3273472a07fcc6d58319b534fe11028616396ee03579612aa1e4043687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba45faee0387632ff59c1f26cbaa63a9bd10d87e108121b887b13469503acd6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variant9265ab3273472a07fcc6d58319b534fe11028616396ee03579612aa1e4043687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767efa39-fbeb-e472-d910-0f81927e212e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem blockDirections_pair12_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 1, directions 2] := by
  funext j
  fin_cases j <;>
    (unfold blockDirections; apply congrArg directions; decide)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variant9265ab3273472a07fcc6d58319b534fe11028616396ee03579612aa1e4043687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variant9265ab3273472a07fcc6d58319b534fe11028616396ee03579612aa1e4043687.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d337e5fd48bee421d3aaee1e81cd5911035c463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
