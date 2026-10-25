# registerOrderedTagAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b41f258341ce9ffc203fa9dceac0771bb55d8a4841c9d703f3fc4c50edc9d02b",
  "kind": "def",
  "lexical_name": "registerOrderedTagAttribute",
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
  "slug": "registerorderedtagattribute--0eb2ca3492e4fd86c74e94fd",
  "source": {
    "blob": "304eedaf1bd6ac26ada3820b294f5358b1f5c179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedTagAttribute/Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eb2ca3492e4fd86c74e94fd2afba863094c4be0dd8c77a391ed0d3b8f5c0fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedTagAttribute/Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b41f258341ce9ffc203fa9dceac0771bb55d8a4841c9d703f3fc4c50edc9d02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def registerOrderedTagAttribute (name : Name) (descr : String)
    (validate : Name → AttrM Unit := fun _ => pure ()) (ref : Name := by exact decl_name%) : IO OrderedTagAttribute := do
  let ext ← registerPersistentEnvExtension {
    name            := ref
    mkInitial       := pure {}
    addImportedFn   := fun _ _ => pure {}
    addEntryFn      := fun s n => s.push n
    exportEntriesFn := fun es => es
    statsFn         := fun s => "tag attribute" ++ Format.line ++ "number of local entries: " ++ format s.size
  }
  let attrImpl : AttributeImpl := {
    ref   := ref
    name  := name
    descr := descr
    add   := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let env ← getEnv
      unless (env.getModuleIdxFor? decl).isNone do throwAttrDeclInImportedModule name decl
      validate decl
      modifyEnv fun env => ext.addEntry env decl
  }
  registerBuiltinAttribute attrImpl
  return { attr := attrImpl, ext }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedTagAttribute/Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderedTagAttribute/Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304eedaf1bd6ac26ada3820b294f5358b1f5c179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
