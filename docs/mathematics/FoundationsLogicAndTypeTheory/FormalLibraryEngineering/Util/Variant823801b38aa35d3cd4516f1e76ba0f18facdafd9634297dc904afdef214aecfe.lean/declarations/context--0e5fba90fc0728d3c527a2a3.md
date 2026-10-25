# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6081bdcb7b678460bb800ef6152c5262d399fb82f6c105769b2ea51532274e7c",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--0e5fba90fc0728d3c527a2a3",
  "source": {
    "blob": "4f30699800b5a858dcf4f00ca2739afd592e9465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e5fba90fc0728d3c527a2a3e6076b22fc49b3d14befb98392df9c5fc4b7f7ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6081bdcb7b678460bb800ef6152c5262d399fb82f6c105769b2ea51532274e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  /-- The current document -/
  «meta» : DocumentMeta
  /-- The range that should be replaced.
  In tactic mode, this should be the range of the suggestion tactic.
  In infoview mode, the start and end of the range should both be the cursor position. -/
  cursorPos : Lsp.Position
  /-- Whether to use the `on_goal n =>` combinator. -/
  onGoal : Option Nat
  /-- The preceding piece of syntax, if available. It is not available if the cursor is
  at the start of the next tactic. This is used for merging consecutive `rw` tactics. -/
  stx : Option (TSyntax `tactic)
  /-- The token for updating the main HTML body of suggestions.
  This is used for displaying a message that no progress has happened. -/
  masterToken : RefreshToken
  /-- The token for the `⏳️` HTML that represents the state of the ongoing computations. -/
  statusToken : RefreshToken
  /-- The token for the solved goals. -/
  solvedToken : RefreshToken
  /-- The main goal. -/
  goal : MVarId
  /-- The selected hypothesis, if any. -/
  hyp? : Option FVarId
  /-- The position of the selected subexpression. -/
  pos : SubExpr.Pos

/-- The monad used in `#click_suggestions`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f30699800b5a858dcf4f00ca2739afd592e9465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
