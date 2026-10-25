# addSolvedSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba41e78808c6420bd33233fca1a5e1821b9bee0cee2e26cd46137ebd0fce1b17",
  "kind": "def",
  "lexical_name": "addSolvedSuggestion",
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
  "slug": "addsolvedsuggestion--3967a8d3dfba1f6bf62e1f25",
  "source": {
    "blob": "e6d9208a86e65894b8fbaafc676067a7bbca3e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3967a8d3dfba1f6bf62e1f2573fe3ce39b0456e61d32796f6a5f2d31b6b2511f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba41e78808c6420bd33233fca1a5e1821b9bee0cee2e26cd46137ebd0fce1b17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addSolvedSuggestion (tac : TSyntax `tactic) : ClickSuggestionsM Unit := do
  let html ← mkSuggestion tac (.text (← PrettyPrinter.ppTactic tac).pretty) (isClosing := true)
  modify fun s ↦ { s with solvedSuggestions := s.solvedSuggestions.push html }
  (← read).solvedToken.update <details «open»={true}>
    <summary className="mv2 pointer">
    These tactics solve the goal: 🎉️
    </summary>
    {.element "div" #[] (← get).solvedSuggestions}
    </details>

end Widget

/-- Return whether `kabstract` uniquely finds pattern `p` in `e` at position `targetPos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d9208a86e65894b8fbaafc676067a7bbca3e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
