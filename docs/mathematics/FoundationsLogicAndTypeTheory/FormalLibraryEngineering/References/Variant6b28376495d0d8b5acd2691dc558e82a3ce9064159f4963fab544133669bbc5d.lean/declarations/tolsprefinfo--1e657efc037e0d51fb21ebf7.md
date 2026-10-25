# toLspRefInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2defa6feaa9ee86918990a0a30106f3e69702c3f7cb013c56d9f43e67665de7a",
  "kind": "def",
  "lexical_name": "toLspRefInfo",
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
  "slug": "tolsprefinfo--1e657efc037e0d51fb21ebf7",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e657efc037e0d51fb21ebf7e5e06aca22f6566da66c9674a32e7626418a7945",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2defa6feaa9ee86918990a0a30106f3e69702c3f7cb013c56d9f43e67665de7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toLspRefInfo (i : RefInfo) : StateT Decls BaseIO Lsp.RefInfo := do
  let refToRefInfoLocation (ref : Reference) : StateT Decls BaseIO RefInfo.Location := do
    let parentDeclName? := ref.ci.parentDecl?
    let parentDeclNameString? := parentDeclName?.map (·.toString)
    let parentDeclInfo? : Option DeclInfo := do
      -- Use final command env that has decl ranges for current declaration as well
      let cmdEnv ← ref.ci.cmdEnv?
      let parentDeclName ← parentDeclName?
      -- Use `local` as it avoids unnecessary blocking, which is especially important when called
      -- from the snapshot reporter. Specifically, if `ref` is from a tactic of an async theorem,
      -- `parentDeclName` will not be available in the current environment and we would block only
      -- to return `none` in the end anyway. At the end of elaboration, we rerun this function on
      -- the full info tree with the main environment, so the access will succeed immediately.
      let parentDeclRanges ← declRangeExt.find? (asyncMode := .local) cmdEnv parentDeclName
      return .ofDeclarationRanges parentDeclRanges
    if let some parentDeclNameString := parentDeclNameString? then
      if let some parentDeclInfo := parentDeclInfo? then
        modify (·.insert parentDeclNameString parentDeclInfo)
    return .mk ref.range (parentDeclName?.map (·.toString))
  let definition? ← i.definition.mapM refToRefInfoLocation
  let usages ← i.usages.mapM refToRefInfoLocation
  return {
    definition? := definition?
    usages := usages
  }

end RefInfo

/-- All references from within a module for all identifiers used in a single module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
