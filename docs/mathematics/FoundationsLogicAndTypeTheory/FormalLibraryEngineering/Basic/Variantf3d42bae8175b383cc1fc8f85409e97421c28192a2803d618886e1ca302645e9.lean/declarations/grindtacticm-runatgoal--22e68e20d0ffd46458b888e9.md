# GrindTacticM.runAtGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb2049239c650d254a47dad1d31d36f73d4500c40749117547815c74b860825b",
  "kind": "def",
  "lexical_name": "GrindTacticM.runAtGoal",
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
  "slug": "grindtacticm-runatgoal--22e68e20d0ffd46458b888e9",
  "source": {
    "blob": "f5afcb4743f561901debc33e31487dc8cbfeaa97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e68e20d0ffd46458b888e913fa4359ffa96377f824a721b552a4a3aaf7ea5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb2049239c650d254a47dad1d31d36f73d4500c40749117547815c74b860825b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrindTacticM.runAtGoal (mvarId : MVarId) (params : Params) (k : GrindTacticM α) (sym : Bool := false) : TacticM (α × State) := do
  let evalTactic ← mkEvalTactic params
  /-
  **Note**: We don't want to close branches using `sorry` after applying `intros + assertAll`.
  Reconsider the option `useSorry`.
  -/
  let params' := { params with config.useSorry := false }
  let (methods, ctx, sctx, state) ← liftMetaM <| GrindM.runAtGoal mvarId params' (evalTactic? := some evalTactic) fun goal => do
      let goals ←
        if sym then
          /- In sym mode, skip eager intros + by-contradiction. The user controls intro/internalize.
             Preprocess for maximal term sharing, required by Sym operations (introN, BackwardRule.apply, etc.). -/
          let mvarId ← Sym.preprocessMVar goal.mvarId
          pure [{ goal with mvarId }]
        else
          let a : Action := Action.intros 0 >> Action.assertAll
          match (← a.run goal) with
          | .closed _ => pure []
          | .stuck gs => pure gs
      let methods ← getMethods
      let ctx ← readThe Meta.Grind.Context
      /- Restore original config -/
      let ctx := { ctx with config := params.config }
      let sctx ← readThe Meta.Sym.Context
      let grindState ← get
      let symState ← getThe Sym.State
      return (methods, ctx, sctx, { grindState, symState, goals })
  let tctx ← read
  k { tctx with methods, ctx, sctx, params, sym } |>.run state

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf3d42bae8175b383cc1fc8f85409e97421c28192a2803d618886e1ca302645e9.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5afcb4743f561901debc33e31487dc8cbfeaa97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
