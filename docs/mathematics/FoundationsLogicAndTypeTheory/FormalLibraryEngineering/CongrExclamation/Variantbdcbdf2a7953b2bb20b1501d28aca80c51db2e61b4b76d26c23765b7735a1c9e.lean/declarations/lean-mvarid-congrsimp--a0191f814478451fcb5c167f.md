# Lean.MVarId.congrSimp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ba1344fbc485a69bf6b3e6e18d4c5c04ec4414e43b493f24920fa6f0af45b07",
  "kind": "def",
  "lexical_name": "Lean.MVarId.congrSimp?",
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
  "slug": "lean-mvarid-congrsimp--a0191f814478451fcb5c167f",
  "source": {
    "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0191f814478451fcb5c167f844fa1fcee04152bf7b0e97163e902dedacded9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ba1344fbc485a69bf6b3e6e18d4c5c04ec4414e43b493f24920fa6f0af45b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.congrSimp? (config : Congr!.Config) (mvarId : MVarId) :
    MetaM (Option (List MVarId)) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `congrSimp?
    let some (_, lhs, rhs) := (← withReducible mvarId.getType').eq? | return none
    let (fst, snd) := if config.preferLHS then (lhs, rhs) else (rhs, lhs)
    if let some mvars ← forSide mvarId fst then
      return mvars
    else if let some mvars ← forSide mvarId snd then
      return mvars
    else
      return none
where
  forSide (mvarId : MVarId) (side : Expr) : MetaM (Option (List MVarId)) :=
    commitWhenSome? do
      let side := side.cleanupAnnotations
      if not side.isApp then return none
      let numArgs := config.maxArgsFor side.getAppNumArgs
      if not config.partialApp && numArgs < side.getAppNumArgs then
        return none
      let mut f := side
      for _ in [:numArgs] do
        f := f.appFn!'
      let some congrThm ← mkCongrSimpNArgs f numArgs
        | return none
      observing? <| applyCongrThm? config mvarId congrThm.type congrThm.proof
  /-- Like `mkCongrSimp?` but takes in a specific arity. -/
  mkCongrSimpNArgs (f : Expr) (nArgs : Nat) : MetaM (Option CongrTheorem) := do
    let f := (← Lean.instantiateMVars f).cleanupAnnotations
    let info ← getFunInfoNArgs f nArgs
    mkCongrSimpCore? f info
      (← getCongrSimpKinds f info) (subsingletonInstImplicitRhs := false)

/--
Try applying user-provided congruence lemmas. If any are applicable,
returns a list of new goals.

Tries a congruence lemma associated to the LHS and then, if that failed, the RHS.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e8ba19f043c5b47163c53387cde93eab4a6123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
