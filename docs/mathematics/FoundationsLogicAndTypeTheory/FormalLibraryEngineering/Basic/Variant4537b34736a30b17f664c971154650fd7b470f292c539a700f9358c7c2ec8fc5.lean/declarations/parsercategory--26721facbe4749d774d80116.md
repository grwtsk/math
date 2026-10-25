# ParserCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4163ae0d7382d25cadbbbec5274f1670e2c1a458f5354770d6f4e76c2e6c745",
  "kind": "structure",
  "lexical_name": "ParserCategory",
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
  "slug": "parsercategory--26721facbe4749d774d80116",
  "source": {
    "blob": "0c62aceb1bdb5b06756ea41f268464313ddf7d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1702,
    "line": 1683,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26721facbe4749d774d80116d67b5fb4f3f9d7b4627806e852e43c3beaaa2034",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4163ae0d7382d25cadbbbec5274f1670e2c1a458f5354770d6f4e76c2e6c745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1683–1702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ParserCategory where
  /-- The name of a declaration which will be used as the target of
  go-to-definition queries and from which doc strings will be extracted.
  This is a dummy declaration of type `Lean.Parser.Category`
  created by `declare_syntax_cat`, but for builtin categories the declaration
  is made manually and passed to `registerBuiltinParserAttribute`. -/
  declName : Name
  /-- The list of syntax nodes that can parse into this category.
  This can be used to list all syntaxes in the category. -/
  kinds    : SyntaxNodeKindSet := {}
  /-- The parsing tables, which consist of a dynamic set of parser
  functions based on the syntaxes that have been declared so far. -/
  tables   : PrattParsingTables := {}
  /-- The `LeadingIdentBehavior`, which specifies how the parsing table
  lookup function behaves for the first identifier to be parsed.
  This is used by the `tactic` parser to avoid creating a reserved
  symbol for each builtin tactic (e.g., `apply`, `assumption`, etc.). -/
  behavior : LeadingIdentBehavior
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean#L1683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62aceb1bdb5b06756ea41f268464313ddf7d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
