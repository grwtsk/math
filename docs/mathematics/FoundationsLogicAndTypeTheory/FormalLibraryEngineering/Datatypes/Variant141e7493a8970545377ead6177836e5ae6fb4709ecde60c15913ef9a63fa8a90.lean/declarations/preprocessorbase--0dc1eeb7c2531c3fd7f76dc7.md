# PreprocessorBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:855b77865ae9abd3fc1ee1a0c8823a7fbf63ab02012ca17abb6f045d3c544061",
  "kind": "structure",
  "lexical_name": "PreprocessorBase",
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
  "slug": "preprocessorbase--0dc1eeb7c2531c3fd7f76dc7",
  "source": {
    "blob": "31dde457f4eead403a1b0ba7768b065b760a3b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dc1eeb7c2531c3fd7f76dc7b38a9127721bd907592835dda0fbb98e04c4b8ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:855b77865ae9abd3fc1ee1a0c8823a7fbf63ab02012ca17abb6f045d3c544061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PreprocessorBase : Type where
  /-- The name of the preprocessor, populated automatically, to create linkable trace messages. -/
  name : Name := by exact decl_name%
  /-- The description of the preprocessor. -/
  description : String

/--
A preprocessor transforms a proof of a proposition into a proof of a different proposition.
The return type is `List Expr`, since some preprocessing steps may create multiple new hypotheses,
and some may remove a hypothesis from the list.
A "no-op" preprocessor should return its input as a singleton list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant141e7493a8970545377ead6177836e5ae6fb4709ecde60c15913ef9a63fa8a90.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31dde457f4eead403a1b0ba7768b065b760a3b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
