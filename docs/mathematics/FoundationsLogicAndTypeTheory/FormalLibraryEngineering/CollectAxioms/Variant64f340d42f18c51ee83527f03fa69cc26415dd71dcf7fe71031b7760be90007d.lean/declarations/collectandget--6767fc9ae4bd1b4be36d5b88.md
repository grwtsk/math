# collectAndGet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eaed10835efd99a112605019e82a904daa889c9040a5eed9b373c7914d7d73f",
  "kind": "def",
  "lexical_name": "collectAndGet",
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
  "slug": "collectandget--6767fc9ae4bd1b4be36d5b88",
  "source": {
    "blob": "dc9897059a4463dfd143a2b3f8fbb4f4a3c3f154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6767fc9ae4bd1b4be36d5b885f58ad75b69d5097202d59beb7a803df085ba557",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eaed10835efd99a112605019e82a904daa889c9040a5eed9b373c7914d7d73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectAndGet
    (extFind? : Environment → Name → Option (Array Name))
    (c : Name) : M (Array Name) := do
  collect extFind? c
  let some axs := (← get).seen.find? c | panic! s!"collectAndGet: '{c}' not in seen after collect"
  return axs

end CollectAxioms

/--
Extension state holding imported module entries for efficient lookup of
pre-computed axiom data.

We use `registerPersistentEnvExtension` with manual lookup instead of `MapDeclarationExtension`
because `exportEntriesFnEx` needs to call `collect`, which needs the extension's `find?`, but
`exportEntriesFnEx` is defined inside the `builtin_initialize` that creates the extension and
thus cannot reference it. This state replicates `MapDeclarationExtension.find?`'s per-module
binary search without requiring the extension object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectAxioms/Variant64f340d42f18c51ee83527f03fa69cc26415dd71dcf7fe71031b7760be90007d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9897059a4463dfd143a2b3f8fbb4f4a3c3f154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
