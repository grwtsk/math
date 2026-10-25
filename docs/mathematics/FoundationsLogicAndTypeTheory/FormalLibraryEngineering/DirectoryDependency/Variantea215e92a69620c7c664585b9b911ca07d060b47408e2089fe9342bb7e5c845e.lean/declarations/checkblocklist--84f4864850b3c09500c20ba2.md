# checkBlocklist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4691887abf92e058ddbcbcb9533476e7d53df29db9a739fb20eaaaf3ede827eb",
  "kind": "def",
  "lexical_name": "checkBlocklist",
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
  "slug": "checkblocklist--84f4864850b3c09500c20ba2",
  "source": {
    "blob": "49387b8d8005fcfedca09974e3cf6cc842a710bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 661,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84f4864850b3c09500c20ba2463cb8342dfa89a035979e85d81b4e8b7d03f3c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4691887abf92e058ddbcbcb9533476e7d53df29db9a739fb20eaaaf3ede827eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkBlocklist (env : Environment) (mainModule : Name) (imports : Array Name) : Option MessageData := Id.run do
  match forbiddenImportDirs.findAny mainModule imports with
  | some (n₁, n₂) => do
    if let some imported := n₂.prefixToName imports then
      if !overrideAllowedImportDirs.contains mainModule imported then
        let mut msg := m!"Modules starting with {n₁} are not allowed to import modules starting with {n₂}. \
        This module depends on {imported}\n"
        for dep in env.importPath imported do
          msg := msg ++ m!"which is imported by {dep},\n"
        return some (msg ++ m!"which is imported by this module. \
          (Exceptions can be added to `overrideAllowedImportDirs`.)")
      else none
    else
      return some m!"Internal error in `directoryDependency` linter: this module claims to depend \
      on a module starting with {n₂} but a module with that prefix was not found in the import graph."
  | none => none

@[inherit_doc Mathlib.Linter.linter.directoryDependency]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49387b8d8005fcfedca09974e3cf6cc842a710bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
