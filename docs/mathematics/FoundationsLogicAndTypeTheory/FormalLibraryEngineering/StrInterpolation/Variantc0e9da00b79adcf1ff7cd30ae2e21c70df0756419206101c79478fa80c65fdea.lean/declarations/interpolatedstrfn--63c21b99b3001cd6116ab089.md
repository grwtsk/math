# interpolatedStrFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6854b37e4fc49c7a6d28e5a894a9dbbae362868e4ee7a6f0d5d9715c0a4105bf",
  "kind": "def",
  "lexical_name": "interpolatedStrFn",
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
  "slug": "interpolatedstrfn--63c21b99b3001cd6116ab089",
  "source": {
    "blob": "efe4542d1ea511fbb01c8ceb19220aaa02bee090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c21b99b3001cd6116ab0892af14dbd82f29f5d14c86139b02f45f4449d9581",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6854b37e4fc49c7a6d28e5a894a9dbbae362868e4ee7a6f0d5d9715c0a4105bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def interpolatedStrFn (p : ParserFn) : ParserFn := fun c s =>
  let stackSize := s.stackSize
  let rec parse (startPos : String.Pos.Raw) (c : ParserContext) (s : ParserState) : ParserState :=
    let i := s.pos
    if c.atEnd i then
      let s := s.mkError "unterminated string literal"
      s.mkNode interpolatedStrKind stackSize
    else
      let curr := c.get i
      let s    := s.setPos (c.next i)
      if curr == '\"' then
        let s := mkNodeToken interpolatedStrLitKind startPos true c s
        s.mkNode interpolatedStrKind stackSize
      else if curr == '\\' then
        andthenFn (quotedCharCoreFn isQuotableCharForStrInterpolant true) (parse startPos) c s
      else if curr == '{' then
        let s := mkNodeToken interpolatedStrLitKind startPos true c s
        let s := p c s
        if s.hasError then s
        else
          let i := s.pos
          let curr := c.get i
          if curr == '}' then
            let s := s.setPos (c.next i)
            parse i c s
          else
            let s := s.mkError "'}'"
            s.mkNode interpolatedStrKind stackSize
      else
        parse startPos c s
  let startPos := s.pos
  if c.atEnd startPos then
    s.mkEOIError
  else
    let curr  := c.get s.pos;
    if curr != '\"' then
      s.mkError "interpolated string"
    else
      let s := s.next c startPos
      parse startPos c s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efe4542d1ea511fbb01c8ceb19220aaa02bee090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
