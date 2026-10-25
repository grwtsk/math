# addExactSuggestionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8fbf682e8625c800723942bddd73144aa8e2acbc3b86a818acb4e920208ab29",
  "kind": "def",
  "lexical_name": "addExactSuggestionCore",
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
  "slug": "addexactsuggestioncore--788f202805f92eaccfb5b15e",
  "source": {
    "blob": "7f62933eeebe64c6ed0135dd28b13636a908c6f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:788f202805f92eaccfb5b15ee2f69bb23a9c11527a8ddbce9f6dbc01a51d1956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8fbf682e8625c800723942bddd73144aa8e2acbc3b86a818acb4e920208ab29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addExactSuggestionCore (addSubgoalsMsg : Bool) (e : Expr) : MetaM Suggestion := do
  let stx ← delabToRefinableSyntax e
  let mvars ← getMVars e
  let suggestion ← if mvars.isEmpty then `(tactic| exact $stx) else `(tactic| refine $stx)
  let messageData? := if mvars.isEmpty then m!"exact {e}" else m!"refine {e}"
  let postInfo? ← if !addSubgoalsMsg || mvars.isEmpty then pure none else
    let mut str := "\nRemaining subgoals:"
    for g in mvars do
      -- TODO: use a MessageData.ofExpr instead of rendering to string
      let e ← PrettyPrinter.ppExpr (← instantiateMVars (← g.getType))
      str := str ++ Format.pretty ("\n⊢ " ++ e)
    pure str
  pure { suggestion, postInfo?, messageData? }

/-- Add an `exact e` or `refine e` suggestion.

The parameters are:
* `ref`: the span of the info diagnostic
* `e`: the replacement expression
* `origSpan?`: a syntax object whose span is the actual text to be replaced by `suggestion`.
  If not provided it defaults to `ref`.
* `addSubgoalsMsg`: if true (default false), any remaining subgoals will be shown after
  `Remaining subgoals:`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f62933eeebe64c6ed0135dd28b13636a908c6f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
