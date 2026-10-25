# codeBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:545473ed0325e1b59d07595dc7f3ad83ff277e14a375995a2b416189bb8c1d9c",
  "kind": "def",
  "lexical_name": "codeBlock",
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
  "slug": "codeblock--72b8d12fa9de0de87e75767a",
  "source": {
    "blob": "0cf1563ca9d8d784ca8987c898c0154b34802a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1242,
    "line": 1199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72b8d12fa9de0de87e75767a79ae56d779b18b3a4af693931d642c1f80eb013c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:545473ed0325e1b59d07595dc7f3ad83ff277e14a375995a2b416189bb8c1d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1199–1242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  public partial def codeBlock (ctxt : BlockCtxt) : ParserFn :=
    nodeFn ``codeblock <|
      -- Opener - leaves indent info and open token on the stack
      atomicFn (takeWhileFn (· == ' ') >> guardMinColumn ctxt.minIndent >> pushColumn >> asStringFn (atLeastFn 3 (skipChFn '`'))) >>
        withIndentColumn fun c =>
          recoverUnindent c <|
            withCurrentColumn fun c' =>
              let fenceWidth := c' - c
              takeWhileFn (· == ' ') >>
              optionalFn nameAndArgs >>
              asStringFn (recoverEolAtErrPos (newlineOrUnexpected "positional argument, named argument, flag, or newline")) >>
              nodeFn strLitKind (asStringFn (manyFn (atomicFn blankLine <|> codeFrom c fenceWidth)) (transform := deIndent c) (quoted := true)) >>
              closeFence c fenceWidth
  where
    withIndentColumn (p : Nat → ParserFn) : ParserFn := fun c s =>
      let colStx := s.stxStack.get! (s.stxStack.size - 2)
      match colStx with
      | .node _ `column #[.atom _ col] =>
        if let some colNat := col.toNat? then
          let opener := s.stxStack.get! (s.stxStack.size - 1)
          p colNat c (s.popSyntax.popSyntax.pushSyntax opener)
        else
          s.mkError s!"Internal error - not a Nat {col}"
      | other => s.mkError s!"Internal error - not a column node {other}"

    deIndent (n : Nat) (str : String) : String := Id.run do
      let str := if str != "" && str.back == '\n' then str.dropEnd 1 |>.copy else str
      let mut out := ""
      for line in str.split '\n' do
        out := out ++ line.drop n ++ "\n"
      out

    codeFrom (col width : Nat) :=
      atomicFn (bol ctxt >> takeWhileFn (· == ' ') >> guardMinColumn col >>
        notFollowedByFn (atLeastFn width (skipChFn '`')) "ending fence") >>
      manyFn (satisfyFn (· != '\n') "non-newline") >> satisfyFn (· == '\n') "newline"

    closeFence (col width : Nat) :=
      bol ctxt >> takeWhileFn (· == ' ') >> guardColumn (· == col) s!"column {col}" >>
      atomicFn (asStringFn (repFn width (skipChFn '`'))) >>
      notFollowedByFn (skipChFn '`') "extra `" >>
      takeWhileFn (· == ' ') >> (satisfyFn (· == '\n') "newline" <|> eoiFn)

  /-- Parses a directive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant8a40ec7e013ccd5b0a507b55866d4789f00b950ba77a7095770f0e51b7ebde80.lean#L1199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf1563ca9d8d784ca8987c898c0154b34802a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
