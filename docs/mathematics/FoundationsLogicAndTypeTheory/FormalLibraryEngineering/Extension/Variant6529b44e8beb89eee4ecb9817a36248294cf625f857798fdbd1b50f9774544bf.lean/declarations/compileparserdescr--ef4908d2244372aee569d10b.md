# compileParserDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c4dbadc3d8677dc5b058b563ef2164cf0e47cb973c47d3a8a17384f071bd878",
  "kind": "def",
  "lexical_name": "compileParserDescr",
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
  "slug": "compileparserdescr--ef4908d2244372aee569d10b",
  "source": {
    "blob": "8df994b39cd63eb47910c8816869e2a4091eb510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef4908d2244372aee569d10b273bf33de093d4be4354b8fde8dd5f3735a310cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c4dbadc3d8677dc5b058b563ef2164cf0e47cb973c47d3a8a17384f071bd878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compileParserDescr (categories : ParserCategories) (d : ParserDescr) : ImportM Parser :=
  let rec visit : ParserDescr → ImportM Parser
    | ParserDescr.const n                             => getConstAlias parserAliasesRef n
    | ParserDescr.unary n d                           => return (← getUnaryAlias parserAliasesRef n) (← visit d)
    | ParserDescr.binary n d₁ d₂                      => return (← getBinaryAlias parserAliasesRef n) (← visit d₁) (← visit d₂)
    | ParserDescr.node k prec d                       => return leadingNode k prec (← visit d)
    | ParserDescr.nodeWithAntiquot n k d              => return withCache k (nodeWithAntiquot n k (← visit d) (anonymous := true))
    | ParserDescr.sepBy p sep psep trail              => return sepBy (← visit p) sep (← visit psep) trail
    | ParserDescr.sepBy1 p sep psep trail             => return sepBy1 (← visit p) sep (← visit psep) trail
    | ParserDescr.trailingNode k prec lhsPrec d       => return trailingNode k prec lhsPrec (← visit d)
    | ParserDescr.symbol tk                           => return symbol tk
    | ParserDescr.nonReservedSymbol tk includeIdent   => return nonReservedSymbol tk includeIdent
    | ParserDescr.unicodeSymbol tk asciiTk preserve   => return unicodeSymbol tk asciiTk preserve
    | ParserDescr.parser constName                    => do
      let (_, p) ← mkParserOfConstantAux constName visit;
      pure p
    | ParserDescr.cat catName prec                    =>
      match getCategory categories catName with
      | some _ => pure $ categoryParser catName prec
      | none   => IO.ofExcept $ throwUnknownParserCategory catName
  visit d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df994b39cd63eb47910c8816869e2a4091eb510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
