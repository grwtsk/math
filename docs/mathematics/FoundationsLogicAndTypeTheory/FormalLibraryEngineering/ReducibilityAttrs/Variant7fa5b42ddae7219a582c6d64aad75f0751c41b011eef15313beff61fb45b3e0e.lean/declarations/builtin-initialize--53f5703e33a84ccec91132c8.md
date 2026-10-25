# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e96363b24a96ed8a0b9b442532f66e7c30098ca3944c3cbcdb6cc28b180d74bf",
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
  "slug": "builtin-initialize--53f5703e33a84ccec91132c8",
  "source": {
    "blob": "d32f8582486f0b4cba5334c29164194c2787c78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53f5703e33a84ccec91132c85ef336168228332ad3b2c51593c767b9b5420d27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e96363b24a96ed8a0b9b442532f66e7c30098ca3944c3cbcdb6cc28b180d74bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize reducibilityCoreExt : PersistentEnvExtension (Name × ReducibilityStatus) (Name × ReducibilityStatus) (NameMap ReducibilityStatus) ←
  registerPersistentEnvExtension {
    name            := `reducibilityCore
    mkInitial       := pure {}
    addImportedFn   := fun _ _ => pure {}
    addEntryFn      := fun (s : NameMap ReducibilityStatus) (p : Name × ReducibilityStatus) => s.insert p.1 p.2
    exportEntriesFn := fun m =>
      let r : Array (Name × ReducibilityStatus) := m.foldl (fun a n p => a.push (n, p)) #[]
      r.qsort (fun a b => Name.quickLt a.1 b.1)
    statsFn         := fun s => "reducibility attribute core extension" ++ Format.line ++ "number of local entries: " ++ format s.size
    -- attribute is set by `addPreDefinitions`
    asyncMode       := .async .asyncEnv
    replay? := some <| fun _oldState newState newItems otherState =>
      newItems.foldl (init := otherState) fun otherState k =>
        if let some v := newState.find? k then
          otherState.insert k v
        else
          otherState
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d32f8582486f0b4cba5334c29164194c2787c78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
