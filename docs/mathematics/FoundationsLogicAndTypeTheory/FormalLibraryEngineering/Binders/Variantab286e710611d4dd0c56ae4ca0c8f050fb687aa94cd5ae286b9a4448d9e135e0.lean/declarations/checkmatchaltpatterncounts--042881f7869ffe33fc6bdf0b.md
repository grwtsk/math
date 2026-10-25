# checkMatchAltPatternCounts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f16965191bce2e15e09f989415778f7cc02a2fbc008978018cfb7702390b24",
  "kind": "def",
  "lexical_name": "checkMatchAltPatternCounts",
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
  "slug": "checkmatchaltpatterncounts--042881f7869ffe33fc6bdf0b",
  "source": {
    "blob": "11f38a712a1b2233d5a315c2f28f444b04e00086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 572,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:042881f7869ffe33fc6bdf0be970adcd6767c762537776215daa480b537c98ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f16965191bce2e15e09f989415778f7cc02a2fbc008978018cfb7702390b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def checkMatchAltPatternCounts (matchAlts : Syntax) (numDiscrs : Nat) (expectedType : Expr)
    : MetaM Unit := do
  let sepPats (pats : List Syntax) := MessageData.joinSep (pats.map toMessageData) ", "
  let maxDiscrs? ← forallTelescopeReducing expectedType fun xs e =>
    if e.getAppFn.isMVar then pure none else pure (some xs.size)
  let matchAltViews := matchAlts[0].getArgs.filterMap (getMatchAlt `term)
  let numPatternsStr (n : Nat) := s!"{n} {if n == 1 then "pattern" else "patterns"}"
  if h : matchAltViews.size > 0 then
    if let some maxDiscrs := maxDiscrs? then
      if numDiscrs > maxDiscrs then
        if maxDiscrs == 0 then
          throwErrorAt matchAltViews[0].lhs m!"Cannot define a value of type{indentExpr expectedType}\n\
            by pattern matching because it is not a function type"
        else
          throwErrorAt matchAltViews[0].lhs m!"Too many patterns in match alternative: \
            At most {numPatternsStr maxDiscrs} expected in a definition of type {indentExpr expectedType}\n\
            but found {numDiscrs}:{indentD <| sepPats matchAltViews[0].patterns.toList}"
    -- Catch inconsistencies between pattern counts here so that we can report them as "inconsistent"
    -- rather than as "too many" or "too few" (as the `match` elaborator does)
    for view in matchAltViews do
      let numPats := view.patterns.size
      if numPats != numDiscrs then
        let origPats := sepPats matchAltViews[0].patterns.toList
        let pats := sepPats view.patterns.toList
        throwErrorAt view.lhs m!"Inconsistent number of patterns in match alternatives: This \
          alternative contains {numPatternsStr numPats}:{indentD pats}\n\
          but a preceding alternative contains {numDiscrs}:{indentD origPats}"

/--
  Similar to `expandMatchAltsIntoMatch`, but supports an optional `where` clause.

  Expand `matchAltsWhereDecls` into `let rec` + `match`-expression.
  Example
  ```
  | 0, true => ... f 0 ...
  | i, _    => ... f i + g i ...
  where
    f x := g x + 1

    g : Nat → Nat
      | 0   => 1
      | x+1 => f x
  ```
  expands into
  ```
  fun x_1 x_2 =>
    let rec
      f x := g x + 1,
      g : Nat → Nat
        | 0   => 1
        | x+1 => f x
    match x_1, x_2 with
    | 0, true => ... f 0 ...
    | i, _    => ... f i + g i ...
  ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f38a712a1b2233d5a315c2f28f444b04e00086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
