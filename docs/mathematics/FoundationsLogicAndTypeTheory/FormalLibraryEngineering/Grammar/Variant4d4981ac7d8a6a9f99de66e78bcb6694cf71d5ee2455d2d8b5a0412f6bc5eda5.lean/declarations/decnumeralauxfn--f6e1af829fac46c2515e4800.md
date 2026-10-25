# decNumeralAuxFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b03242de93e804fc35263eea985b2591060a2298d2e0fae565f6bf1fde009f8",
  "kind": "def",
  "lexical_name": "decNumeralAuxFn",
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
  "slug": "decnumeralauxfn--f6e1af829fac46c2515e4800",
  "source": {
    "blob": "c4b0dbba105840ba74ca49718e30d8819f89c667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6e1af829fac46c2515e4800a1fefb4b8bedb5d023bfb531f5cf2acd83e5e859",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b03242de93e804fc35263eea985b2591060a2298d2e0fae565f6bf1fde009f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decNumeralAuxFn (startPos : String.Pos.Raw) : ParserFn := fun c s =>
  if h : c.atEnd s.pos then
    s.mkEOIError ["decimal integer", "float", "date-time"]
  else -- `NN`
    let curr := c.get' s.pos h
    let nextPos := c.next' s.pos h
    if curr.isDigit then
      let s := s.setPos nextPos
      if h : c.atEnd s.pos then
        pushLit `Lake.Toml.decInt startPos skipFn c s
      else
        let curr := c.get' s.pos h
        let nextPos := c.next' s.pos h
        if curr == ':' then -- `HH:`
          let s := s.setPos nextPos
          let s := timeAuxFn false c s
          if s.hasError then s else
          pushLit `Lake.Toml.dateTime startPos skipFn c s
        else if curr.isDigit then -- `NNN`
          let s := s.setPos nextPos
          if h : c.atEnd s.pos then
            pushLit `Lake.Toml.decInt startPos skipFn c s
          else
            let curr := c.get' s.pos h
            let nextPos := c.next' s.pos h
            if curr.isDigit then -- `NNNN`
              let s := s.setPos nextPos
              if h : c.atEnd nextPos then
                pushLit `Lake.Toml.decInt startPos skipFn c s
              else
                let curr := c.get' s.pos h
                let nextPos := c.next' s.pos h
                if curr == '-' then -- `YYYY-`
                  let s := s.setPos nextPos
                  let s := dateTimeAuxFn c s
                  if s.hasError then s else
                  pushLit `Lake.Toml.dateTime startPos skipFn c s
                else if curr.isDigit then
                  let s := s.setPos nextPos
                  decNumberAuxFn startPos c s
                else
                  decNumberSepFn startPos curr nextPos c s
            else
              decNumberSepFn startPos curr nextPos c s
        else
          decNumberSepFn startPos curr nextPos c s
    else
      decNumberSepFn startPos curr nextPos c s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b0dbba105840ba74ca49718e30d8819f89c667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
