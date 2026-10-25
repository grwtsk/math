# addSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b627f907a8b56193efed3caf5426095ddfb9342b4531e2d2fc86159f287a3e5",
  "kind": "def",
  "lexical_name": "addSuggestions",
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
  "slug": "addsuggestions--84e96fb25ab982b6585e0ea1",
  "source": {
    "blob": "047f4a796962819a09262824ed17a9f77dec38c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84e96fb25ab982b6585e0ea14d3bcb1ebf059952eb54e2e10f85e446689aa7a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b627f907a8b56193efed3caf5426095ddfb9342b4531e2d2fc86159f287a3e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addSuggestions (ref : Syntax) (suggestions : Array Suggestion)
    (origSpan? : Option Syntax := none) (header : String := "Try these:")
    (style? : Option SuggestionStyle := none)
    (codeActionPrefix? : Option String := none)
    (diffGranularity : Hint.DiffGranularity := .none)
    (footer : MessageData := MessageData.nil) : CoreM Unit := do
  if suggestions.isEmpty then throwErrorAt ref "No suggestions available"
  let hintSuggestions := suggestions.map fun s => {
    span? := origSpan?
    diffGranularity
    toTryThisSuggestion := s
  }
  let suggs ← Hint.mkSuggestionsMessage hintSuggestions ref codeActionPrefix? (forceList := true)
  logInfoAt ref m!"{header}{suggs}{footer}"

/-! # Tactic-specific widget hooks -/
/--
Evaluates `tac` in `initialState` without recovery or sorrying on elaboration failure. If
`expectedType?` is non-`none`, an error is thrown if the resulting goal type is not equal to the
provided type (up to `Expr` equality modulo metavariable instantiation).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant4ca38d27ccc1ce90f2b7ce32367ed1836f50ca5bd69206a2ed05900284a91ad2.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047f4a796962819a09262824ed17a9f77dec38c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
