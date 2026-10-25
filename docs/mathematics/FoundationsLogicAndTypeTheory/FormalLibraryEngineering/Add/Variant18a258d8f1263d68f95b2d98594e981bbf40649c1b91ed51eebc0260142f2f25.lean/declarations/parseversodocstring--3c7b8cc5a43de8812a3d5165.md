# parseVersoDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2eb74dac7c259addd8617dbee9bfd06a4e6a2bef30bb240aeb3c419abee8d67",
  "kind": "def",
  "lexical_name": "parseVersoDocString",
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
  "slug": "parseversodocstring--3c7b8cc5a43de8812a3d5165",
  "source": {
    "blob": "82eb3405a1d5338b927f8d59030245e047e9fe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c7b8cc5a43de8812a3d5165bb8977db729cb82713c8bf298cd6980ea8c6a0d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2eb74dac7c259addd8617dbee9bfd06a4e6a2bef30bb240aeb3c419abee8d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseVersoDocString
    [Monad m] [MonadFileMap m] [MonadError m] [MonadEnv m] [MonadOptions m] [MonadLog m]
    [MonadResolveName m]
    (docComment : TSyntax [``docComment, ``moduleDoc]) : m (Option Syntax) := do
  if docComment.raw.getKind == ``docComment then
    match docComment.raw[0] with
    | docStx@(.node _ ``versoCommentBody _) => return docStx[1]?
    | _ => pure ()
  let text ← getFileMap
  -- TODO fallback to string version without nice interactivity
  let some startPos := docComment.raw[1].getPos? (canonicalOnly := true)
    | throwErrorAt docComment m!"Documentation comment has no source location, cannot parse"
  let some endPos := docComment.raw[1].getTailPos? (canonicalOnly := true)
    | throwErrorAt docComment m!"Documentation comment has no source location, cannot parse"

  -- Skip trailing `-/`
  let endPos := String.Pos.Raw.prev text.source <| endPos.prev text.source
  let endPos := if endPos ≤ text.source.rawEndPos then endPos else text.source.rawEndPos
  have endPos_valid : endPos ≤ text.source.rawEndPos := by
    unfold endPos
    split <;> simp [*]

  let env ← getEnv
  let ictx : InputContext :=
    .mk text.source (← getFileName) (fileMap := text)
      (endPos := endPos) (endPos_valid := endPos_valid)
  let pmctx : ParserModuleContext := {
    env,
    options := ← getOptions,
    currNamespace := (← getCurrNamespace),
    openDecls := (← getOpenDecls)
  }
  let blockCtxt := .forDocString text startPos endPos
  let s := mkParserState text.source |>.setPos startPos
  -- TODO parse one block at a time for error recovery purposes
  let s := (Doc.Parser.document blockCtxt).run ictx pmctx (getTokenTable env) s

  -- If document succeeded but didn't consume everything, try parsing a block at the stopped
  -- position to get the actual error message (document uses sepByFn which swallows errors).
  let s :=
    if s.allErrors.isEmpty && !ictx.atEnd s.pos then
      (Doc.Parser.block {}).run ictx pmctx (getTokenTable env) (mkParserState text.source |>.setPos s.pos)
    else s
  if !s.allErrors.isEmpty then
    for (pos, _, err) in s.allErrors do
      logMessage {
        fileName := (← getFileName),
        pos := text.toPosition pos,
        -- TODO end position
        data := err.toString
      }
    return none
  if !ictx.atEnd s.pos then
    -- Fallback: block parse also didn't produce an error
    logMessage {
      fileName := (← getFileName),
      pos := text.toPosition s.pos,
      data := s!"unexpected '{ictx.get s.pos}'"
    }
    return none
  return some s.stxStack.back



open Lean.Parser Command in
/--
Reports parse errors from a Verso docstring parse failure.

When Verso docstring parsing fails at parse time, a `parseFailure` node is created containing the
raw text, because emitting an error at that stage could lead to unwanted parser backtracking. This
function reports the actual error messages with proper source positions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82eb3405a1d5338b927f8d59030245e047e9fe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
