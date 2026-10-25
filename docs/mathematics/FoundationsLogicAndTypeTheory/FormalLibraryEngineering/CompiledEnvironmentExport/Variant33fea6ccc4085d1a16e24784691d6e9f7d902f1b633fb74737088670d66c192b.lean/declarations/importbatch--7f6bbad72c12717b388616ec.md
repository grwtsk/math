# importBatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d11d7af46d7ac169b4081ed86fdfbe8e3cc4d59129c6a74528f7d2818b9408a",
  "kind": "def",
  "lexical_name": "importBatch",
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
  "slug": "importbatch--7f6bbad72c12717b388616ec",
  "source": {
    "blob": "ed856d9e57224267cf6bd9a76850ef2c9d3bb35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6bbad72c12717b388616ecf55fa137c4405ba2739d9815d992982521b7d498",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d11d7af46d7ac169b4081ed86fdfbe8e3cc4d59129c6a74528f7d2818b9408a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def importBatch (modules : Array Name) : IO (Array ModuleRecord) := do
  if modules.isEmpty then
    return #[]
  let imports := modules.map fun moduleName => ({ module := moduleName } : Import)
  let env ← importModules imports {}
  -- Each record is a read-only projection of the same immutable environment.
  -- Start all projections eagerly so Lean's task scheduler can use the host's
  -- available cores, then collect results in the original module order.  The
  -- final sort below therefore remains deterministic across scheduler orders.
  let tasks ← modules.mapM fun moduleName =>
    IO.asTask (moduleRecord env moduleName)
  tasks.mapM fun task =>
    IO.ofExcept task.get

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed856d9e57224267cf6bd9a76850ef2c9d3bb35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
