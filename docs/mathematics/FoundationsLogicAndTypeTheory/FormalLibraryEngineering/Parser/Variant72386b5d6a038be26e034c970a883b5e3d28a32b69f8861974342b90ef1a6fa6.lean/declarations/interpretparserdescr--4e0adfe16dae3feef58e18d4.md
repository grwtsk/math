# interpretParserDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14d24c133f082efe8a9602aeacfb91162d39cf46e77f3542ee22852770d170c8",
  "kind": "def",
  "lexical_name": "interpretParserDescr",
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
  "slug": "interpretparserdescr--4e0adfe16dae3feef58e18d4",
  "source": {
    "blob": "ff5651ecde581d6c36679c780e22ecb345785870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e0adfe16dae3feef58e18d459163dd357e6ac46534834dd871938ccb96211a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14d24c133f082efe8a9602aeacfb91162d39cf46e77f3542ee22852770d170c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def interpretParserDescr : ParserDescr → CoreM Parenthesizer
  | ParserDescr.const n                             => getConstAlias parenthesizerAliasesRef n
  | ParserDescr.unary n d                           => return (← getUnaryAlias parenthesizerAliasesRef n) (← interpretParserDescr d)
  | ParserDescr.binary n d₁ d₂                      => return (← getBinaryAlias parenthesizerAliasesRef n) (← interpretParserDescr d₁) (← interpretParserDescr d₂)
  | ParserDescr.node k prec d                       => return leadingNode.parenthesizer k prec (← interpretParserDescr d)
  | ParserDescr.nodeWithAntiquot n k d              => return withAntiquot.parenthesizer (mkAntiquot.parenthesizer' n k (anonymous := true)) <|
                                                                node.parenthesizer k (← interpretParserDescr d)
  | ParserDescr.sepBy p sep psep trail              => return sepBy.parenthesizer (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.sepBy1 p sep psep trail             => return sepBy1.parenthesizer (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.trailingNode k prec lhsPrec d       => return trailingNode.parenthesizer k prec lhsPrec (← interpretParserDescr d)
  | ParserDescr.symbol tk                           => return symbol.parenthesizer tk
  | ParserDescr.nonReservedSymbol tk includeIdent   => return nonReservedSymbol.parenthesizer tk includeIdent
  | ParserDescr.unicodeSymbol tk asciiTk preserve   => return unicodeSymbol.parenthesizer tk asciiTk preserve
  | ParserDescr.parser constName                    => combinatorParenthesizerAttribute.runDeclFor constName
  | ParserDescr.cat catName prec                    => return categoryParser.parenthesizer catName prec

end Parenthesizer

namespace Formatter

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_mk_antiquot_formatter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff5651ecde581d6c36679c780e22ecb345785870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
