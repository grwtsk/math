# pickle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:961faf1664b005f06152dc5c0b71b08ef329307c4624976f58d3da757f53c6e6",
  "kind": "def",
  "lexical_name": "pickle",
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
  "slug": "pickle--dfdc704b266f1b9dec88e314",
  "source": {
    "blob": "0d7ef1fd9de312429a62a5b2e137403f241b1d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pickle/Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfdc704b266f1b9dec88e3144ca1276e2e0e45d585edf028f6edea9c688aa5c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pickle/Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:961faf1664b005f06152dc5c0b71b08ef329307c4624976f58d3da757f53c6e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pickle {α : Type} (path : FilePath) (x : α) (key : Name := by exact decl_name%) : IO Unit :=
  saveModuleData path key (unsafe unsafeCast x)

/--
Load an object from disk.
Note: The returned `CompactedRegion` can be used to free the memory behind the value
of type `α`, using `CompactedRegion.free` (which is only safe once all references to the `α` are
released). Ignoring the `CompactedRegion` results in the data being leaked.
Use `withUnpickle` to call `CompactedRegion.free` automatically.

This function is unsafe because the data being loaded may not actually have type `α`, and this
may cause crashes or other bad behavior.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pickle/Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pickle/Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7ef1fd9de312429a62a5b2e137403f241b1d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
