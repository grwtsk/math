# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1d1761f331e99b907310c9f3a46b678916b451393fd25a5b55bcec19378ef9d",
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
  "slug": "builtin-initialize--63948662eb40c21867bf6f63",
  "source": {
    "blob": "dc9897059a4463dfd143a2b3f8fbb4f4a3c3f154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63948662eb40c21867bf6f63923946bdeae64ce732d23a99f4711e98faad36d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1d1761f331e99b907310c9f3a46b678916b451393fd25a5b55bcec19378ef9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private builtin_initialize exportedAxiomsExt :
    PersistentEnvExtension (Name × Array Name) (Name × Array Name) ExportedAxiomsState ←
  registerPersistentEnvExtension {
    mkInitial     := pure {}
    addImportedFn := fun importedEntries => pure { importedModuleEntries := importedEntries }
    addEntryFn    := fun s _ => s
    exportEntriesFnEx := fun env s =>
      let exportedEnv := env.setExporting true
      let privateEnv := env.setExporting false
      -- Collect current-module declarations visible in the exported view.
      -- By pre-computing axiom data for every exported declaration, downstream modules can
      -- look up any imported declaration without walking its body, keeping collection
      -- module-local.
      let allNames := env.checked.get.constants.foldStage2
        (fun names name _ =>
          if (exportedEnv.find? name).isSome then names.push name
          else names) #[]
      -- Compute axioms within a shared state (for caching across declarations).
      -- Use `privateEnv` so that `collect` can see all constant bodies.
      let entries := CollectAxioms.runM privateEnv do
        allNames.mapM fun name =>
          return (name, ← CollectAxioms.collectAndGet s.find? name)
      -- Sort by name for binary search at import time.
      let entries := entries.qsort fun a b => Name.quickLt a.1 b.1
      .uniform entries
    asyncMode     := .mainOnly
  }

/-- Collect all axioms transitively used by a constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9897059a4463dfd143a2b3f8fbb4f4a3c3f154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
