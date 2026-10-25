# Module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb34131208946c602e15e65aed1a263968afc0dd08fbd240bf93d7abf160f44b",
  "kind": "structure",
  "lexical_name": "Module",
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
  "slug": "module--d5d56dff77aec0fe203979fa",
  "source": {
    "blob": "0f60ecdd2fc2b734a435dabf5ece4fe28192e1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5d56dff77aec0fe203979faf381a392813303728c4ad1ef2b1091fc70fc5a0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb34131208946c602e15e65aed1a263968afc0dd08fbd240bf93d7abf160f44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Module where
  /-- A JS [module](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
  intended for use in user widgets.

  The JS environment in which modules execute
  provides a fixed set of libraries accessible via direct `import`,
  notably [`@leanprover/infoview`](https://www.npmjs.com/package/@leanprover/infoview)
  and [`react`](https://www.npmjs.com/package/react).

  To initialize this field from an external JS file,
  you may use `include_str "path"/"to"/"file.js"`.
  However **beware** that this does not register a dependency with Lake,
  so your Lean module will not automatically be rebuilt
  when the `.js` file changes. -/
  javascript : String
  /-- The hash is cached to avoid recomputing it whenever the `Module` is used. -/
  javascriptHash : { x : UInt64 // x = hash javascript } := ⟨hash javascript, rfl⟩

end Lean.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f60ecdd2fc2b734a435dabf5ece4fe28192e1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
