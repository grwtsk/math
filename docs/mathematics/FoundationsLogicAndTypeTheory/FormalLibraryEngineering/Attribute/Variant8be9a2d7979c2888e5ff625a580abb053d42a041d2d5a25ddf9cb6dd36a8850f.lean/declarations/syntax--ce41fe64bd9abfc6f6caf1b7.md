# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2eca21e16f6cce8daa226d14b5e4eafea8a98630e6f49628b0b7279f86099de",
  "kind": "syntax",
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
  "slug": "syntax--ce41fe64bd9abfc6f6caf1b7",
  "source": {
    "blob": "1a4bda205f253419b9281a36f55769c71ce800a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce41fe64bd9abfc6f6caf1b7fe19bf77d9d24102d5774e3fde9f8997e69ce3cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2eca21e16f6cce8daa226d14b5e4eafea8a98630e6f49628b0b7279f86099de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax blueprintOptions := (ppSpace str)? (ppSpace blueprintOption)*

/--
The `blueprint` attribute tags a constant to add to the blueprint.

You may optionally add:
- `"latex-label"`: The LaTeX label to use for the node (default: the Lean name).
- `statement := /-- ... -/`: The statement of the node in LaTeX.
- `hasProof := true`: If the node has a proof part (default: true if the node is a theorem).
- `proof := /-- ... -/`: The proof of the node in LaTeX (default: the docstrings in proof tactics).
- `uses := [a, "b"]`: The dependencies of the node, as Lean constants or LaTeX labels (default: inferred from the used constants).
- `proofUses := [a, "b"]`: The dependencies of the proof of the node, as Lean constants or LaTeX labels (default: inferred from the used constants).
- `title := /-- Title -/`: The title of the node in LaTeX.
- `notReady := true`: Whether the node is not ready.
- `discussion := 123`: The discussion issue number of the node.
- `latexEnv := "lemma"`: The LaTeX environment to use for the node (default: "theorem" or "definition").

For more information, see [LeanArchitect](https://github.com/hanwenzhu/LeanArchitect).

Use `blueprint?` to show the raw data of the added node.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4bda205f253419b9281a36f55769c71ce800a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
