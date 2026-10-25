# directive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:716ea8a6760bce205d6df67fd9c4b2da7d68d7afe7348de8e39f1934bd473afe",
  "kind": "def",
  "lexical_name": "directive",
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
  "slug": "directive--ff033067e434a8e7ee636be7",
  "source": {
    "blob": "e96aa080a442e3fe1fcd2ab25984f971a52f1574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1313,
    "line": 1251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff033067e434a8e7ee636be79a36d9c67c1d57704967b3825273a6f5f106ed29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:716ea8a6760bce205d6df67fd9c4b2da7d68d7afe7348de8e39f1934bd473afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1251–1313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  public partial def directive (ctxt : BlockCtxt) : ParserFn :=
    nodeFn ``directive <|
      -- Opener - leaves indent info and open token on the stack
      atomicFn
        (eatSpaces >> guardMinColumn ctxt.minIndent >>
          asStringFn (atLeastFn 3 (skipChFn ':')) >>
         guardOpenerSize >>
         eatSpaces >>
         recoverEolWithAtErrPos #[.missing, .node .none nullKind #[]] (nameAndArgs >> newlineOrUnexpected "positional argument, named argument, flag, or newline")) >>
       fakeAtom "\n" >>
       ignoreFn (manyFn blankLine) >>
        (withFencePos 3 fun ⟨l, col⟩ =>
          withFenceSize 3 fun fenceWidth =>
            blocks {ctxt with minIndent := col, maxDirective := fenceWidth} >>
            recoverHereWith #[.missing]
              (closeFence l fenceWidth >>
               withFence 0 fun info _ c s =>
                if (c.fileMap.toPosition info.getPos?.get!).column != col then
                  s.mkErrorAt s!"closing '{String.ofList <| List.replicate fenceWidth ':'}' from directive on line {l} at column {col}, but it's at column {(c.fileMap.toPosition info.getPos?.get!).column}" info.getPos?.get!
                else
                  s))

  where
    withFence (atDepth : Nat) (p : SourceInfo → String → ParserFn) : ParserFn := fun c s =>
        match s.stxStack.get! (s.stxStack.size - (atDepth + 1)) with
        | .atom info str =>
          if str.all (· == ':') then
            p info str c s
          else
            s.mkError s!"Internal error - index {atDepth} wasn't the directive fence - it was the atom {str}"
        | .missing => s.pushSyntax .missing
        | stx =>
          s.mkError s!"Internal error - index {atDepth} wasn't the directive fence - it was {stx} in {s.stxStack.back}, {s.stxStack.pop.back}, {s.stxStack.pop.pop.back}, {s.stxStack.pop.pop.pop.back}"

    withFenceSize (atDepth : Nat) (p : Nat → ParserFn) : ParserFn :=
      withFence atDepth fun _ str => p str.lengthAssumingAscii -- `str` is made up of all `':'`

    withFencePos (atDepth : Nat) (p : Position → ParserFn) : ParserFn :=
      withFence atDepth fun info _ c s => p (c.fileMap.toPosition info.getPos?.get!) c s

    withIndentColumn (atDepth : Nat) (p : Nat → ParserFn) : ParserFn :=
      withFence atDepth fun info _ c s =>
        let col := c.fileMap.toPosition info.getPos?.get! |>.column
        p col c s

    guardOpenerSize : ParserFn := withFenceSize 0 fun x =>
        if let some m := ctxt.maxDirective then
          if x < m then skipFn else fun _ s => s.mkError "Too many ':'s here"
        else skipFn

    closeFence (line width : Nat) :=
      let str := String.ofList (.replicate width ':')
      bolThen ctxt (description := s!"closing '{str}' for directive from line {line}")
        (eatSpaces >>
         asStringFn (strFn str) >> notFollowedByFn (chFn ':') "':'" >>
         eatSpaces >>
         (ignoreFn <| atomicFn (satisfyFn (· == '\n') "newline") <|> eoiFn))

  /--
  Parses a block command.
  -/
  -- This low-level definition is to get exactly the right amount of lookahead
  -- together with column tracking
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean#L1251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96aa080a442e3fe1fcd2ab25984f971a52f1574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
