# interpretParserDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aac2fc6afea4ea02fa122a34ad6bad787c4026e5f9824426a77067f7daf8caf3",
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
  "slug": "interpretparserdescr--f0f97b59efb2a43f274f0fac",
  "source": {
    "blob": "931c55b498bade448473a27e80ed0c704435239f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0f97b59efb2a43f274f0fac7723d867cedc624a55de1b2259d2535eb76b65fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aac2fc6afea4ea02fa122a34ad6bad787c4026e5f9824426a77067f7daf8caf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def interpretParserDescr : ParserDescr → CoreM Formatter
  | ParserDescr.const n                             => getConstAlias formatterAliasesRef n
  | ParserDescr.unary n d                           => return (← getUnaryAlias formatterAliasesRef n) (← interpretParserDescr d)
  | ParserDescr.binary n d₁ d₂                      => return (← getBinaryAlias formatterAliasesRef n) (← interpretParserDescr d₁) (← interpretParserDescr d₂)
  | ParserDescr.node k _ d                          => return node.formatter k (← interpretParserDescr d)
  | ParserDescr.nodeWithAntiquot n k d              => return withAntiquot.formatter (mkAntiquot.formatter' n k (anonymous := true)) <|
                                                                node.formatter k (← interpretParserDescr d)
  | ParserDescr.sepBy p sep psep trail              => return sepBy.formatter (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.sepBy1 p sep psep trail             => return sepBy1.formatter (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.trailingNode k prec lhsPrec d       => return trailingNode.formatter k prec lhsPrec (← interpretParserDescr d)
  | ParserDescr.symbol tk                           => return symbol.formatter tk
  | ParserDescr.nonReservedSymbol tk _              => return nonReservedSymbol.formatter tk
  | ParserDescr.unicodeSymbol tk asciiTk preserve   => return unicodeSymbol.formatter tk asciiTk preserve
  | ParserDescr.parser constName                    => combinatorFormatterAttribute.runDeclFor constName
  | ParserDescr.cat catName _                       => return categoryParser.formatter catName

end Formatter
end PrettyPrinter
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931c55b498bade448473a27e80ed0c704435239f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
