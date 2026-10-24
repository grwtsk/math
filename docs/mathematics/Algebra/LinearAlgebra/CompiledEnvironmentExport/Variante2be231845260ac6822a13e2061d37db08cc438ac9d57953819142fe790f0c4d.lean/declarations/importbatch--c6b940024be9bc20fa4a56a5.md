# importBatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1581f807c55a346c82b5caf314235ab164cff2f1af224bf5e2f8362c90209d2",
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
  "slug": "importbatch--c6b940024be9bc20fa4a56a5",
  "source": {
    "blob": "4c358b708ffe569ee5a53a52fdd6edf930f9e3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b940024be9bc20fa4a56a5b412d9f205d40fedf6381237b92880226a1cfd77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1581f807c55a346c82b5caf314235ab164cff2f1af224bf5e2f8362c90209d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c358b708ffe569ee5a53a52fdd6edf930f9e3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
