# collectSyntaxBasedSemanticTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:807d089b9502fe5d4e1a1a98145b1e711dfafab8062e27e2700e08164c66c91d",
  "kind": "def",
  "lexical_name": "collectSyntaxBasedSemanticTokens",
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
  "slug": "collectsyntaxbasedsemantictokens--f77516088054e025a7c5146c",
  "source": {
    "blob": "dbfe4cbe254b55b50d0905e8465111920d0e579e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 466,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f77516088054e025a7c5146c35455b9f1c47e6fb80562b4b51bd3e62148fc7db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:807d089b9502fe5d4e1a1a98145b1e711dfafab8062e27e2700e08164c66c91d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectSyntaxBasedSemanticTokens (text : FileMap) : (stx : Syntax) → Array LeanSemanticToken
  | `($e.$id:ident)    =>
    let tokens := collectSyntaxBasedSemanticTokens text e
    tokens.push { stx := id, type := SemanticTokenType.property }
  | `($e |>.$field:ident) =>
    let tokens := collectSyntaxBasedSemanticTokens text e
    tokens.push { stx := field, type := SemanticTokenType.property }
  | stx => Id.run do
    if noHighlightKinds.contains stx.getKind then
      return #[]
    if docKinds.contains stx.getKind then
      -- Docs are only highlighted in Verso format, in which case `stx[1]` is a node.
      if stx[1].isAtom then
        return #[]
      else
        return collectVersoTokens text stx[1] (collectSyntaxBasedSemanticTokens text)
    let mut tokens :=
      if stx.isOfKind choiceKind then
        collectSyntaxBasedSemanticTokens text stx[0]
      else
        stx.getArgs.map (collectSyntaxBasedSemanticTokens text) |>.flatten
    let Syntax.atom _ val := stx
      | return tokens
    let isRegularKeyword := val.front?.any isIdFirst
    let isHashKeyword := ((val.dropPrefix? '#').bind (·.front?)).any isIdFirst
    if ! isRegularKeyword && ! isHashKeyword then
      return tokens
    return tokens.push { stx, type := keywordSemanticTokenMap.getD val .keyword }

/-- Collects all semantic tokens from the given `Elab.InfoTree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfe4cbe254b55b50d0905e8465111920d0e579e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
