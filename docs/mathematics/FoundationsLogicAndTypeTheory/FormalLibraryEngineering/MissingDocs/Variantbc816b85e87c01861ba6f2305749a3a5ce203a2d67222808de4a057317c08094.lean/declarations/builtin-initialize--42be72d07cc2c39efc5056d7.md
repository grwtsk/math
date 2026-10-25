# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:266377aaa483a8ff92d1c5a8c40e6fe7682521df658558eb486a206d3f4d80fb",
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
  "slug": "builtin-initialize--42be72d07cc2c39efc5056d7",
  "source": {
    "blob": "a4f1bd8f6bc00a323a95579fd4d5de439e85f7c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantbc816b85e87c01861ba6f2305749a3a5ce203a2d67222808de4a057317c08094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42be72d07cc2c39efc5056d7889b1fc7ea6dd7d1230a0d56626095482cb7cf33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantbc816b85e87c01861ba6f2305749a3a5ce203a2d67222808de4a057317c08094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:266377aaa483a8ff92d1c5a8c40e6fe7682521df658558eb486a206d3f4d80fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let mkAttr (builtin : Bool) (name : Name) := registerBuiltinAttribute {
    name
    descr           := (if builtin then "(builtin) " else "") ++
      "adds a syntax traversal for the missing docs linter"
    applicationTime := .afterCompilation
    add             := fun declName stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      if !builtin then
        ensureAttrDeclIsMeta name declName kind
      let env ← getEnv
      unless builtin || (env.getModuleIdxFor? declName).isNone do
        throwAttrDeclInImportedModule name declName
      let decl ← getConstInfo declName
      let fnNameStx ← Attribute.Builtin.getIdent stx
      let key ← Elab.realizeGlobalConstNoOverloadWithInfo fnNameStx
      recordExtraModUseFromDecl (isMeta := false) key
      unless decl.levelParams.isEmpty && (decl.type == .const ``Handler [] || decl.type == .const ``SimpleHandler []) do
        throwError m!"Unexpected type for missing docs handler: Expected `{.ofConstName ``Handler}` or \
          `{.ofConstName ``SimpleHandler}`, but `{declName}` has type{indentExpr decl.type}"
      if builtin then
        let h := if decl.type == .const ``SimpleHandler [] then
          mkApp (mkConst ``SimpleHandler.toHandler) (mkConst declName)
        else mkConst declName
        declareBuiltin declName <| mkApp2 (mkConst ``addBuiltinHandler) (toExpr key) h
      else
        setEnv <| missingDocsExt.addEntry env (declName, key, ← mkHandler declName)
  }
  mkAttr true `builtin_missing_docs_handler
  mkAttr false `missing_docs_handler

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantbc816b85e87c01861ba6f2305749a3a5ce203a2d67222808de4a057317c08094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantbc816b85e87c01861ba6f2305749a3a5ce203a2d67222808de4a057317c08094.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4f1bd8f6bc00a323a95579fd4d5de439e85f7c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
