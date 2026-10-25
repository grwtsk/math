# CompletionItem.resolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d45bf04f2021065efeb9a6f1c2d81aed2a154010b99f07c8ae09b059f980ebaa",
  "kind": "def",
  "lexical_name": "CompletionItem.resolve",
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
  "slug": "completionitem-resolve--84b831d4a20d4b037fe983ee",
  "source": {
    "blob": "c18f63cb72591c26d5322975aae3b2c7fa0dc00e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant89fcd70d537e07b56ac1535bdd912c688c9f41317b5c826d5e61b7b9c75058d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84b831d4a20d4b037fe983ee131f85181a2eb320d49911a2c1913f30949d4f6e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant89fcd70d537e07b56ac1535bdd912c688c9f41317b5c826d5e61b7b9c75058d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d45bf04f2021065efeb9a6f1c2d81aed2a154010b99f07c8ae09b059f980ebaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompletionItem.resolve
    (item : CompletionItem)
    (id   : CompletionIdentifier)
    : MetaM CompletionItem := do
  let env ← getEnv
  let lctx ← getLCtx
  let mut item := item

  if item.detail?.isNone then
    let type? := match id with
      | .const declName =>
        env.find? declName |>.map ConstantInfo.type
      | .fvar id =>
        lctx.find? id |>.map LocalDecl.type
    let detail? ← type?.mapM fun type =>
      consumeImplicitPrefix type fun typeWithoutImplicits =>
        return toString (← Meta.ppExpr typeWithoutImplicits)
    item := { item with detail? := detail? }

  if item.documentation?.isNone then
    let docStringPrefix? := Id.run do
      let .const declName := id
        | none
      let some param := Linter.deprecatedAttr.getParam? env declName
        | none
      let docstringPrefix :=
        if let some text := param.text? then
          text
        else if let some newName := param.newName? then
          s!"`{declName}` has been deprecated, use `{newName}` instead."
        else
          s!"`{declName}` has been deprecated."
      some docstringPrefix
    let docString? ← do
      let .const declName := id
        | pure none
      findMarkdownDocString? declName
    let doc? := do
      let docValue ←
        match docStringPrefix?, docString? with
        | none,                 none           => none
        | some docStringPrefix, none           => docStringPrefix
        | none,                 docString      => docString
        | some docStringPrefix, some docString => s!"{docStringPrefix}\n\n{docString}"
      pure { value := docValue , kind := MarkupKind.markdown : MarkupContent }
    item := { item with documentation? := doc? }

  return item

end Lean.Lsp

namespace Lean.Server.Completion
open Lean.Lsp
open Elab

/--
Fills the `CompletionItem.detail?` field of `item` using the pretty-printed type identified by `id`
in the context found at `hoverPos` in `infoTree`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant89fcd70d537e07b56ac1535bdd912c688c9f41317b5c826d5e61b7b9c75058d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant89fcd70d537e07b56ac1535bdd912c688c9f41317b5c826d5e61b7b9c75058d9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c18f63cb72591c26d5322975aae3b2c7fa0dc00e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
