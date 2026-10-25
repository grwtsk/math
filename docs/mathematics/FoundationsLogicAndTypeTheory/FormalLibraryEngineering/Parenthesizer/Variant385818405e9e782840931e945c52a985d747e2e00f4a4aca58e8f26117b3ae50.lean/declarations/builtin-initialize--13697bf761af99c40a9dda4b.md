# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e5d20bd760d1dec87a5e060c47b95b6f5b6fff81afca3d891f7fe8760fcbd9d",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--13697bf761af99c40a9dda4b",
  "source": {
    "blob": "67adf57b2873a885e7d24eeabe4e67d7843c03de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13697bf761af99c40a9dda4b40fd5da4f51d3ddb4faf7fe642d38729da264faf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e5d20bd760d1dec87a5e060c47b95b6f5b6fff81afca3d891f7fe8760fcbd9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe builtin_initialize categoryParenthesizerAttribute : KeyedDeclsAttribute CategoryParenthesizer ←
  KeyedDeclsAttribute.init {
    builtinName := `builtin_category_parenthesizer,
    name := `category_parenthesizer,
    descr := "Register a parenthesizer for a syntax category.",
    valueTypeName := `Lean.PrettyPrinter.CategoryParenthesizer,
    evalKey := fun _ stx => do
      let env ← getEnv
      let stx ← Attribute.Builtin.getIdent stx
      let id := stx.getId
      let some cat := (Parser.parserExtension.getState env).categories.find? id
        | throwError "Invalid `[category_parenthesizer]` argument: Unknown parser category `{toString id}`"
      if (← getEnv).contains cat.declName then
        recordExtraModUseFromDecl (isMeta := false) cat.declName
        if (← Elab.getInfoState).enabled then
          Elab.addConstInfo stx cat.declName none
      pure id
  }

/--
Registers a parenthesizer for a parser combinator.

`@[combinator_parenthesizer c, expose]` registers a declaration of type `Lean.PrettyPrinter.Parenthesizer`
for the `Parser` declaration `c`. Note that, unlike with `@[parenthesizer]`, this is not a node kind
since combinators usually do not introduce their own node kinds. The tagged declaration may
optionally accept parameters corresponding to (a prefix of) those of `c`, where `Parser` is
replaced with `Parenthesizer` in the parameter types.
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variant385818405e9e782840931e945c52a985d747e2e00f4a4aca58e8f26117b3ae50.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adf57b2873a885e7d24eeabe4e67d7843c03de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
