# loadIncrSnapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3da48d82238030981a84efbc6641d6e7dc0b646a08e01ff62a54c25f20884ab3",
  "kind": "def",
  "lexical_name": "loadIncrSnapshot",
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
  "slug": "loadincrsnapshot--b549180dd86971be7ce8feb1",
  "source": {
    "blob": "965a761b628ebc7b7c780c7a6d12fde6e2e9b339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b549180dd86971be7ce8feb1fd1e15041138d88313bc996bd2d78a64d6bb132c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3da48d82238030981a84efbc6641d6e7dc0b646a08e01ff62a54c25f20884ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def loadIncrSnapshot (fname : System.FilePath) :
    IO IncrSnapshot := do
  let depsFile := fname.addExtension "deps"
  let moduleArts : Array ModuleArtifacts ←
    match Json.parse (← IO.FS.readFile depsFile) >>= fromJson? with
    | .ok arts => pure arts
    | .error e => throw <| IO.userError s!"failed to parse snapshot deps file {depsFile}: {e}"
  -- Modules are mutually independent (cross-module references go through the constant map, not
  -- region pointers), so read them in parallel. Spawn exactly `numWorkers` striped tasks.
  -- Parallelism overlaps each region's cold root-page fault I/O: for an `import Mathlib` snapshot,
  -- sequential cold load is ~16 s, dropping to ~6 s at 4 workers. More workers help cold further
  -- (~3 s at 32) but begin shifting the warm-cache case into a slower mode (`mmap` address-space
  -- lock contention), so the default caps low to keep warm load time unchanged. Raise
  -- `LEAN_IMPORT_WORKERS` to trade warm parity for faster cold loads.
  let defaultNumWorkers := min (System.Platform.Internal.getHardwareConcurrency ()).toNat 4
  let numWorkers := max 1 <|
    ((← IO.getEnv "LEAN_IMPORT_WORKERS").bind (·.toNat?)).getD defaultNumWorkers
  let mut chunkTasks := Array.emptyWithCapacity numWorkers
  for w in 0...numWorkers do
    -- worker `w` handles modules w, w+numWorkers, w+2·numWorkers, … (stripe for load balance)
    chunkTasks := chunkTasks.push (← IO.asTask (do
      let mut regions : Array CompactedRegion := #[]
      let mut i := w
      while i < moduleArts.size do
        regions := regions ++ (← readModuleArtifactRegions moduleArts[i]!)
        i := i + numWorkers
      return regions))
  let mut depRegions : Array CompactedRegion := Array.emptyWithCapacity (moduleArts.size * 4)
  for t in chunkTasks do
    depRegions := depRegions ++ (← IO.ofExcept t.get)
  -- The snapshot region itself references every loaded dep region.
  let (data, _region) ← CompactedRegion.read (α := IncrSnapshot) fname depRegions
  return data

/--
Resolves every `SnapshotTask.cancelTk?` reachable from the given snapshot tree so that the
unresolved `CancelToken.promise` tasks they would otherwise leave behind don't block the
compactor's traversal during the subsequent save.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante3e9037222c00308edc4fed589da83a80620bf5b35108779564fc485d8c17774.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965a761b628ebc7b7c780c7a6d12fde6e2e9b339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
