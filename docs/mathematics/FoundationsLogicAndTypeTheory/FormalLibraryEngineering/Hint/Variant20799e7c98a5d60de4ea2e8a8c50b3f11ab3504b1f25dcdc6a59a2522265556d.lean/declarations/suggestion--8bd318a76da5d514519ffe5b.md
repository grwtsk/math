# suggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fa2bbe6e019424517ca744f84395705f3cad568da3bd67a640c3942c8b5eecd",
  "kind": "def",
  "lexical_name": "suggestion",
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
  "slug": "suggestion--8bd318a76da5d514519ffe5b",
  "source": {
    "blob": "74e419f70a854df01ab085b63d53cc35d11dd367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bd318a76da5d514519ffe5b1591ab440cbaf82e483d41562ec123de4b7ed6f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fa2bbe6e019424517ca744f84395705f3cad568da3bd67a640c3942c8b5eecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def suggestion (tac : TSyntax `tactic) (msgs : MessageLog := {}) : TacticM Suggestion := do
  -- TODO `addExactSuggestion` has an option to construct `postInfo?`
  -- Factor that out so we can use it here instead of copying and pasting?
  let goals ← getGoals
  let postInfo? ← if goals.isEmpty then pure none else
    let mut str := "\nRemaining subgoals:"
    for g in goals do
      let e ← PrettyPrinter.ppExpr (← instantiateMVars (← g.getType))
      str := str ++ Format.pretty ("\n⊢ " ++ e)
    pure (some str)
  let style? := if goals.isEmpty then some .success else none
  let msg? ← msgs.toList.findM? fun m => do pure <|
    m.severity == MessageSeverity.information && (← m.data.toString).startsWith "Try this: "
  let suggestion ← match msg? with
  | some m => pure <| SuggestionText.string ((← m.data.toString).drop 10)
  | none => pure <| SuggestionText.tsyntax tac
  return { suggestion, postInfo?, style? }

/-- Run a tactic, returning any new messages rather than adding them to the message log. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variant20799e7c98a5d60de4ea2e8a8c50b3f11ab3504b1f25dcdc6a59a2522265556d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e419f70a854df01ab085b63d53cc35d11dd367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
