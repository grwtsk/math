# FieldsHintView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:691bd5c0ec5b1c5a0e36bc85eaa08660bf6bc369ffd64319eb3e426edfc4cd58",
  "kind": "structure",
  "lexical_name": "FieldsHintView",
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
  "slug": "fieldshintview--493c1ef1e12e3cea4c368da0",
  "source": {
    "blob": "3d0a6dcf8270d65315af5b22b3623a07b5d2a877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Variant81d8a4d88a8591f99294ae3b318fbee72dcc4a837cf68c87195124f3cd385eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:493c1ef1e12e3cea4c368da059e12e5d5042df6affd2f6137d3768694b39c108",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Variant81d8a4d88a8591f99294ae3b318fbee72dcc4a837cf68c87195124f3cd385eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:691bd5c0ec5b1c5a0e36bc85eaa08660bf6bc369ffd64319eb3e426edfc4cd58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure FieldsHintView where
  /-- The position of the first existing field in the structure instance, if one exists. -/
  initFieldPos? : Option String.Pos.Raw
  /-- The tail position of the last existing field, or `none` if there are none. -/
  lastFieldTailPos? : Option String.Pos.Raw
  /-- Does this structure instance have a `with` clause? -/
  hasWith : Bool
  /-- The number of existing fields present in the structure instance. -/
  numFields : Nat
  /-- The position of the opening syntax (i.e., `{`) for the structure instance. -/
  openingPos : String.Pos.Raw
  /-- The position of the "leader" immediately preceding the fields -- either `with` or `{`. -/
  leaderPos : String.Pos.Raw
  /-- The tail position of the "leader" syntax. -/
  leaderTailPos : String.Pos.Raw
  /--
  The position of the closing syntax (i.e., `}`) for the structure instance.

  We refer only to the "closing" token `}` rather than a flexible "trailer" because macro-expansion
  erases the type annotation if it was present, and it's impossible to have an ellipsis if we're
  generating a "fields missing" error.
  -/
  closingPos : String.Pos.Raw

/--
Creates a hint message for the "fields missing" error that fills in the missing fields, adapting to
the structure instance notation style of the current syntax. Note that if the syntax is malformed or
synthetic, this function returns an empty message instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Variant81d8a4d88a8591f99294ae3b318fbee72dcc4a837cf68c87195124f3cd385eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Variant81d8a4d88a8591f99294ae3b318fbee72dcc4a837cf68c87195124f3cd385eca.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0a6dcf8270d65315af5b22b3623a07b5d2a877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
