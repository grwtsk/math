# loadModuleShard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2060f176212a6bcfbd98b779443f5222f38a961e9aa1478b773897d2793eabd9",
  "kind": "def",
  "lexical_name": "loadModuleShard",
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
  "slug": "loadmoduleshard--cf4cb27f47b450a62c7793ad",
  "source": {
    "blob": "87cb8256a8e593fea576fd195536a06142d56c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf4cb27f47b450a62c7793add75f16252fb14539a4e0477a85b85aeb6302d405",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2060f176212a6bcfbd98b779443f5222f38a961e9aa1478b773897d2793eabd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def loadModuleShard (env : Environment) (moduleName : Name) : IO RawModuleShard := do
  let some index := env.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := env.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  -- Module payloads can retain a shadowed compiler-generated name.  Lean's
  -- `const2ModIdx` table is the authority for the active declaration owner.
  let ownedConstants := data.constants.filter fun info =>
    env.getModuleIdxFor? info.name == some index
  let declarations ← ownedConstants.mapM (declarationRecord env moduleName)
  let visibleConstantCount := env.header.moduleData.foldl (init := 0) fun count moduleData =>
    count + moduleData.constants.size
  return {
    module := moduleName.toString
    checkerVersion := Lean.versionString
    trustLevel := env.header.trustLevel.toNat
    directImports := data.imports.map directImportRecord
    effectiveImports := env.header.modules.map effectiveImportRecord
    declarations := declarations.qsort fun left right => left.name < right.name
    extraConstants := distinctSortedStrings (data.extraConstNames.map Name.toString)
    extensions := data.entries.map extensionRecord |>.qsort fun left right => left.name < right.name
    visibleConstantCount := visibleConstantCount
    ownedConstantCount := ownedConstants.size
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant5aad16d78e721d1da5b35cb0389a086ba4de128144dde97aa50c4c6b40ecb191.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cb8256a8e593fea576fd195536a06142d56c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
