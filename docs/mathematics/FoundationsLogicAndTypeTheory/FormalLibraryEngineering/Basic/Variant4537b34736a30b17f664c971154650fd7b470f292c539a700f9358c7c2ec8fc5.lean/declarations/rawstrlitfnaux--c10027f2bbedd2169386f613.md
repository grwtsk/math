# rawStrLitFnAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3572c349dde56c33d7125cfe1cf6f417a6a968a6b23de91558e4819fd8f2751d",
  "kind": "def",
  "lexical_name": "rawStrLitFnAux",
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
  "slug": "rawstrlitfnaux--c10027f2bbedd2169386f613",
  "source": {
    "blob": "0c62aceb1bdb5b06756ea41f268464313ddf7d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 758,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10027f2bbedd2169386f613d710babd40f86e919f5d9c13d3be76159859162b",
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

Occurrence: `declaration:3572c349dde56c33d7125cfe1cf6f417a6a968a6b23de91558e4819fd8f2751d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rawStrLitFnAux (startPos : String.Pos.Raw) : ParserFn := initState 0
where
  /--
  Gives the "unterminated raw string literal" error.
  -/
  errorUnterminated (s : ParserState) := s.mkUnexpectedErrorAt "unterminated raw string literal" startPos
  /--
  Parses the `#`'s and `"` at the beginning of the raw string.
  The `num` variable counts the number of `#`s after the `r`.
  -/
  initState (num : Nat) : ParserFn := fun c s =>
    let i := s.pos
    if h : c.atEnd i then errorUnterminated s
    else
      let curr := c.get' i h
      let s    := s.setPos (c.next' i h)
      if curr == '#' then
        initState (num + 1) c s
      else if curr == '"' then
        normalState num c s
      else
        -- This should not occur, since we assume `isRawStrLitStart` succeeded.
        errorUnterminated s
  /--
  Parses characters after the first `"`. If we need to start counting `#`'s to decide if we are closing
  the raw string literal, we switch to `closingState`.
  -/
  normalState (num : Nat) : ParserFn := fun c s =>
    let i := s.pos
    if h : c.atEnd i then errorUnterminated s
    else
      let curr := c.get' i h
      let s    := s.setPos (c.next' i h)
      if curr == '\"' then
        if num == 0 then
          mkNodeToken strLitKind startPos true c s
        else
          closingState num 0 c s
      else
        normalState num c s
  /--
  Parses `#` characters immediately after a `"`.
  The `closingNum` variable counts the number of `#`s seen after the `"`.
  Note: `num > 0` since the `num = 0` case is entirely handled by `normalState`.
  -/
  closingState (num : Nat) (closingNum : Nat) : ParserFn := fun c s =>
    let i := s.pos
    if h : c.atEnd i then errorUnterminated s
    else
      let curr := c.get' i h
      let s    := s.setPos (c.next' i h)
      if curr == '#' then
        if closingNum + 1 == num then
          mkNodeToken strLitKind startPos true c s
        else
          closingState num (closingNum + 1) c s
      else if curr == '\"' then
        closingState num 0 c s
      else
        normalState num c s

/--
Parses a sequence of the form `many (many '_' >> many1 digit)`, but if `needDigit` is true the parsed result must be nonempty.

Note: this does not report that it is expecting `_` if we reach EOI or an unexpected character.
Rationale: this error happens if there is already a `_`, and while sequences of `_` are allowed, it's a bit perverse to suggest extending the sequence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62aceb1bdb5b06756ea41f268464313ddf7d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
