# getCustomEliminators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e530d6b9bbd5d129c55e04356a2efff1a8efa1128daaa881d8850bb26acb434",
  "kind": "def",
  "lexical_name": "getCustomEliminators",
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
  "slug": "getcustomeliminators--99dd572d4bd324c763397132",
  "source": {
    "blob": "dc22ec5dd0315225ce106d3c8c1185aa21b327a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99dd572d4bd324c763397132b658a54d25b6996982ef10ff20153629c90f62bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e530d6b9bbd5d129c55e04356a2efff1a8efa1128daaa881d8850bb26acb434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCustomEliminators : CoreM CustomEliminators := do
  return customEliminatorExt.getState (← getEnv)

/--
Gets an eliminator appropriate for the provided array of targets.
If `induction` is `true` then returns a matching eliminator defined using the `@[induction_eliminator]` attribute
and otherwise returns one defined using the `@[cases_eliminator]` attribute.

The `@[induction_eliminator]` attribute is for the `induction` tactic
and the `@[cases_eliminator]` attribute is for the `cases` tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc22ec5dd0315225ce106d3c8c1185aa21b327a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
