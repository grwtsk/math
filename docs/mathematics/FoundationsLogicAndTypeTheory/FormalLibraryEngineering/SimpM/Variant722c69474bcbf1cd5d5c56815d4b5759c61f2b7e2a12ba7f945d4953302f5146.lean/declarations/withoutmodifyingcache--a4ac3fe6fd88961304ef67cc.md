# withoutModifyingCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1c16932fc6994e726ca18e70a87861c021d50b0b7a1163b4b10f93817c06ba",
  "kind": "abbrev",
  "lexical_name": "withoutModifyingCache",
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
  "slug": "withoutmodifyingcache--a4ac3fe6fd88961304ef67cc",
  "source": {
    "blob": "bbece52b7c18de0446db567dd9b98bbcd76c4719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4ac3fe6fd88961304ef67cc71ab23e875860e0fb356a0d690db56063790e8fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1c16932fc6994e726ca18e70a87861c021d50b0b7a1163b4b10f93817c06ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev withoutModifyingCache (k : SimpM α) : SimpM α := do
  let persistentCache := (← get).persistentCache
  let transientCache := (← get).transientCache
  let funext := (← get).funext
  try k finally modify fun s => { s with persistentCache, transientCache, funext }

/-- Saves and restores the transient cache and funext, leaving
the persistent cache untouched. Used when entering binders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbece52b7c18de0446db567dd9b98bbcd76c4719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
