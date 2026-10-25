# numeralFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5e5192e00753e76fa001e36468732ff14828e2cf892cd3f7452f777bdedc490",
  "kind": "def",
  "lexical_name": "numeralFn",
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
  "slug": "numeralfn--7b33567fffa63b48b2059ea2",
  "source": {
    "blob": "583d41ebae995739c5b1d9aa489e17bb2361e870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b33567fffa63b48b2059ea2b0467e4b6af1eabedbea5a03095a470df2adcd2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5e5192e00753e76fa001e36468732ff14828e2cf892cd3f7452f777bdedc490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def numeralFn : ParserFn := atomicFn fun c s =>
  let startPos := s.pos
  let expected := ["integer", "float", "date-time"]
  if h : c.atEnd s.pos then
    s.mkEOIError expected
  else
    let curr := c.get' s.pos h
    if curr == '0' then
      let s := s.next' c startPos h
      if h : c.atEnd s.pos then
        pushLit `Lake.Toml.decInt startPos skipFn c s
      else
        let curr := c.get' s.pos h
        if curr == 'b' then
          let s := s.next' c s.pos h
          let s := sepByChar1Fn isBinDigit '_' ["binary integer"] c s
          if s.hasError then s else
          pushLit `Lake.Toml.binNum startPos skipFn c s
        else if curr == 'o' then
          let s := s.next' c s.pos h
          let s := sepByChar1Fn isOctDigit '_' ["octal integer"] c s
          if s.hasError then s else
          pushLit `Lake.Toml.octNum startPos skipFn c s
        else if curr == 'x' then
          let s := s.next' c s.pos h
          let s := sepByChar1Fn isHexDigit '_' ["hexadecimal integer"] c s
          if s.hasError then s else
          pushLit `Lake.Toml.hexNum startPos skipFn c s
        else if curr.isDigit then
          let s := s.next' c s.pos h
          let s := (chFn ':' >> timeAuxFn false) c s
          if s.hasError then s else
          pushLit `Lake.Toml.dateTime startPos skipFn c s
        else
          decNumberTailAuxFn startPos curr (c.next' s.pos h) c s
    else if curr.isDigit then
      decNumeralAuxFn startPos c (s.next' c s.pos h)
    else if curr == '+' || curr == '-' then
      decimalFn startPos c (s.next' c s.pos h)
    else if curr == 'i' then
      infAuxFn startPos c (s.next' c s.pos h)
    else if curr == 'n' then
      nanAuxFn startPos c (s.next' c s.pos h)
    else
      s.mkUnexpectedError s!"unexpected '{curr}'" expected

--------------------------------------------------------------------------------
/-! ## Parsers -/
--------------------------------------------------------------------------------

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583d41ebae995739c5b1d9aa489e17bb2361e870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
