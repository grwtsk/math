# trailingLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e09dcb0454861cf0bfa493a9a3334cb125f651ba96b56eb9af9e8a79c87faf5",
  "kind": "def",
  "lexical_name": "trailingLoop",
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
  "slug": "trailingloop--fba9fd3875557d2641f0535a",
  "source": {
    "blob": "0c62aceb1bdb5b06756ea41f268464313ddf7d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1977,
    "line": 1937,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fba9fd3875557d2641f0535a8e80d191d1ba63f00ba03414591fb4978c458225",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e09dcb0454861cf0bfa493a9a3334cb125f651ba96b56eb9af9e8a79c87faf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1937–1977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def trailingLoop (tables : PrattParsingTables) (c : ParserContext) (s : ParserState) : ParserState := Id.run do
  let iniSz  := s.stackSize
  let iniPos := s.pos
  let (s, ps)       := indexed tables.trailingTable c s LeadingIdentBehavior.default
  if s.hasError then
    -- Discard token parse errors and break the trailing loop instead.
    -- The error will be flagged when the next leading position is parsed, unless the token
    -- is in fact valid there (e.g. EOI at command level, no-longer forbidden token)
    return s.restore iniSz iniPos
  if ps.isEmpty && tables.trailingParsers.isEmpty then
    return s -- no available trailing parser
  let left   := s.stxStack.back
  let s      := s.popSyntax
  let s      := trailingLoopStep tables left ps c s
  if s.hasError then
    -- Discard non-consuming parse errors and break the trailing loop instead, restoring `left`.
    -- This is necessary for fallback parsers like `app` that pretend to be always applicable.
    return if s.pos == iniPos then s.restore (iniSz - 1) iniPos |>.pushSyntax left else s
  trailingLoop tables c s

/--

  Implements a variant of Pratt's algorithm. In Pratt's algorithms tokens have a right and left binding power.
  In our implementation, parsers have precedence instead. This method selects a parser (or more, via
  `longestMatchFn`) from `leadingTable` based on the current token. Note that the unindexed `leadingParsers` parsers
  are also tried. We have the unindexed `leadingParsers` because some parsers do not have a "first token". Example:
  ```
  syntax term:51 "≤" ident "<" term "|" term : index
  ```
  Example, in principle, the set of first tokens for this parser is any token that can start a term, but this set
  is always changing. Thus, this parsing rule is stored as an unindexed leading parser at `leadingParsers`.
  After processing the leading parser, we chain with parsers from `trailingTable`/`trailingParsers` that have precedence
  at least `c.prec` where `c` is the `ParsingContext`. Recall that `c.prec` is set by `categoryParser`.

  Note that in the original Pratt's algorithm, precedences are only checked before calling trailing parsers. In our
  implementation, leading *and* trailing parsers check the precedence. We claim our algorithm is more flexible,
  modular and easier to understand.

  `antiquotParser` should be a `mkAntiquot` parser (or always fail) and is tried before all other parsers.
  It should not be added to the regular leading parsers because it would heavily
  overlap with antiquotation parsers nested inside them. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean#L1937).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62aceb1bdb5b06756ea41f268464313ddf7d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
