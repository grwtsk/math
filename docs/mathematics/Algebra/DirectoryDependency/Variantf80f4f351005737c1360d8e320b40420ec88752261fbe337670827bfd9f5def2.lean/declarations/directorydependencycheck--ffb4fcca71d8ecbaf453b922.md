# directoryDependencyCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9640be1be47029776bc5cb34e7c3e5bfdcd7ee72c4ba11808033df017965bc7d",
  "kind": "def",
  "lexical_name": "directoryDependencyCheck",
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
  "slug": "directorydependencycheck--ffb4fcca71d8ecbaf453b922",
  "source": {
    "blob": "61f54db22b5a978f4338feb1a68be8e7b643821d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 484,
    "path": "GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffb4fcca71d8ecbaf453b922a00f6644b63c3313593a6a7a97b9ca23ba3d5cdd",
  "verification": {
    "reference": "docs/verification/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9640be1be47029776bc5cb34e7c3e5bfdcd7ee72c4ba11808033df017965bc7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directoryDependencyCheck (mainModule : Name) : CommandElabM (Option MessageData) := do
  unless Linter.getLinterValue linter.directoryDependency (← getOptions) do
    return none
  let env ← getEnv
  let imports := env.allImportedModuleNames
  match forbiddenImportDirs.findAny mainModule imports with
  | some (n₁, n₂) => do
    if let some imported := n₂.prefixToName imports then
      if !overrideAllowedImportDirs.contains mainModule imported then
        let mut msg := m!"Modules starting with {n₁} are not allowed to import modules starting with {n₂}.
This module depends on {imported}\n"
        for dep in env.importPath imported do
          msg := msg ++ m!"which is imported by {dep},\n"
        return some <| msg ++ m!"which is imported by this module.
(Exceptions can be added to `overrideAllowedImportDirs`.)"
    else
      return some m!"Internal error in `directoryDependency` linter: this module claims to depend on a module starting with {n₂} but a module with that prefix was not found in the import graph."
  | none => pure ()
  return none

end Mathlib.Linter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f54db22b5a978f4338feb1a68be8e7b643821d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
