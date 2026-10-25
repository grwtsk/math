# CommandContextInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cffe8c039722e855a270fccbbe679b6c60ac20595b0f1fbaf5559ed95c84a00e",
  "kind": "structure",
  "lexical_name": "CommandContextInfo",
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
  "slug": "commandcontextinfo--d4fae38706d29c27876f4f32",
  "source": {
    "blob": "ff0b1f85d6b211677b763aacdb13d569b6f62025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4fae38706d29c27876f4f3263091af0182ded28d0b6e0fb13554f08a1b1b9d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cffe8c039722e855a270fccbbe679b6c60ac20595b0f1fbaf5559ed95c84a00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommandContextInfo where
  env           : Environment
  /--
  Final environment at the end of `elabCommand`; empty for nested contexts. This environment can be
  used to access information about the fully-elaborated current declaration such as declaration
  ranges. It may not be a strict superset of `env` in case of backtracking, so `env` should be
  preferred to access information about the elaboration context at the time this context object was
  created.
  -/
  cmdEnv?       : Option Environment := none
  fileMap       : FileMap
  mctx          : MetavarContext := {}
  options       : Options        := {}
  currNamespace : Name           := Name.anonymous
  openDecls     : List OpenDecl  := []
  ngen          : NameGenerator -- We must save the name generator to implement `ContextInfo.runMetaM` and making we not create `MVarId`s used in `mctx`.

/--
Context from the root of the `InfoTree` up to this node.
Note that the term information collected during elaboration may contain metavariables, and their
assignments are stored at `mctx`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0b1f85d6b211677b763aacdb13d569b6f62025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
