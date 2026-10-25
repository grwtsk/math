# combineTriggers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e6ef4ab5b4b1e62b58877deb33cc51a5ba6a981d90362fabc88b819c351434b",
  "kind": "def",
  "lexical_name": "combineTriggers",
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
  "slug": "combinetriggers--a060d703b08116b16a3e667c",
  "source": {
    "blob": "078961b9a4c5100949c193bdd043fe8e6eb43fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a060d703b08116b16a3e667c08f47f9b29307d2e9425c47a8b950310bc701e52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e6ef4ab5b4b1e62b58877deb33cc51a5ba6a981d90362fabc88b819c351434b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combineTriggers (map₁ map₂ : NameMap (List (Name × Float))) : NameMap (List (Name × Float)) := Id.run do
  let mut map := map₁
  for (trigger, decls₂) in map₂ do
    map := match map₁.find? trigger with
    | none => map.insert trigger decls₂
    | some decls₁ => map.insert trigger (decls₂.foldl (init := decls₁) (fun acc (decl, tolerance) => acc.orderedInsert (fun x y => x.2 ≤ y.2) (decl, tolerance)))
  return map

/--
The state is just an array of array of maps.
We don't assemble these on import for efficiency reasons: most modules will not query this extension.

Instead, we use an `IO.Ref` below so that within each module we can assemble the global `NameMap (List (Name × Float))` once.

Since we never modify the extension state except on export, the `IO.Ref` does not need updating after first access.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078961b9a4c5100949c193bdd043fe8e6eb43fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
