# elabShowDeprecatedModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ca206fb202e12a226c1a3ef7379d3ae7b1ede58f6f9b447c03a69f3d9979af3",
  "kind": "def",
  "lexical_name": "elabShowDeprecatedModules",
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
  "slug": "elabshowdeprecatedmodules--6fd37d0d8daf1309efadeebd",
  "source": {
    "blob": "e8f915fe84238814beb0a76b8a80135c6f6cceeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 749,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd37d0d8daf1309efadeebdf938e2e98c18f6f600b86e5bd9af137466098956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ca206fb202e12a226c1a3ef7379d3ae7b1ede58f6f9b447c03a69f3d9979af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabShowDeprecatedModules : CommandElab := fun _ => do
  let env ← getEnv
  let mut parts : Array String := #["Deprecated modules\n"]
  for h : idx in [:env.header.moduleNames.size] do
    if let some entry := env.getDeprecatedModuleByIdx? idx then
      let modName := env.header.moduleNames[idx]
      let msg := match entry.message? with
        | some str => s!"message '{str}'"
        | none => "no message"
      let replacements := env.header.moduleData[idx]!.imports.filter fun imp =>
        imp.module != `Init
      parts := parts.push s!"'{modName}' deprecates to\n{replacements.map (·.module)}\nwith {msg}\n"
  -- Also show the current module's deprecation if set.
  if let some entry := deprecatedModuleExt.getState env then
    let modName := env.mainModule
    let msg := match entry.message? with
      | some str => s!"message '{str}'"
      | none => "no message"
    let replacements := env.imports.filter fun imp =>
      imp.module != `Init
    parts := parts.push s!"'{modName}' deprecates to\n{replacements.map (·.module)}\nwith {msg}\n"
  logInfo (String.intercalate "\n" parts.toList)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f915fe84238814beb0a76b8a80135c6f6cceeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
