# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:391ea90c48ce537fb8a7063386635006c6c75e2df4e26516fa3bd434cea31b48",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--d77e3a5df277c2e5ad1a94b2",
  "source": {
    "blob": "392b7e94bbfde4972fad47a6f750cb32883280d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Namespace/Variant1e43f518c17c8e35ec3024cf85768ff0935eefd892be4c22231bbfae0e3e22b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d77e3a5df277c2e5ad1a94b28b24707236fe412238b82f4d3dc87ec72b5b5218",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Namespace/Variant1e43f518c17c8e35ec3024cf85768ff0935eefd892be4c22231bbfae0e3e22b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:391ea90c48ce537fb8a7063386635006c6c75e2df4e26516fa3bd434cea31b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private builtin_initialize namespacesExt : PersistentEnvExtension Name Name State ←
  registerPersistentEnvExtension {
    mkInitial       := pure {}
    addImportedFn   := fun as => do
      let env := (← read).env
      /-
      We compute a `HashMap` and then convert to `SMap` to improve Lean startup time.
      Note: we have used `perf` to profile Lean startup cost when processing a file containing just `import Lean`.
      6.18% of the runtime is here. It was 9.31% before the `HashMap` optimization.
      -/
      let capacity := as.foldl (init := 0) fun r e => r + e.size
      let mut map : Std.HashMap Name Environment.Visibility := Std.HashMap.emptyWithCapacity capacity
      for mod in env.header.modules, modEntries in as do
        let vis := if mod.isExported then .public else .private
        for e in modEntries do
          map := map.alter e fun
            | some .public => some .public
            | _            => some vis
      return SMap.fromHashMap map |>.switch
    -- local entries are not from private imports, so mark public
    addEntryFn      := fun s n => s.insert n .public
    exportEntriesFn s :=
      let entries := s.map₂.toArray.map (·.1)
      entries.qsort (·.quickLt)
    -- Namespaces from local helper constants can be disregarded in other environment branches. We
    -- do *not* want `getNamespaces` to have to wait on all prior branches.
    asyncMode       := .local
  }

namespace Environment

/-- Register a new namespace in the environment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Namespace/Variant1e43f518c17c8e35ec3024cf85768ff0935eefd892be4c22231bbfae0e3e22b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Namespace/Variant1e43f518c17c8e35ec3024cf85768ff0935eefd892be4c22231bbfae0e3e22b0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392b7e94bbfde4972fad47a6f750cb32883280d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
