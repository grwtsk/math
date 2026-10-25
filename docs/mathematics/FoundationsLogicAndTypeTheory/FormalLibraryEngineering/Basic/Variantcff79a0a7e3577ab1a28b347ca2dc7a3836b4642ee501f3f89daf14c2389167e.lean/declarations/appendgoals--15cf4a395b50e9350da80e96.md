# appendGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3703a8125581406b4a6fb7197a99679da6a0e05b90e81d9833c8571a4a98b293",
  "kind": "def",
  "lexical_name": "appendGoals",
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
  "slug": "appendgoals--15cf4a395b50e9350da80e96",
  "source": {
    "blob": "f810761e2bc322b9e1e046154d3a2148a7436e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15cf4a395b50e9350da80e965966369a92d2552359fbf2efcb7fcb56cd952f8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3703a8125581406b4a6fb7197a99679da6a0e05b90e81d9833c8571a4a98b293`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def appendGoals (mvarIds : List MVarId) : TacticM Unit :=
  modify fun s => { s with goals := s.goals ++ mvarIds }

/--
Discard the first goal and replace it by the given list of goals,
keeping the other goals. This is used in conjunction with `getMainGoal`.

Contract: between `getMainGoal` and `replaceMainGoal`, nothing manipulates the goal list.

See also `Lean.Elab.Tactic.popMainGoal` and `Lean.Elab.Tactic.pushGoal`/`Lean.Elab.Tactic.pushGoal` for another interface.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantcff79a0a7e3577ab1a28b347ca2dc7a3836b4642ee501f3f89daf14c2389167e.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f810761e2bc322b9e1e046154d3a2148a7436e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
