# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a68b5f4e1c0c71a27cc0b730c67bb979cc54b660a37c82d4e5a75e71e5bc569",
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
  "slug": "builtin-initialize--b3153536cc4b47f0125f1690",
  "source": {
    "blob": "6ff6cbe097ef1684ff9ee7830835e2257d984341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3153536cc4b47f0125f1690de8b02bcadd2933d3dfb842bfbd1a85d233e412b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a68b5f4e1c0c71a27cc0b730c67bb979cc54b660a37c82d4e5a75e71e5bc569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize widgetModuleAttrImpl : AttributeImpl ←
  let mkAttr (builtin : Bool) (name : Name) := do
    let impl := {
      name
      descr           := (if builtin then "(builtin) " else "") ++
        "Registers a widget module. Its type must implement Lean.Widget.ToModule."
      applicationTime := .afterCompilation
      add             := fun decl stx kind => Prod.fst <$> MetaM.run do
        withoutExporting do  -- result should be private anyway
        Attribute.Builtin.ensureNoArgs stx
        unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
        let e ← mkAppM ``ToModule.toModule #[.const decl []]
        let mod ← evalModule e
        let env ← getEnv
        unless builtin do  -- don't warn on collision between previous and current stage
          if let some _ := (← builtinModulesRef.get).get? mod.javascriptHash then
            logWarning m!"A builtin widget module with the same hash(JS source code) was already registered."
        if let some (n, _) := moduleRegistry.getState env |>.get? mod.javascriptHash then
          logWarning m!"A widget module with the same hash(JS source code) was already registered at {.ofConstName n true}."
        let env ← getEnv
        if builtin then
          let h := mkConst decl
          declareBuiltin decl <| mkApp2 (mkConst ``addBuiltinModule) (toExpr decl) h
        else
          setEnv <| moduleRegistry.addEntry env (mod.javascriptHash, decl, e)
    }
    registerBuiltinAttribute impl
    return impl
  /- We declare the `[builtin_widget_module]` and `[widget_module]` attributes
  and bind the latter's implementation
  (used for creating the obsolete `[widget]` alias below). -/
  let _ ← mkAttr true `builtin_widget_module
  mkAttr false `widget_module

/-! ## Retrieval of widget modules -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff6cbe097ef1684ff9ee7830835e2257d984341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
