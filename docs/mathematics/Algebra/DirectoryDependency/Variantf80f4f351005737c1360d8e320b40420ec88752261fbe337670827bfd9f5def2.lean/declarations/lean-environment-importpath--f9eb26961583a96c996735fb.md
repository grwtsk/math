# Lean.Environment.importPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:176f60d4fe62578ea56de434495598f3abb9f3b2660b93352c17bf7bfd9b74d3",
  "kind": "def",
  "lexical_name": "Lean.Environment.importPath",
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
  "slug": "lean-environment-importpath--f9eb26961583a96c996735fb",
  "source": {
    "blob": "61f54db22b5a978f4338feb1a68be8e7b643821d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9eb26961583a96c996735fb1709e83fb291a3cf06dc489af3ffe4d18af4ed51",
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

Occurrence: `declaration:176f60d4fe62578ea56de434495598f3abb9f3b2660b93352c17bf7bfd9b74d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Environment.importPath (env : Environment) (imported : Name) : Array Name := Id.run do
  let mut result := #[]
  let modData := env.header.moduleData
  let modNames := env.header.moduleNames
  if let some idx := env.getModuleIdx? imported then
    let mut target := imported
    for i in [idx.toNat + 1 : modData.size] do
      if modData[i]!.imports.any (·.module == target) then
        target := modNames[i]!
        result := result.push modNames[i]!
  return result

namespace Mathlib.Linter

open Lean Elab Command

/--
The `directoryDependency` linter detects detects imports between directories that are supposed to be
independent. If this is the case, it emits a warning.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f54db22b5a978f4338feb1a68be8e7b643821d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
