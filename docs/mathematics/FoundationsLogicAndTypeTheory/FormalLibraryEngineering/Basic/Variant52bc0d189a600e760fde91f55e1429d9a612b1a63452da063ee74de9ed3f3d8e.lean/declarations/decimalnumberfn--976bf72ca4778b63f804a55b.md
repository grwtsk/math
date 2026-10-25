# decimalNumberFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c9fd66337db0b23021a7a9fdfa661ea3bfb65fb570bb509b5b25689a32ce4b6",
  "kind": "def",
  "lexical_name": "decimalNumberFn",
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
  "slug": "decimalnumberfn--976bf72ca4778b63f804a55b",
  "source": {
    "blob": "3825f827390f270667bcd7bdc0b5f9c353867a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 883,
    "line": 831,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:976bf72ca4778b63f804a55b5cfbe42cdc4fa88e4e970dd179697702d4caec49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c9fd66337db0b23021a7a9fdfa661ea3bfb65fb570bb509b5b25689a32ce4b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–883.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decimalNumberFn (startPos : String.Pos.Raw) (includeWhitespace := true)
    (c : ParserContext) (s : ParserState) : ParserState :=
  let s := takeDigitsFn (fun c => c.isDigit) "decimal number" false c s
  let i := s.pos
  if h : c.atEnd i then
    mkNodeToken numLitKind startPos true c s
  else
    let curr := c.get' i h
    let j := c.next i
    if ∃ hj : ¬ c.atEnd j, curr = '.' && c.get' j hj = '.' then
      mkNodeToken numLitKind startPos includeWhitespace c s
    else if curr == '.' || curr == 'e' || curr == 'E' then
      parseScientific s
    else
      mkNodeToken numLitKind startPos includeWhitespace c s
where
  parseScientific s :=
    let (s, hasBareDot) := parseOptDot s
    let s := parseOptExp s hasBareDot
    mkNodeToken scientificLitKind startPos includeWhitespace c s

  parseOptDot s :=
    let i     := s.pos
    let curr  := c.get i
    if curr == '.' then
      let i    := c.next i
      let curr := c.get i
      if curr.isDigit then
        (takeDigitsFn (fun c => c.isDigit) "decimal number" false c (s.setPos i), false)
      else
        (s.setPos i, true)
    else
      (s, false)

  parseOptExp s hasBareDot :=
    if h : c.atEnd s.pos then
      s
    else
      let i     := s.pos
      let curr  := c.get' i h
      if curr == 'e' || curr == 'E' then
        let i    := c.next i
        let i    := if c.get i == '-' || c.get i == '+' then c.next i else i
        let curr := c.get i
        if curr.isDigit then
          takeDigitsFn (fun c => c.isDigit) "decimal number" false c (s.setPos i)
        else
          s.mkUnexpectedError "missing exponent digits in scientific literal"
      else if hasBareDot && (isIdFirst curr || isIdBeginEscape curr) then
          (s.setPos startPos).mkUnexpectedError s!"unexpected identifier after decimal point; consider parenthesizing the number"
      else
        s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3825f827390f270667bcd7bdc0b5f9c353867a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
