# registerParserCompiler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:108a3040cc29a259fe55df6a8d82b50087b07d7767f3a0a1b3a7f9e4ccc0f8db",
  "kind": "def",
  "lexical_name": "registerParserCompiler",
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
  "slug": "registerparsercompiler--fae972a030e2b96b94ea7ad1",
  "source": {
    "blob": "8c80c6a996b2e9fc2395475ca8ae8755d34efe8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fae972a030e2b96b94ea7ad14505df2eedb2bfd5a1b0b56d268c40998668821c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:108a3040cc29a259fe55df6a8d82b50087b07d7767f3a0a1b3a7f9e4ccc0f8db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def registerParserCompiler {α} (ctx : Context α) : IO Unit := do
  Parser.registerParserAttributeHook {
    postAdd := fun catName constName builtin => withoutExporting do  -- needs to look through defs
      let info ← getConstInfo constName
      if info.type.isConstOf ``Lean.ParserDescr || info.type.isConstOf ``Lean.TrailingParserDescr then
        let d ← evalConstCheck ParserDescr `Lean.ParserDescr constName <|>
          evalConstCheck TrailingParserDescr `Lean.TrailingParserDescr constName
        compileEmbeddedParsers ctx d (builtin := builtin) |>.run'
      else
        -- `[run_builtin_parser_attribute_hooks]` => force compilation even if imported, do not apply `ctx.categoryAttr`.
        let force := catName.isAnonymous
        discard (compileParserExpr ctx (mkConst constName) (builtin := builtin) (force := force)).run'
  }

end ParserCompiler
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c80c6a996b2e9fc2395475ca8ae8755d34efe8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
