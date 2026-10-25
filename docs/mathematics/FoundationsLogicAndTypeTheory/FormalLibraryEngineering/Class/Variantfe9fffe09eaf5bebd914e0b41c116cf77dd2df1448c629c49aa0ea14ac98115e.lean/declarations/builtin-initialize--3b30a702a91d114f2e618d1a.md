# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c28464a71287b162eccbf6f8655a24f570671231f2a77cc81236fddd74b6f981",
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
  "slug": "builtin-initialize--3b30a702a91d114f2e618d1a",
  "source": {
    "blob": "79b457a08230d2950514ef8d83f53b5c8f837baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b30a702a91d114f2e618d1af5d1689de34c5b9319305d527ea2751361b4de8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c28464a71287b162eccbf6f8655a24f570671231f2a77cc81236fddd74b6f981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerBuiltinAttribute {
    name  := `univ_out_params
    descr := "universe output parameters for a type class"
    add   := fun decl stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `univ_out_params kind
      let env ← getEnv
      unless isClass env decl do
        throwError "invalid `univ_out_params`, `{decl}` is not a class"
      let info ← getConstInfo decl
      let us := info.levelParams
      let args := stx[1].getArgs
      args.forM fun arg => do
        unless us.contains arg.getId do
          throwErrorAt arg "`{arg}` is not a universe parameter of `{decl}`"
      let args := args.map (·.getId)
      let mut outLevelParams : Array Nat := #[]
      let mut i := 0
      for u in us do
        if args.contains u then
          outLevelParams := outLevelParams.push i
        i := i + 1
      let outParams := getOutParamPositions? env decl |>.getD #[]
      modifyEnv fun env => classExtension.addEntry env { name := decl, outParams, outLevelParams }
  }

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b457a08230d2950514ef8d83f53b5c8f837baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
