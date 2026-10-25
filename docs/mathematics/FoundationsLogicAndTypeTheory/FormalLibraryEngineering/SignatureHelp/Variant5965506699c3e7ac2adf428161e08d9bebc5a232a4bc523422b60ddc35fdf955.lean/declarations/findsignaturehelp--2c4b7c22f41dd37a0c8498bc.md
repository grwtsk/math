# findSignatureHelp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3cb172261dce61f1084a390815dacb5233a84254c54de310b28bd1ed1501006",
  "kind": "def",
  "lexical_name": "findSignatureHelp?",
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
  "slug": "findsignaturehelp--2c4b7c22f41dd37a0c8498bc",
  "source": {
    "blob": "d494fd8f74af1d64052c7cbddfef48d85eeb215d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c4b7c22f41dd37a0c8498bc0aaa896133cf40822a7b774721e038df7eb02771",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3cb172261dce61f1084a390815dacb5233a84254c54de310b28bd1ed1501006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findSignatureHelp? (text : FileMap) (ctx? : Option Lsp.SignatureHelpContext) (cmdStx : Syntax)
    (tree : Elab.InfoTree) (requestedPos : String.Pos.Raw) : IO (Option Lsp.SignatureHelp) := do
  -- HACK: Since comments are whitespace, the signature help can trigger on comments.
  -- This is especially annoying on end-of-line comments, as the signature help will trigger on
  -- every space in the comment.
  -- This branch avoids this particular annoyance, but doesn't prevent the signature help from
  -- triggering on other comment kinds.
  if isPositionInLineComment text requestedPos then
    return none
  let stack? := cmdStx.findStack? fun stx => Id.run do
    let some range := stx.getRangeWithTrailing? (canonicalOnly := true)
      | return false
    return range.contains requestedPos (includeStop := true)
  let some stack := stack?
    | return none
  let stack := stack.toArray.map (·.1)
  let mut candidates : Array Candidate := #[]
  for h:i in *...stack.size do
    let stx := stack[i]
    let parent := stack[i+1]?.getD .missing
    let (kind?, control) := determineCandidateKind stx parent
    if let some kind := kind? then
      candidates := candidates.push ⟨kind, stx⟩
    if control matches .stop then
      break
  -- Uses a stable sort so that we prefer inner candidates over outer candidates.
  candidates := candidates.toList.mergeSort (fun c1 c2 => c1.kind.prio >= c2.kind.prio) |>.toArray
  -- Look through all candidates until we find a signature help.
  -- This helps in cases where the priority puts terms without `TermInfo` or ones that are not
  -- applications of a `forall` in front of ones that do.
  -- This usually happens when `.termArg` candidates overshadow `.pipeArg` candidates,
  -- but the `.termArg` candidates are not semantically valid left-hand sides of applications.
  let hasHighPrioCandidate := candidates.any (·.kind.prio > CandidateKind.termArg.prio)
  for candidate in candidates do
    if candidate.kind matches .termArg && hasHighPrioCandidate then
      -- If all high prio candidates agree that there is no function application here,
      -- we trust them instead of falling back to `.termArg` candidates.
      -- This ensures that no signature help is displayed for a function that is passed as
      -- the last argument to another function.
      return none
    if let some signatureHelp ← determineSignatureHelp tree candidate.appStx then
      return some signatureHelp
  return none
where
  determineCandidateKind (stx : Syntax) (parent : Syntax)
      : Option CandidateKind × SearchControl := Id.run do
    let c kind? : Option CandidateKind × SearchControl := (kind?, .continue)
    let some tailPos := stx.getTailPos? (canonicalOnly := true)
      | return (none, .continue)
    -- If the cursor is not in the trailing range of the syntax, then we don't display a signature
    -- help. This prevents two undesirable scenarios:
    -- - Since for applications `f 0 0 0`, the `InfoTree` only contains `TermInfo` for
    --   `f` and `f 0 0 0`, we can't display accurate signature help for the sub-applications
    --   `f 0` or `f 0 0`. Hence, we only display the signature help after `f` and `f 0 0 0`,
    --   i.e. in the trailing range of the syntax of a candidate.
    -- - When the search through the syntax stack passes through a node with more than one child
    --   that is not an application, terminating the search if the cursor is on the interior of the
    --   syntax ensures that we do not display signature help for functions way outside of the
    --   current term that is being edited.
    --   We still want to display it for such complex terms if we are in the trailing range of the
    --   term since the complex term might produce a function for which we want to display a
    --   signature help.
    -- If we are ever on the interior of a term, then we will also be on the interior of terms
    -- further up in the syntax stack, as these subsume the inner term, and so we terminate
    -- the search early in this case.
    if requestedPos < tailPos then
      return (none, .stop)
    let isManualTrigger := ctx?.any (·.triggerKind matches .invoked)
    let isRetrigger := ctx?.any (·.isRetrigger)
    let isCursorAfterTailPosLine :=
      (text.toPosition requestedPos).line != (text.toPosition tailPos).line
    -- Application arguments are allowed anywhere in the trailing whitespace of a function,
    -- e.g. on successive lines, but displaying the signature help in all of those lines
    -- can be annoying (e.g. when `#check`ing a function and typing in the lines after it).
    -- Hence, we only display the signature help automatically when the cursor is on the same line
    -- as the tail position of the syntax, but allow users to display it by manually triggering
    -- the signature help (`Ctrl+Shift+Space` in VS Code). We also display it in successive lines
    -- if the user never closed it in the meantime, i.e. when the signature help was simply
    -- retriggered.
    if ! isManualTrigger && ! isRetrigger && isCursorAfterTailPosLine then
      return (none, .continue)
    if stx matches .ident .. then
      match parent with
      -- Do not yield a candidate `f` for `_ |>.f <cursor>`, `_.f <cursor>` or `.f <cursor>`.
      -- Since `f` is an `identArg` candidate, has a `TermInfo` of its own and is a subterm of
      -- these dot notations, we need to avoid picking its `TermInfo` by accident.
      | `($_ |>.$_:ident $_*) => return c none
      | `($_.$_:ident) => return c none
      | `(.$_:ident) => return c none
      | _ => return c termArg
    let .node (kind := kind) (args := args) .. := stx
      | return c none
    -- `nullKind` is usually used for grouping together arguments, so we just skip it until
    -- we have more tangible nodes at hand.
    if kind == nullKind then
      return c none
    if kind == ``Parser.Term.app then
      return c appArg
    match stx with
    | `($_ <| $_) => return c pipeArg
    | `($_ $ $_) => return c pipeArg
    | `($_ |>.$_:ident $_*) => return c pipeArg
    | `(.$_:ident) => return c termArg
    | `($_.$_:ident) => return c termArg
    | _ =>
      if args.size <= 1 then
        return c none
      return c termArg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d494fd8f74af1d64052c7cbddfef48d85eeb215d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
