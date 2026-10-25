# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c206ea44b24aa210930780e846e4cf9fd36936b9dfe13b7837ae3fad655b7d",
  "kind": "initialize",
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
  "slug": "initialize--ebaa79cbee105bb976d5c00b",
  "source": {
    "blob": "dec4f0fb7593d07dafebb2f895a13e9a7af9d212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasIn/Variant81bfda106727ac649e906ed8185cf9c03b44b931ed2d1b03b4bfa0c738a652d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebaa79cbee105bb976d5c00b4b0fcb3c86b8111abbe60b62bd89289a85dcb95c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasIn/Variant81bfda106727ac649e906ed8185cf9c03b44b931ed2d1b03b4bfa0c738a652d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42c206ea44b24aa210930780e846e4cf9fd36936b9dfe13b7837ae3fad655b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerBuiltinAttribute {
    name := `aliasIn
    descr := "create alias in another namespace"
    applicationTime := .afterCompilation
    add := fun
    | src, `(attr| alias_in%$tk $nm $[$num]?), kind => do
      unless kind == .global do
        throwError "The `alias_in` attribute cannot be {kind}."
      let newNamespace := nm.getId.components
      let num := num.map (·.getNat) |>.getD newNamespace.length
      let components := src.components
      if (← toModifiers src).visibility.isPrivate then
        throwError "The `alias_in` attribute cannot be used for private declarations."
      if components.length ≤ num then
        throwError m!"{src} has only {components.length - 1} namespaces, cannot remove {num}.\n\
        Use `@[alias_in {nm} {components.length - 1}]` instead."
      let tgtName := .fromComponents <|
        components.take (components.length - 1 - num) ++ newNamespace ++ [components.getLast!]
      liftCommandElabM <| elabCommand <|
        ← `(command| public alias $(mkIdent tgtName) := $(mkIdent src))
      -- add mouse-over text
      Term.addTermInfo' nm (← mkConstWithLevelParams tgtName) (isBinder := true) |>.run' |>.run'
    | _, _, _ => throwUnsupportedSyntax }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasIn/Variant81bfda106727ac649e906ed8185cf9c03b44b931ed2d1b03b4bfa0c738a652d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasIn/Variant81bfda106727ac649e906ed8185cf9c03b44b931ed2d1b03b4bfa0c738a652d1.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec4f0fb7593d07dafebb2f895a13e9a7af9d212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
