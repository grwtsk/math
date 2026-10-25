# resolveConfigFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7333cf00e4d0563633b45ce9c3b047bf5cbccb2141dc46a3ef1e5d6af5eb08ac",
  "kind": "def",
  "lexical_name": "resolveConfigFile",
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
  "slug": "resolveconfigfile--c94489bbbd6db5974e1e0bab",
  "source": {
    "blob": "266ec3b5b04775b349c727f8602a568fdee5ce00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c94489bbbd6db5974e1e0babd5c48c78045f5f23a7bb42b989e62333d8469df2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7333cf00e4d0563633b45ce9c3b047bf5cbccb2141dc46a3ef1e5d6af5eb08ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def resolveConfigFile
  (name : String) (cfg : LoadConfig)
: LogIO {cfg : LoadConfig // cfg.configLang?.isSome} := do
  if h : cfg.configLang?.isSome then
    let some configFile ← resolvePath? cfg.configFile
      | error s!"{name}: configuration file not found: {cfg.configFile}"
    return ⟨{cfg with configFile}, h⟩
  else if let some ext := cfg.relConfigFile.extension then
    let some configFile ← resolvePath? cfg.configFile
      | error s!"{name}: configuration file not found: {cfg.configFile}"
    match ext with
    | "lean" => return ⟨{cfg with configFile, configLang? := some .lean}, rfl⟩
    | "toml" => return ⟨{cfg with configFile, configLang? := some .toml}, rfl⟩
    | _ => error s!"{name}: configuration has unsupported file extension: {configFile}"
  else
    let relLeanFile := cfg.relConfigFile.addExtension "lean"
    let relTomlFile := cfg.relConfigFile.addExtension "toml"
    let leanFile := cfg.pkgDir / relLeanFile
    let tomlFile := cfg.pkgDir / relTomlFile
    if let some configFile ← resolvePath? leanFile then
      if (← tomlFile.pathExists) then
        logInfo s!"{name}: {relLeanFile} and {relTomlFile} are both present; using {relLeanFile}"
      return ⟨{cfg with configFile, relConfigFile := relLeanFile, configLang? := some .lean}, rfl⟩
    else if let some configFile ← resolvePath? tomlFile then
      return ⟨{cfg with configFile, relConfigFile := relTomlFile, configLang? := some .toml}, rfl⟩
    else
      error s!"{name}: no configuration file with a supported extension:\n{leanFile}\n{tomlFile}"

/--
**For internal use only.**
Reads the configuration of a Lake configuration file.

The load configuration {lean}`cfg` is assumed to already have an absolute path in
{lean}`cfg.configFile` and that the proper configuratin langauge for it is in
{lean}`cfg.configLang?`. This can be ensured through {lean}`resolveConfigFile`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266ec3b5b04775b349c727f8602a568fdee5ce00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
