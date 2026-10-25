# NodeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd9f12224cb7306030171301f3a353b4fa7d780abdb1f7427158a65cb16dfb2a",
  "kind": "inductive",
  "lexical_name": "NodeKind",
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
  "slug": "nodekind--46a19782afe2d1d4bcbe059b",
  "source": {
    "blob": "5c0fb16033db4310d8235306a89e2e66bc7375f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 8,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A61b6d6e9d1cabc9f/Variant2ffc796ec362231f6f5d5a69b8896bad2550ec95dd78a8275f3779aa994b198e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46a19782afe2d1d4bcbe059bb5dd44edf5a96d73eece1aa9b98c7537fc81b3e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A61b6d6e9d1cabc9f/Variant2ffc796ec362231f6f5d5a69b8896bad2550ec95dd78a8275f3779aa994b198e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd9f12224cb7306030171301f3a353b4fa7d780abdb1f7427158a65cb16dfb2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive NodeKind
  | semantic
  | backbone
  | relationGroup
  | declaration
  | representation
  | runtimeBinding
  | lineage
  | hyperrelation
  | reference
  | diagnostic
  deriving DecidableEq, Inhabited, Fintype

/-- Projection-only reference occurrences are not canonical semantic nodes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A61b6d6e9d1cabc9f/Variant2ffc796ec362231f6f5d5a69b8896bad2550ec95dd78a8275f3779aa994b198e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A61b6d6e9d1cabc9f/Variant2ffc796ec362231f6f5d5a69b8896bad2550ec95dd78a8275f3779aa994b198e.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0fb16033db4310d8235306a89e2e66bc7375f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
