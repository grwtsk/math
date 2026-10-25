# evalChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ce3fc13eefebecf30060571543b36167354ecb49cd24c96bc98ade732da1882",
  "kind": "def",
  "lexical_name": "evalChange",
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
  "slug": "evalchange--cf386ead4486b63e9ca392cf",
  "source": {
    "blob": "07722437f8c3fa7124969a031c5b00dda2d14c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf386ead4486b63e9ca392cf2dc665b8925b350e62634bee28ec7d6ddf6460ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ce3fc13eefebecf30060571543b36167354ecb49cd24c96bc98ade732da1882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic change] def evalChange : Tactic
  | `(tactic| change $newType:term $[$loc:location]?) => do
    withLocation (expandOptLocation (Lean.mkOptionalNode loc))
      (atLocal := fun h => do
        let (hTy', mvars) ← withCollectingNewGoalsFrom (elabChange (← h.getType) newType) (← getMainTag) `change
        liftMetaTactic fun mvarId => do
          return (← mvarId.changeLocalDecl h hTy') :: mvars)
      (atTarget := do
        let (tgt', mvars) ← withCollectingNewGoalsFrom (elabChange (← getMainTarget) newType) (← getMainTag) `change
        liftMetaTactic fun mvarId => do
          return (← mvarId.replaceTargetDefEq tgt') :: mvars)
      (failed := fun _ => throwError "'change' tactic failed")
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07722437f8c3fa7124969a031c5b00dda2d14c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
