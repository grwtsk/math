# parallelScanAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de675b2ef75d313651c824f50f027b93d2ab55d66d3c1640e95384da21d30e5c",
  "kind": "def",
  "lexical_name": "parallelScanAux",
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
  "slug": "parallelscanaux--aa9f93504af5ec0582183f99",
  "source": {
    "blob": "862bf459d4369a75a40c57fd512fb4b8dbf9ea33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa9f93504af5ec0582183f99e74846e150d1129bbf7be7a0d11a8c49a714576b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de675b2ef75d313651c824f50f027b93d2ab55d66d3c1640e95384da21d30e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parallelScanAux (as : Array FormatError) (L M : String.Slice) : Array FormatError := Id.run do
  if M.trimAscii.isEmpty then as else
  -- We try as hard as possible to scan the strings one character at a time.
  -- However, single line comments introduced with `--` pretty-print differently than `/--`.
  -- So, we first look ahead for `/--`: the linter will later ignore doc-strings, so it does not
  -- matter too much what we do here and we simply drop `/--` from the original string and the
  -- pretty-printed one, before continuing.
  -- Next, if we already dealt with `/--`, finding a `--` means that this is a single line comment
  -- (or possibly a comment embedded in a doc-string, which is ok, since we eventually discard
  -- doc-strings).  In this case, we drop everything until the following line break in the
  -- original syntax, and for the same amount of characters in the pretty-printed one, since the
  -- pretty-printer *erases* the line break at the end of a single line comment.
  if let (some newL, some newM) := (L.dropPrefix? "/--", M.dropPrefix? "/--") then
    parallelScanAux as newL newM
  else if L.startsWith "--" then
    let (pos, diff) := Id.run do
      let mut diff := 0
      for ⟨pos, h⟩ in L.positions do
        if pos.get h == '\n' then
          return (pos, diff)
        diff := diff + 1
      return (L.endPos, diff)

    let newL := L.sliceFrom pos
    -- Assumption: if `L` contains an embedded inline comment, so does `M`
    -- (modulo additional whitespace).
    -- This holds because we call this function with `M` being a pretty-printed version of `L`.
    -- If the pretty-printer changes in the future, this code may need to be adjusted.
    let newM := M.dropWhile (· != '-') |>.drop diff
    parallelScanAux as newL.trimAsciiStart newM.trimAsciiStart
  else if let some newL := L.dropPrefix? "-/" then
    let newL := newL.trimAsciiStart
    let newM := M.drop 2 |>.trimAsciiStart
    parallelScanAux as newL newM
  else
    let ls := L.drop 1
    let ms := M.drop 1
    let m := M.front
    match L.front with
    | ' ' =>
      if m.isWhitespace then
        parallelScanAux as ls ms.trimAsciiStart
      else
        parallelScanAux (pushFormatError as (mkFormatError L.copy M.copy "extra space")) ls M
    | '\n' =>
      if m.isWhitespace then
        parallelScanAux as ls.trimAsciiStart ms.trimAsciiStart
      else
        parallelScanAux
          (pushFormatError as (mkFormatError L.copy M.copy "remove line break")) ls.trimAsciiStart M
    | l => -- `l` is not whitespace
      if l == m then
        parallelScanAux as ls ms
      else if m.isWhitespace then
        parallelScanAux
          (pushFormatError as (mkFormatError L.copy M.copy "missing space")) L ms.trimAsciiStart
      else
        -- If this code is reached, then `L` and `M` differ by something other than whitespace.
        -- This should not happen in practice.
        pushFormatError as (mkFormatError ls.copy ms.copy "Oh no! (Unreachable?)")

@[inherit_doc parallelScanAux]
def parallelScan (src fmt : String) : Array FormatError :=
  parallelScanAux ∅ src fmt

namespace Style.Whitespace

/--
`unlintedNodes` contains the `SyntaxNodeKind`s for which there is no clear formatting preference:
if they appear in surface syntax, the linter will ignore formatting.

Currently, the unlined nodes are mostly related to `Subtype`, `Set` and `Finset` notation and
list notation.
-/
abbrev unlintedNodes := #[
  -- # set-like notations, have extra spaces around the braces `{` `}`

  -- subtype, the pretty-printer prefers `{ a // b }`
  ``«term{_:_//_}»,
  -- set notation, the pretty-printer prefers `{ a | b }`
  `«term{_}»,
  -- empty set, the pretty-printer prefers `{ }`
  ``«term{}»,
  -- set builder notation, the pretty-printer prefers `{ a : X | p a }`
  `Mathlib.Meta.setBuilder,

  -- # misc exceptions

  -- We ignore literal strings.
  `str,

  -- list notation, the pretty-printer prefers `a :: b`
  ``«term_::_»,

  -- negation, the pretty-printer prefers `¬a`
  ``«term¬_»,

  -- declaration name, avoids dealing with guillemets pairs `«»`
  ``Parser.Command.declId,

  `Mathlib.Tactic.superscriptTerm, `Mathlib.Tactic.subscript,

  -- notation for `Bundle.TotalSpace.proj`, the total space of a bundle
  -- the pretty-printer prefers `π FE` over `π F E` (which we want)
  `Bundle.termπ__,

  -- notation for `Finset.slice`, the pretty-printer prefers `𝒜 #r` over `𝒜 # r` (mathlib style)
  `Finset.«term_#_»,

  -- The docString linter already takes care of formatting doc-strings.
  ``Parser.Command.docComment,

  -- The pretty-printer adds a space between the backticks and the actual name.
  ``Parser.Term.doubleQuotedName,
  ]

/--
Given an array `a` of `SyntaxNodeKind`s, we accumulate the ranges of the syntax nodes of the
input syntax whose kind is in `a`.

The linter uses this information to avoid emitting a warning for nodes with kind contained in
`unlintedNodes`.
-/
def getUnlintedRanges (a : Array SyntaxNodeKind) :
    Std.HashSet Lean.Syntax.Range → Syntax → Std.HashSet Lean.Syntax.Range
  | curr, s@(.node _ kind args) =>
    let new := args.foldl (init := curr) (·.union <| getUnlintedRanges a curr ·)
    if a.contains kind then
      new.insert (s.getRange?.getD default)
    else
      new
  -- We special case `where` statements, since they may be followed by an indented doc-string.
  | curr, .atom info "where" =>
    if let some trail := info.getRangeWithTrailing? then
      curr.insert trail
    else
      curr
  | curr, _ => curr

/-- Given a `HashSet` of `Lean.Syntax.Range`s `rgs` and a further `Lean.Syntax.Range` `rg`,
`isOutside rgs rg` returns `false` if and only if `rgs` contains a range that completely contains
`rg`.

The linter uses this to figure out which nodes should be ignored.
-/
def isOutside (rgs : Std.HashSet Lean.Syntax.Range) (rg : Lean.Syntax.Range) : Bool :=
  rgs.all fun {start := a, stop := b} ↦ !(a ≤ rg.start && rg.stop ≤ b)

/-- `mkWindow orig start ctx` extracts from `orig` a string that starts at the first
non-whitespace character before `start`, then expands to cover `ctx` more characters
and continues still until the first non-whitespace character.

In essence, it extracts the substring of `orig` that begins at `start`, continues for `ctx`
characters plus expands left and right until it encounters the first whitespace character,
to avoid cutting into "words".

*Note*. `start` is the number of characters *from the right* where our focus is!
-/
public def mkWindow (orig : String) (start ctx : Nat) : String :=
  let head := orig.dropEnd (start + 1) -- `orig`, up to one character before the discrepancy
  let middle := orig.takeEnd (start + 1)
  let headCtx := head.takeEndWhile (!·.isWhitespace)
  let tail := middle.drop ctx |>.takeWhile (!·.isWhitespace)
  s!"{headCtx}{middle.take ctx}{tail}"

@[inherit_doc Mathlib.Linter.linter.style.whitespace]
def whitespaceLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless Linter.getLinterValue linter.style.whitespace (← getLinterOptions) do
    return
  if (← get).messages.hasErrors then
    return
  if stx.find? (·.isOfKind ``runCmd) |>.isSome then
    return
  -- If a command does not start on the first column, emit a warning.
  if let some pos := stx.getPos? then
    let colStart := ((← getFileMap).toPosition pos).column
    if colStart ≠ 0 then
      Linter.logLint linter.style.whitespace stx
        m!"'{stx}' starts on column {colStart}, \
          but all commands should start at the beginning of the line."
  -- We skip `macro_rules`, since they cause parsing issues.
  if stx.find? (·.isOfKind `Lean.Parser.Command.macro_rules) |>.isSome then
    return
  let some upTo := CommandStart.endPos stx | return

  let fmt : Option Format ←
      try
        liftCoreM <| some <$> PrettyPrinter.ppCategory `command stx
      catch _ =>
        Linter.logLintIf linter.style.whitespace.verbose (stx.getHead?.getD stx)
          m!"The `whitespace` linter had some parsing issues: \
            feel free to silence it and report this error!"
        pure none
  if let some fmt := fmt then
    let st := fmt.pretty
    let origSubstring := stx.getSubstring?.getD default
    let orig := origSubstring.toString

    let scan := parallelScan orig st

    let docStringEnd := stx.find? (·.isOfKind ``Parser.Command.docComment) |>.getD default
    let docStringEnd := docStringEnd.getTailPos? |>.getD default
    let forbidden := getUnlintedRanges unlintedNodes ∅ stx
    for s in scan do
      let center := origSubstring.stopPos.unoffsetBy s.srcEndPos
      let rg : Lean.Syntax.Range :=
        ⟨center, center |>.offsetBy s.srcEndPos |>.unoffsetBy s.srcStartPos |>.increaseBy 1⟩
      if s.msg.startsWith "Oh no" then
        Linter.logLintIf linter.style.whitespace.verbose (.ofRange rg)
          m!"This should not have happened: please report this issue!"
        Linter.logLintIf linter.style.whitespace.verbose (.ofRange rg)
          m!"Formatted string:\n{fmt}\nOriginal string:\n{origSubstring}"
        continue
      unless isOutside forbidden rg do
        continue
      unless rg.stop ≤ upTo do return
      unless docStringEnd ≤ rg.start do return

      let ctx := 4 -- the number of characters after the mismatch that linter prints
      let srcWindow := mkWindow orig s.srcNat (ctx + s.length)
      let expectedWindow := mkWindow st s.fmtPos (ctx + (1))
      Linter.logLint linter.style.whitespace (.ofRange rg)
        m!"{s.msg} in the source\n\n\
          This part of the code\n  '{srcWindow}'\n\
          should be written as\n  '{expectedWindow}'\n"
      Linter.logLintIf linter.style.whitespace.verbose (.ofRange rg)
        m!"Formatted string:\n{fmt}\nOriginal string:\n{origSubstring}"

initialize addLinter whitespaceLinter

end Style.Whitespace

end Mathlib.Linter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862bf459d4369a75a40c57fd512fb4b8dbf9ea33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
