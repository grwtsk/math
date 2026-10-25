# collectLeanModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36bac3148737a7ced96e3d79e99170e91fc9d9a20d59844999cb5365891993ab",
  "kind": "def",
  "lexical_name": "collectLeanModules",
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
  "slug": "collectleanmodules--f14519fb3cc1f9d5a3a98614",
  "source": {
    "blob": "537558d6b5998838b152c6dc7aa3f3e46173694f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantf56e37cbd01392f138979bcddfe478b39bf59e53c82674fdff50de69e438cb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14519fb3cc1f9d5a3a98614f9dc70701fd304cc3805661e1d1ea83c05eb55c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantf56e37cbd01392f138979bcddfe478b39bf59e53c82674fdff50de69e438cb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36bac3148737a7ced96e3d79e99170e91fc9d9a20d59844999cb5365891993ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectLeanModules (root directory : FilePath) : IO (Array Name) := do
  let mut modules := #[]
  for entry in ← directory.readDir do
    if entry.fileName == ".lake" then
      continue
    if ← entry.path.isDir then
      modules := modules ++ (← collectLeanModules root entry.path)
    else if entry.path.extension == some "lean" then
      modules := modules.push (← moduleNameOfFileName entry.path (some root))
  return modules

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantf56e37cbd01392f138979bcddfe478b39bf59e53c82674fdff50de69e438cb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantf56e37cbd01392f138979bcddfe478b39bf59e53c82674fdff50de69e438cb95.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `537558d6b5998838b152c6dc7aa3f3e46173694f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
