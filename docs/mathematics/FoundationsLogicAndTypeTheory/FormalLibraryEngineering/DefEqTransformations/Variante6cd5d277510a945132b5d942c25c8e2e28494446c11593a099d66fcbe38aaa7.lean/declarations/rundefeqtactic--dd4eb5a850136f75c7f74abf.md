# runDefEqTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:905c8eb65166a662d73cb9ebd837c2190b57a993a295643dbef8218d15d69d59",
  "kind": "def",
  "lexical_name": "runDefEqTactic",
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
  "slug": "rundefeqtactic--dd4eb5a850136f75c7f74abf",
  "source": {
    "blob": "d3b84c14745bf69917ef33bc0af71403a1e6fc08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd4eb5a850136f75c7f74abf22e2c92badfdd52dcb2538a4cc0b19291182bdfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:905c8eb65166a662d73cb9ebd837c2190b57a993a295643dbef8218d15d69d59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runDefEqTactic (m : Option FVarId → Expr → MetaM Expr)
    (loc? : Option (TSyntax ``Parser.Tactic.location))
    (tacticName : String)
    (checkDefEq : Bool := true) :
    TacticM Unit := withMainContext do
  withLocation (expandOptLocation (Lean.mkOptionalNode loc?))
    (atLocal := fun h => liftMetaTactic1 fun mvarId => do
      let ty ← h.getType
      let ty' ← m h (← instantiateMVars ty)
      if Expr.equal ty ty' then
        return mvarId
      else
        mvarId.changeLocalDecl' (checkDefEq := checkDefEq) h ty')
    (atTarget := liftMetaTactic1 fun mvarId => do
      let ty ← instantiateMVars (← mvarId.getType)
      mvarId.change (checkDefEq := checkDefEq) (← m none ty))
    (failed := fun _ => throwError "{tacticName} failed")

/-- Like `Mathlib.Tactic.runDefEqTactic` but for `conv` mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variante6cd5d277510a945132b5d942c25c8e2e28494446c11593a099d66fcbe38aaa7.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b84c14745bf69917ef33bc0af71403a1e6fc08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
