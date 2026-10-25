# loadModuleShard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb7450a064c46db5e696b2b8650146e1c8580321a20ddef9a4d993c5b37e8fb3",
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
  "slug": "loadmoduleshard--a8299da838e2e697935fa6a6",
  "source": {
    "blob": "488b94ca640a7e8956f9cfdaf2788d506cc128b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8299da838e2e697935fa6a690c9916c237b46687876c616d7c48d7ba705baee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb7450a064c46db5e696b2b8650146e1c8580321a20ddef9a4d993c5b37e8fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–372.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488b94ca640a7e8956f9cfdaf2788d506cc128b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
