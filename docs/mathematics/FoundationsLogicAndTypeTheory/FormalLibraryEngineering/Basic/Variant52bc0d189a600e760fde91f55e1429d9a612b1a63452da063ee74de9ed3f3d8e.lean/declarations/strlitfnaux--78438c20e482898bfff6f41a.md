# strLitFnAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:564f8e36244a43f89e99b7f726c5bd9b6db89a5c4b187c4865dae9a98ecef9aa",
  "kind": "def",
  "lexical_name": "strLitFnAux",
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
  "slug": "strlitfnaux--78438c20e482898bfff6f41a",
  "source": {
    "blob": "3825f827390f270667bcd7bdc0b5f9c353867a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 719,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78438c20e482898bfff6f41ab7542cd147a594346f22031e4e8336189e7a15d3",
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

Occurrence: `declaration:564f8e36244a43f89e99b7f726c5bd9b6db89a5c4b187c4865dae9a98ecef9aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def strLitFnAux (startPos : String.Pos.Raw) (includeWhitespace := true) : ParserFn := fun c s =>
  let i := s.pos
  if h : c.atEnd i then s.mkUnexpectedErrorAt "unterminated string literal" startPos
  else
    let curr := c.get' i h
    let s    := s.setPos (c.next' i h)
    if curr == '\"' then
      mkNodeToken strLitKind startPos includeWhitespace c s
    else if curr == '\\' then andthenFn quotedStringFn (strLitFnAux startPos) c s
    else strLitFnAux startPos includeWhitespace c s

/--
Raw strings have the syntax `r##...#"..."#...##` with zero or more `#`'s.
If we are looking at a valid start to a raw string (`r##...#"`),
returns true.
We assume `i` begins at the position immediately after `r`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3825f827390f270667bcd7bdc0b5f9c353867a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
