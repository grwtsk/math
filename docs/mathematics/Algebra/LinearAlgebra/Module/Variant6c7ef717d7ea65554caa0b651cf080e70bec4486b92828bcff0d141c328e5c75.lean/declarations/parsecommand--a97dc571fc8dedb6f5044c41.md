# parseCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e46a93870bf230d613542da22c77440ef843a8899e3e1b9d4679a29874616c",
  "kind": "def",
  "lexical_name": "parseCommand",
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
  "slug": "parsecommand--a97dc571fc8dedb6f5044c41",
  "source": {
    "blob": "6187eb412ed2119d158bc56671d4324085bf1f5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a97dc571fc8dedb6f5044c41ea13cf2cb34ecf2543ab6702403c21f49b045ae8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e46a93870bf230d613542da22c77440ef843a8899e3e1b9d4679a29874616c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseCommand (inputCtx : InputContext) (pmctx : ParserModuleContext) (mps : ModuleParserState) (messages : MessageLog) : Syntax × ModuleParserState × MessageLog := Id.run do
  let mut pos := mps.pos
  let mut recovering := mps.recovering
  let mut messages := messages
  let mut stx := Syntax.missing  -- will always be assigned below
  repeat
    if inputCtx.atEnd pos then
      stx := mkEOI inputCtx pos
      break
    let pos' := pos
    let p := andthenFn whitespace topLevelCommandParserFn
    let s := p.run inputCtx pmctx (getTokenTable pmctx.env) { cache := initCacheForInput inputCtx.inputString, pos }
    -- save errors from sub-recoveries
    for (rpos, rstk, recovered) in s.recoveredErrors do
      messages := messages.add <| mkErrorMessage inputCtx rpos rstk recovered
    pos := s.pos
    if recovering && !s.stxStack.isEmpty && s.stxStack.back.isAntiquot then
      -- top-level antiquotation during recovery is most likely remnant from unfinished quotation, ignore
      continue
    match s.errorMsg with
    | none =>
      stx := s.stxStack.back
      recovering := false
      break
    | some errorMsg =>
      -- advance at least one token to prevent infinite loops
      if pos == pos' then
        pos := consumeInput inputCtx pmctx pos
      /- We ignore commands where `getPos?` is none. This happens only on commands that have a prefix comprised of optional elements.
          For example, unification hints start with `optional («scoped» <|> «local»)`.
          We claim a syntactically incorrect command containing no token or identifier is irrelevant for intellisense and should be ignored. -/
      let ignore := s.stxStack.isEmpty || s.stxStack.back.getPos?.isNone
      unless recovering && ignore do
        messages := messages.add <| mkErrorMessage inputCtx s.pos s.stxStack errorMsg
      recovering := true
      if ignore then
        continue
      else
        stx := s.stxStack.back
        break
  if mps.hasLeading then
    -- File header was empty - set start-of-file leading whitespace on first token in `stx`
    (stx, _) := setStartOfFileLeading stx
  return (stx, { pos, recovering, hasLeading := false }, messages)

-- only useful for testing since most Lean files cannot be parsed without elaboration

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant6c7ef717d7ea65554caa0b651cf080e70bec4486b92828bcff0d141c328e5c75.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6187eb412ed2119d158bc56671d4324085bf1f5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
