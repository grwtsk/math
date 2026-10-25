# GoalsAtResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aafb710e0a5168a36391811d683f77d5ef0ef4750da27c6da1a444ce0f33d57",
  "kind": "structure",
  "lexical_name": "GoalsAtResult",
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
  "slug": "goalsatresult--b47d4bbbf0761a2a4f575704",
  "source": {
    "blob": "fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b47d4bbbf0761a2a4f575704974f6c3f6753874beadb9190757475493c4ec421",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aafb710e0a5168a36391811d683f77d5ef0ef4750da27c6da1a444ce0f33d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure GoalsAtResult where
  ctxInfo    : ContextInfo
  tacticInfo : TacticInfo
  useAfter   : Bool
  /-- Whether the tactic info is further indented than the hover position. -/
  indented   : Bool
  -- for overlapping goals, only keep those of the highest reported priority
  priority   : Nat

/--
  Try to retrieve `TacticInfo` for `hoverPos`.
  We retrieve all `TacticInfo` nodes s.t. `hoverPos` is inside the node's range plus trailing whitespace.
  We usually prefer the innermost such nodes so that for composite tactics such as `induction`, we show the nested proofs' states.
  However, if `hoverPos` is after the tactic, we prefer nodes that are not indented relative to it, meaning that e.g. at `|` in
  ```lean
  have := by
    exact foo
  |
  ```
  we show the (final, see below) state of `have`, not `exact`.

  Moreover, we instruct the LSP server to use the state after tactic execution if
  - the hover position is after the info's start position *and*
  - there is no nested tactic info after the hover position (tactic combinators should decide for themselves
    where to show intermediate states by calling `withTacticInfoContext`) -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variant9d73a7028d8ccdb3fd6c8060474e27970231dda643c146f8685271a7995285b2.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4de68a3f0a24d08f32c53b79a2928e9b0eb7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
