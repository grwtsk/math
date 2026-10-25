# emitModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8320eb253e7d9de7bba20dcb2b3e0c59484e2319b62e6606ae204fd63f3b317",
  "kind": "def",
  "lexical_name": "emitModule",
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
  "slug": "emitmodule--30a8038e1e32d616d1dc13ee",
  "source": {
    "blob": "86148e74f6dc2ff67a6ebaf8134c67f217ac53c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf1e077e72759a116cfe66128a43974185a16b829a3319b3b7f59fc02f90d7c4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a8038e1e32d616d1dc13ee62814940d00821b226009e240d374549cdde5c0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf1e077e72759a116cfe66128a43974185a16b829a3319b3b7f59fc02f90d7c4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8320eb253e7d9de7bba20dcb2b3e0c59484e2319b62e6606ae204fd63f3b317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitModule
    (emitter : EventEmitter) (moduleName scopeName : Name) : IO Unit := do
  let request : Import := { module := scopeName, importAll := true }
  let environment ← importModules #[request] {}
  let some index := environment.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := environment.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  let owned := data.constants.filter fun information =>
    environment.getModuleIdxFor? information.name == some index
  emitter.emit <| Json.mkObj [
    ("adapterVersion", toJson "lean-v4.32.0-element-adapter/1"),
    ("checkerVersion", toJson Lean.versionString),
    ("directImportCount", toJson data.imports.size),
    ("event", toJson "module"),
    ("extensionCount", toJson data.entries.size),
    ("extraConstantCount", toJson data.extraConstNames.size),
    ("extractorVersion", toJson "mathematics-lean-element-stream/1.0.0"),
    ("module", toJson moduleName.toString),
    ("ownedConstantCount", toJson owned.size),
    ("schemaVersion", toJson "mathematics.lean-element-stream/1"),
    ("scopeModule", toJson scopeName.toString),
    ("trustLevel", toJson environment.header.trustLevel.toNat)
  ]
  for entry in data.imports do
    emitter.emit (directImport entry)
  for entry in data.entries do
    emitter.emit (extension entry)
  for name in data.extraConstNames do
    emitter.emit <| Json.mkObj [
      ("event", toJson "extra-constant"),
      ("name", toJson name.toString)
    ]
  for information in owned.qsort fun left right => Name.quickLt left.name right.name do
    emitDeclaration emitter environment moduleName information
  emitter.emit <| Json.mkObj [
    ("declarationCount", toJson owned.size),
    ("event", toJson "end"),
    ("module", toJson moduleName.toString)
  ]

end MathematicsLeanEnvironmentExtractElements
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf1e077e72759a116cfe66128a43974185a16b829a3319b3b7f59fc02f90d7c4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf1e077e72759a116cfe66128a43974185a16b829a3319b3b7f59fc02f90d7c4f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86148e74f6dc2ff67a6ebaf8134c67f217ac53c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
