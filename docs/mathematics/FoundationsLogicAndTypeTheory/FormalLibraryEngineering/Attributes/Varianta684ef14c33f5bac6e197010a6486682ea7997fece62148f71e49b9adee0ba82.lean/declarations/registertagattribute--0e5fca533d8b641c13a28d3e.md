# registerTagAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a97b73e63e6e714804547a2e13cd28af26f91e019b9d0564ddab8cfb40e8f66",
  "kind": "def",
  "lexical_name": "registerTagAttribute",
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
  "slug": "registertagattribute--0e5fca533d8b641c13a28d3e",
  "source": {
    "blob": "599cf4d7969ffc13972ba5218b17c1ad228d081b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e5fca533d8b641c13a28d3e0cdeda9696d8f1cc9c9ab1e5b1789b1a24610a85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a97b73e63e6e714804547a2e13cd28af26f91e019b9d0564ddab8cfb40e8f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerTagAttribute (name : Name) (descr : String)
    (validate : Name → AttrM Unit := fun _ => pure ()) (ref : Name := by exact decl_name%)
    (applicationTime := AttributeApplicationTime.afterTypeChecking)
    (asyncMode : EnvExtension.AsyncMode := .mainOnly) : IO TagAttribute := do
  let ext : PersistentEnvExtension Name Name NameSet ← registerPersistentEnvExtension {
    name            := ref
    mkInitial       := pure {}
    addImportedFn   := fun _ _ => pure {}
    addEntryFn      := fun (s : NameSet) n => s.insert n
    exportEntriesFnEx := fun env es =>
      let all : Array Name := es.foldl (fun a e => a.push e) #[] |>.qsort Name.quickLt
      -- Do not export info for private defs at exported/server levels
      let exported := all.filter ((env.setExporting true).contains (skipRealize := false))
      { exported, server := exported, «private» := all }
    statsFn         := fun s => "tag attribute" ++ Format.line ++ "number of local entries: " ++ format s.size
    asyncMode       := asyncMode
    replay?         := some fun _ newState newConsts s =>
      newConsts.foldl (init := s) fun s c =>
        if newState.contains c then
          s.insert c
        else s
  }
  let attrImpl : AttributeImpl := {
    ref, name, descr, applicationTime
    add   := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let env ← getEnv
      unless (env.getModuleIdxFor? decl).isNone do
        throwAttrDeclInImportedModule name decl
      unless ext.toEnvExtension.asyncMayModify env decl do
        throwAttrNotInAsyncCtx name decl env.asyncPrefix?
      validate decl
      modifyEnv fun env => ext.addEntry (asyncDecl := decl) env decl
  }
  registerBuiltinAttribute attrImpl
  return { attr := attrImpl, ext := ext }

namespace TagAttribute

/-- Sets the attribute (without running `validate`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Varianta684ef14c33f5bac6e197010a6486682ea7997fece62148f71e49b9adee0ba82.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599cf4d7969ffc13972ba5218b17c1ad228d081b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
