# interpolatedStrNoAntiquot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2373f802d06b72d9a02c1a761aa78d6881c35774b28bd6d5374efb3db7638bdb",
  "kind": "def",
  "lexical_name": "interpolatedStrNoAntiquot",
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
  "slug": "interpolatedstrnoantiquot--20f2c524118fb0b474342b7d",
  "source": {
    "blob": "efe4542d1ea511fbb01c8ceb19220aaa02bee090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20f2c524118fb0b474342b7dae37def289cc4e27e89319f483fc96557a724097",
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

Occurrence: `declaration:2373f802d06b72d9a02c1a761aa78d6881c35774b28bd6d5374efb3db7638bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def interpolatedStrNoAntiquot (p : Parser) : Parser := {
  fn   := interpolatedStrFn (withoutPosition p).fn,
  info := mkAtomicInfo "interpolatedStr"
}

/-- The parser `interpolatedStr(p)` parses a string literal like `"foo"` (see `str`), but the string
may also contain `{}` escapes, and within the escapes the parser `p` is used. For example,
`interpolatedStr(term)` will parse `"foo {2 + 2}"`, where `2 + 2` is parsed as a term rather than
as a string. Note that the full Lean term grammar is available here, including string literals,
so for example `"foo {"bar" ++ "baz"}"` is a legal interpolated string (which evaluates to
`foo barbaz`).

This parser has arity 1, and returns a `interpolatedStrKind` with an odd number of arguments,
alternating between chunks of literal text and results from `p`. The literal chunks contain
uninterpreted substrings of the input. For example, `"foo\n{2 + 2}"` would have three arguments:
an atom `"foo\n{`, the parsed `2 + 2` term, and then the atom `}"`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StrInterpolation/Variantc0e9da00b79adcf1ff7cd30ae2e21c70df0756419206101c79478fa80c65fdea.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efe4542d1ea511fbb01c8ceb19220aaa02bee090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
