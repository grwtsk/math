# _root_.Lean.MVarId.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ed096b74101b4920ba1d848262063fc12912700183e6caa5f3fdefe854c2b89",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.induction",
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
  "slug": "root-lean-mvarid-induction--a284c91355d52a1b8e516ce8",
  "source": {
    "blob": "285ee1f4878be40473f8219f0f2eecd0d0b213b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a284c91355d52a1b8e516ce8b63c30648f3171ca837647e1ea9be4936bac5f6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ed096b74101b4920ba1d848262063fc12912700183e6caa5f3fdefe854c2b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.induction (mvarId : MVarId) (majorFVarId : FVarId) (recursorName : Name) (givenNames : Array AltVarNames := #[]) : MetaM (Array InductionSubgoal) :=
  mvarId.withContext do
    trace[Meta.Tactic.induction] "initial\n{MessageData.ofGoal mvarId}"
    mvarId.checkNotAssigned `induction
    let majorLocalDecl ← majorFVarId.getDecl
    let recursorInfo ← mkRecursorInfo recursorName
    let some majorType ← whnfUntil majorLocalDecl.type recursorInfo.typeName
      | throwUnexpectedMajorType `induction mvarId majorLocalDecl.type
    majorType.withApp fun _ majorTypeArgs => do
      recursorInfo.paramsPos.forM fun paramPos? => do
        match paramPos? with
        | none          => pure ()
        | some paramPos => if paramPos ≥ majorTypeArgs.size then throwTacticEx `induction mvarId m!"major premise type is ill-formed{indentExpr majorType}"
      let indices ← getMajorTypeIndices mvarId `induction recursorInfo majorType
      let target ← mvarId.getType
      if (← pure !recursorInfo.depElim <&&> exprDependsOn target majorFVarId) then
        throwTacticEx `induction mvarId m!"recursor '{recursorName}' does not support dependent elimination, but conclusion depends on major premise"
      -- Revert indices and major premise preserving variable order
      let (reverted, mvarId) ← mvarId.revert ((indices.map Expr.fvarId!).push majorFVarId) true
      -- Re-introduce indices and major
      let (indices', mvarId) ← mvarId.introNP indices.size
      let (majorFVarId', mvarId) ← mvarId.intro1P
      -- Create FVarSubst with indices and major
      let baseSubst := Id.run do
        let mut subst : FVarSubst := {}
        subst := subst.insert majorFVarId (mkFVar majorFVarId')
        let mut i := 0
        for index in indices do
          subst := subst.insert index.fvarId! (mkFVar indices'[i]!)
          i     := i + 1
        pure subst
      trace[Meta.Tactic.induction] "after revert&intro\n{MessageData.ofGoal mvarId}"
      -- Update indices and major
      let indices := indices'.map mkFVar
      let major := mkFVar majorFVarId'
      mvarId.withContext do
        let recursor ← mkRecursorAppPrefix mvarId `induction majorFVarId' recursorInfo indices
        finalize mvarId givenNames recursorInfo reverted major indices baseSubst recursor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc57f77eadeb8355513f11b1c3b066331e320c1ecb496c3472f3aeddc534c9d7b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `285ee1f4878be40473f8219f0f2eecd0d0b213b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
