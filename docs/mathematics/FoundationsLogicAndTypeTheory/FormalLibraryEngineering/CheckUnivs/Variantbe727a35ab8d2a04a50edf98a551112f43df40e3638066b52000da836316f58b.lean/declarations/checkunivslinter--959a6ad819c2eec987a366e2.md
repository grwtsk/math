# checkUnivsLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:182c331d3f9770e47578d1593a4505150e936a0b41f49f4c8bf1afc4587f4bc6",
  "kind": "def",
  "lexical_name": "checkUnivsLinter",
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
  "slug": "checkunivslinter--959a6ad819c2eec987a366e2",
  "source": {
    "blob": "fb902ef20452fd94785519bcf67ea33194ed309a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959a6ad819c2eec987a366e29abfab99fca8d5778e52aeb5fe5299d636f0b6c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:182c331d3f9770e47578d1593a4505150e936a0b41f49f4c8bf1afc4587f4bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkUnivsLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.checkUnivs (← getLinterOptions) do return
  if (← get).messages.hasErrors then return
  let env ← getEnv
  let mut seen : NameSet := {}
  for t in ← getInfoTrees do
    for declName in getNewDecls t do
      if seen.contains declName then continue
      seen := seen.insert declName
      let some info := env.find? declName | continue
      let bad := badParams (univParamsGrouped info.type declName).toArray
      unless bad.isEmpty do
        let univs := MessageData.joinSep (bad.toList.map fun u => m!"`{u}`") ", "
        logLintIf linter.checkUnivs (← getRef)
          m!"`{.ofConstName declName}`: universes {univs} only occur together. \
            This usually means there is a `max` expression in the type where none of these \
            universes appear on their own."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb902ef20452fd94785519bcf67ea33194ed309a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
