# addExactSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77381a0b5a766022b8a149a14e6719f20c5ac88a30c4611fa3fc34d8b49bf395",
  "kind": "def",
  "lexical_name": "addExactSuggestions",
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
  "slug": "addexactsuggestions--62bc8dc4ef49ece596a8b95c",
  "source": {
    "blob": "04ec345a1b666ab681b7a955732c2e1dc5106cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62bc8dc4ef49ece596a8b95c40858f88d1670dba67bf2f10ea1df2265b808e6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77381a0b5a766022b8a149a14e6719f20c5ac88a30c4611fa3fc34d8b49bf395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addExactSuggestions (ref : Syntax) (es : Array Expr)
    (origSpan? : Option Syntax := none) (addSubgoalsMsg := false)
    (codeActionPrefix? : Option String := none)
    (checkState? : Option Tactic.SavedState := none)
    (tacticErrorAsInfo := true) : TacticM Unit := do
  let suggestionOrMessages ← es.mapM <| addExactSuggestionCore addSubgoalsMsg checkState?
  let mut suggestions : Array Suggestion := #[]
  let mut messages : Array MessageData := #[]
  for suggestionOrMessage in suggestionOrMessages do
    match suggestionOrMessage with
    | .inl suggestion => suggestions := suggestions.push suggestion
    | .inr message =>
      unless tacticErrorAsInfo do throwError message
      messages := messages.push message
  addSuggestions ref suggestions (origSpan? := origSpan?) (codeActionPrefix? := codeActionPrefix?)
  for message in messages do
    logInfo message

/-- Add a term suggestion.

The parameters are:
* `ref`: the span of the widget diagnostic
* `e`: the replacement expression
* `origSpan?`: a syntax object whose span is the actual text to be replaced by `suggestion`.
  If not provided it defaults to `ref`.
* `header`: a string which precedes the suggestion. By default, it's `"Try this:"`.
* `codeActionPrefix?`: an optional string to be used as the prefix of the replacement text if the
  suggestion does not have a custom `toCodeActionTitle?`. If not provided, `"Try this: "` is used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ec345a1b666ab681b7a955732c2e1dc5106cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
