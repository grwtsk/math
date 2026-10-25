# upstreamableDeclLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdd9c02643a64408da5d0103d6cbc20c1dc9dcfa6e30fc56e88ad9cbcd91aeb5",
  "kind": "def",
  "lexical_name": "upstreamableDeclLinter",
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
  "slug": "upstreamabledecllinter--40bd586bd2d57a68c91632b4",
  "source": {
    "blob": "49be8e537d15959773906ff586562fbc401c3d50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40bd586bd2d57a68c91632b4778952daaa69cd40ee5ca860c293d2fe2598c5bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdd9c02643a64408da5d0103d6cbc20c1dc9dcfa6e30fc56e88ad9cbcd91aeb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def upstreamableDeclLinter : Linter where run := withSetOptionIn fun stx ↦ do
    unless Linter.getLinterValue linter.upstreamableDecl (← getOptions) do
      return
    if (← get).messages.hasErrors then
      return
    let skipDef := !Linter.getLinterValue linter.upstreamableDecl.defs (← getOptions)
    let skipPrivate := !Linter.getLinterValue linter.upstreamableDecl.private (← getOptions)
    if stx == (← `(command| set_option $(mkIdent `linter.upstreamableDecl) true)) then return
    let env ← getEnv
    let id ← getId stx
    if id != .missing then
      -- Skip defs and private decls by default.
      let name ← getDeclName stx
      if (skipDef && if let some constInfo := env.find? name
         then !(constInfo matches .thmInfo _ | .ctorInfo _)
         else true) ||
       (skipPrivate && isPrivateName name) then
        return

      let minImports := getIrredundantImports env (← getAllImports stx id)
      match minImports with
      | ⟨(RBNode.node _ .leaf upstream _ .leaf), _⟩ => do
        if !(← env.localDefinitionDependencies stx id) then
          let p : GoToModuleLinkProps := { modName := upstream }
          let widget : MessageData := .ofWidget
            (← liftCoreM <| Widget.WidgetInstance.ofHash
              GoToModuleLink.javascriptHash <|
              Server.RpcEncodable.rpcEncode p)
            (toString upstream)
          Linter.logLint linter.upstreamableDecl id
            m!"Consider moving this declaration to the module {widget}."
      | _ => pure ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49be8e537d15959773906ff586562fbc401c3d50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
