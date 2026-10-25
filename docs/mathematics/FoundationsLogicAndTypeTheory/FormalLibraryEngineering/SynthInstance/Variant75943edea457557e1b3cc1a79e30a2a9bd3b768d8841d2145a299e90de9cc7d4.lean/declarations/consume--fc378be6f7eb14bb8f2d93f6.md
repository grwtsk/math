# consume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b1ee75a5f6a042c82d1cf5205198bb899016268ead5a298aa5525343ff4ee5d",
  "kind": "def",
  "lexical_name": "consume",
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
  "slug": "consume--fc378be6f7eb14bb8f2d93f6",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc378be6f7eb14bb8f2d93f6af7bd0c1b24dc09e54297c4cf9ee78031ff67bd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b1ee75a5f6a042c82d1cf5205198bb899016268ead5a298aa5525343ff4ee5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def consume (cNode : ConsumerNode) : SynthM Unit := do
  /- Filter out subgoals that have already been assigned when solving typing constraints.
    This may happen when a local instance type depends on other local instances.
    For example, in Mathlib, we have
    ```
    @Submodule.setLike : {R : Type u_1} → {M : Type u_2} →
      [_inst_1 : Semiring R] →
      [_inst_2 : AddCommMonoid M] →
      [_inst_3 : @ModuleS R M _inst_1 _inst_2] →
      SetLike (@Submodule R M _inst_1 _inst_2 _inst_3) M
    ```
  -/
  let cNode := { cNode with
    subgoals := ← withMCtx cNode.mctx do
      cNode.subgoals.filterM (not <$> ·.mvarId!.isAssigned)
  }
  match cNode.subgoals with
  | []      => addAnswer cNode
  | mvar::_ =>
     let waiter := Waiter.consumerNode cNode
     let key ← mkTableKeyFor cNode.mctx mvar
     let entry? ← findEntry? key
     match entry? with
     | none       =>
       -- Remove unused arguments and try again, see comment at `removeUnusedArguments?`
       match (← removeUnusedArguments? cNode.mctx mvar) with
       | none => newSubgoal cNode.mctx key mvar waiter
       | some (mvarType', transformer) =>
         let key' ← withMCtx cNode.mctx <| mkTableKey mvarType'
         match (← findEntry? key') with
         | none =>
           let (mctx', mvar') ← withMCtx cNode.mctx do
             let mvar' ← mkFreshExprMVar mvarType'
             return (← getMCtx, mvar')
           newSubgoal mctx' key' mvar' (Waiter.consumerNode { cNode with mctx := mctx', subgoals := mvar'::cNode.subgoals })
         | some entry' =>
           let answers' ← entry'.answers.mapM fun a => withMCtx cNode.mctx do
             let trAnswr := Expr.betaRev transformer #[← instantiateMVars a.result.expr]
             let trAnswrType ← inferType trAnswr
             pure { a with result.expr := trAnswr, resultType := trAnswrType }
           modify fun s =>
             { s with
               resumeStack  := answers'.foldl (fun s answer => s.push (cNode, answer)) s.resumeStack,
               tableEntries := s.tableEntries.insert key' { entry' with waiters := entry'.waiters.push waiter } }
     | some entry => modify fun s =>
       { s with
         resumeStack  := entry.answers.foldl (fun s answer => s.push (cNode, answer)) s.resumeStack,
         tableEntries := s.tableEntries.insert key { entry with waiters := entry.waiters.push waiter } }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
