# lookaheadOrderedListIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dda936e22e41d5837de087894a57554034c8fb2c533a1950f679b1d223cb244d",
  "kind": "def",
  "lexical_name": "lookaheadOrderedListIndicator",
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
  "slug": "lookaheadorderedlistindicator--eeb60842659257079e58f9de",
  "source": {
    "blob": "e96aa080a442e3fe1fcd2ab25984f971a52f1574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1028,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eeb60842659257079e58f9de06e190bd767ae397985659565b995bf21b2d6167",
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

Occurrence: `declaration:dda936e22e41d5837de087894a57554034c8fb2c533a1950f679b1d223cb244d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1028–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def lookaheadOrderedListIndicator (ctxt : BlockCtxt) (p : OrderedListType → Int → ParserFn) :
    ParserFn := fun c s =>
  let iniPos := s.pos
  let iniSz := s.stxStack.size
  let s := (onlyBlockOpeners >> takeWhileFn (· == ' ') >> guardMinColumn ctxt.minIndent) c s
  if s.hasError then s.setPos iniPos |>.shrinkStack iniSz
  else
  let numPos := s.pos
  let s := ignoreFn (takeWhile1Fn (·.isDigit) "digits") c s
  if s.hasError then {s with pos := iniPos}.shrinkStack iniSz else
  let digits := c.extract numPos s.pos
  match digits.toNat? with
  | none => {s.mkError s!"digits, got '{digits}'" with pos := iniPos}
  | some n =>
    let i := s.pos
    if h : c.atEnd i then {s.mkEOIError with pos := iniPos}
    else
      let (s, next, type) := match c.get' i h with
        | '.' => (s.next' c i h, (chFn ' ' <|> chFn '\n'), OrderedListType.numDot)
        | ')' => (s.next' c i h, (chFn ' ' <|> chFn '\n'), OrderedListType.parenAfter)
        | other =>
          (s.setError { unexpected := s!"unexpected '{other}'", expected := ["'.'", "')'"] },
           skipFn,
           .numDot)
      if s.hasError then {s with pos := iniPos}
      else
        let s := next c s
        if s.hasError then {s with pos := iniPos}
        else
          let leading := c.mkEmptySubstringAt numPos
          let trailing := c.mkEmptySubstringAt i
          let num := Syntax.mkNumLit digits (info := .original leading numPos trailing i)
          p type n c (s.shrinkStack iniSz |>.setPos numPos |>.pushSyntax num)

/--
Succeeds when the parser is looking at an unordered list indicator.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant7bf73951882554edc3418984428ddf127ef9b5ff176769761d2ec0eea3b774ed.lean#L1028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96aa080a442e3fe1fcd2ab25984f971a52f1574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
