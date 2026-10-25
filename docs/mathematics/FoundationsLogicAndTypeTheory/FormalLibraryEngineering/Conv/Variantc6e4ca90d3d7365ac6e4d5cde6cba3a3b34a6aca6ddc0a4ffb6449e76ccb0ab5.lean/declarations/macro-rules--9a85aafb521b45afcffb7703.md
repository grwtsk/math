# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:220ce6cea0773f4d1068ad2a54bdc919d94f8a46abce5e105727ad024f28c915",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--9a85aafb521b45afcffb7703",
  "source": {
    "blob": "e22770e445ff24dfe77ce3337b11264e8bad28b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 341,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a85aafb521b45afcffb77030ec1dda6e8f42614d4e25895d1ab8499589fe49b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:220ce6cea0773f4d1068ad2a54bdc919d94f8a46abce5e105727ad024f28c915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(conv| repeat $seq) => `(conv| first | ($seq); repeat $seq | skip)

/--
Extracts `let` and `have` expressions from within the target expression.
This is the conv mode version of the `extract_lets` tactic.

- `extract_lets` extracts all the lets from the target.
- `extract_lets x y z` extracts all the lets from the target and uses `x`, `y`, and `z` for the first names.
  Using `_` for a name leaves it unnamed.

Limitation: the extracted local declarations do not persist outside of the `conv` goal.
See also `lift_lets`, which does not extract lets as local declarations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantc6e4ca90d3d7365ac6e4d5cde6cba3a3b34a6aca6ddc0a4ffb6449e76ccb0ab5.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22770e445ff24dfe77ce3337b11264e8bad28b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
