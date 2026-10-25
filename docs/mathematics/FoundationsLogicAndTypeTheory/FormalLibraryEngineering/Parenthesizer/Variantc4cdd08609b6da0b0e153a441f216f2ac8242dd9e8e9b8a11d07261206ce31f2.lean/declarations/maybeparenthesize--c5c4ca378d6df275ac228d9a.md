# maybeParenthesize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:909983f5d3ddf9cfffa2f98863d04eb703c7c45513c3e685b2fbe146ae823d46",
  "kind": "def",
  "lexical_name": "maybeParenthesize",
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
  "slug": "maybeparenthesize--c5c4ca378d6df275ac228d9a",
  "source": {
    "blob": "e9738d1e854c12ce303f093f67cde2a0703839fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c4ca378d6df275ac228d9ac2d01a2982454f80be77bf63121a7a7a0f36fe78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:909983f5d3ddf9cfffa2f98863d04eb703c7c45513c3e685b2fbe146ae823d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maybeParenthesize (cat : Name) (canJuxtapose : Bool) (mkParen : Syntax → Syntax) (prec : Nat) (x : ParenthesizerM Unit) : ParenthesizerM Unit := do
  let stx ← getCur
  let idx ← getIdx
  let st ← get
  -- reset precs for the recursive call
  set { stxTrav := st.stxTrav : State }
  trace[PrettyPrinter.parenthesize] "parenthesizing (cont := {(st.contPrec, st.contCat)}){indentD (format stx)}"
  x
  let { minPrec := some minPrec, trailPrec := trailPrec, trailCat := trailCat, .. } ← get
    | trace[PrettyPrinter.parenthesize] "visited a syntax tree without precedences?!{line ++ format stx}"
  trace[PrettyPrinter.parenthesize] (m!"...precedences are {prec} >? {minPrec}" ++ if canJuxtapose then m!", {(trailPrec, trailCat)} <=? {(st.contPrec, st.contCat)}" else "")
  /- Should we parenthesize?
     * Note about forceParens mode: we don't insert outermost parentheses (we use the syntax traverser parents to detect this),
       and we don't insert parentheses when we are at `maxPrec` (since this is effectively infinity).
  -/
  if (((← read).forceParens && !st.stxTrav.parents.isEmpty && minPrec < Parser.maxPrec)
      || prec > minPrec
      || canJuxtapose && match trailPrec, st.contPrec with | some trailPrec, some contPrec => trailCat == st.contCat && trailPrec <= contPrec | _, _ => false) then
      -- The recursive `visit` call, by the invariant, has moved to the preceding node. In order to parenthesize
      -- the original node, we must first move to the right, except if we already were at the left-most child in the first
      -- place.
      if idx > 0 then goRight
      let mut stx ← getCur
      -- Move leading/trailing whitespace of `stx` outside of parentheses
      if let SourceInfo.original _ pos trail endPos := stx.getHeadInfo then
        stx := stx.setHeadInfo (SourceInfo.original "".toRawSubstring pos trail endPos)
      if let SourceInfo.original lead pos _ endPos := stx.getTailInfo then
        stx := stx.setTailInfo (SourceInfo.original lead pos "".toRawSubstring endPos)
      let mut stx' := mkParen stx
      if let SourceInfo.original lead pos _ endPos := stx.getHeadInfo then
        stx' := stx'.setHeadInfo (SourceInfo.original lead pos "".toRawSubstring endPos)
      if let SourceInfo.original _ pos trail endPos := stx.getTailInfo then
        stx' := stx'.setTailInfo (SourceInfo.original "".toRawSubstring pos trail endPos)
      trace[PrettyPrinter.parenthesize] "parenthesized: {stx'.formatStx none}"
      setCur stx'
      goLeft
      -- after parenthesization, there is no more trailing parser
      modify (fun st => { st with contPrec := Parser.maxPrec, contCat := cat, trailPrec := none })
  let { trailPrec := trailPrec, .. } ← get
  -- If we already had a token at this level, keep the trailing parser. Otherwise, use the minimum of
  -- `prec` and `trailPrec`.
  if st.visitedToken then
    modify fun stP => { stP with trailPrec := st.trailPrec, trailCat := st.trailCat }
  else
    let trailPrec := match trailPrec with
    | some trailPrec => Nat.min trailPrec prec
    | _              => prec
    modify fun stP => { stP with trailPrec := trailPrec, trailCat := cat }
  modify fun stP => { stP with minPrec := st.minPrec }

/-- Adjust state and advance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9738d1e854c12ce303f093f67cde2a0703839fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
