# unfoldElimOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df3508ab16c89037fab03381a638503d713f376f6dca3b2b10decbbcb999061f",
  "kind": "def",
  "lexical_name": "unfoldElimOffset",
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
  "slug": "unfoldelimoffset--8d9d7c198723f7836291b38f",
  "source": {
    "blob": "df3a380bf055a11dc60be0d555b99de45a6aebb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variantaaa093e0b35af50451dd140cd5f17b8b4935de6a255399cea139119940f845f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d9d7c198723f7836291b38fcfdcdbf3ba72114475fa5d4f65bb18406b3c56b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variantaaa093e0b35af50451dd140cd5f17b8b4935de6a255399cea139119940f845f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df3508ab16c89037fab03381a638503d713f376f6dca3b2b10decbbcb999061f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def unfoldElimOffset (mvarId : MVarId) : MetaM MVarId := do
  if Option.isNone <| (← mvarId.getType).find? fun e => e.isConstOf ``Nat.Internal.elimOffset then
    throwError "goal's target does not contain `Nat.Internal.elimOffset`"
  mvarId.deltaTarget (· == ``Nat.Internal.elimOffset)

/--
Helper method for proving a conditional equational theorem associated with an alternative of
the `match`-eliminator `matchDeclName`. `type` contains the type of the theorem.

The `heqPos`/`heqNum` arguments indicate that these hypotheses are `Eq`/`HEq` hypotheses
to substitute first; this is used for the generalized match equations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variantaaa093e0b35af50451dd140cd5f17b8b4935de6a255399cea139119940f845f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchEqs/Variantaaa093e0b35af50451dd140cd5f17b8b4935de6a255399cea139119940f845f3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3a380bf055a11dc60be0d555b99de45a6aebb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
