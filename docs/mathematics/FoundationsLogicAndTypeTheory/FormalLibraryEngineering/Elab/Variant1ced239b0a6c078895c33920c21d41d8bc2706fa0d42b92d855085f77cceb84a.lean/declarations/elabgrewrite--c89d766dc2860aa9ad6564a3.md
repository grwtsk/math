# elabGRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2867d1da65e1446e5e5244322364c85e9b8b2a156220d5e841f5300c19b10fb",
  "kind": "def",
  "lexical_name": "elabGRewrite",
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
  "slug": "elabgrewrite--c89d766dc2860aa9ad6564a3",
  "source": {
    "blob": "ff1566532695d1b9418b319ed99d6d2f6e16eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89d766dc2860aa9ad6564a3b8104128ca739a042f7402ba444901120fdcc75b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2867d1da65e1446e5e5244322364c85e9b8b2a156220d5e841f5300c19b10fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGRewrite (mvarId : MVarId) (e : Expr) (stx : Syntax) (forwardImp symm : Bool)
    (config : GRewrite.Config) : TacticM GRewriteResult := do
  let treesSaved ← getResetInfoTrees
  let r ← Term.withSynthesize do
    let mvarCounterSaved := (← getMCtx).mvarCounter
    let thm ← elabTerm stx none true
    if thm.hasSyntheticSorry then
      throwAbortTactic
    unless ← occursCheck mvarId thm do
      throwErrorAt stx
        "Occurs check failed: Expression{indentExpr thm}\ncontains the goal {Expr.mvar mvarId}"
    let mvarIds ← getMVarsNoDelayed thm
    let mctx ← getMCtx
    let mvarIds := mvarIds.filter fun mvarId ↦ mvarCounterSaved ≤ (mctx.getDecl mvarId).index
    let lctx ← getLCtx
    let mvarIds ← mvarIds.mapM fun mvarId ↦ do
      let mut fvarIds := #[]
      for decl in (← mvarId.getDecl).lctx do
        unless lctx.contains decl.fvarId do
          fvarIds := fvarIds.push decl
      return (mvarId, fvarIds)
    let r ← mvarId.grewrite e thm mvarIds
      (forwardImp := forwardImp) (symm := symm) (config := config)
    let mctx ← getMCtx
    let mvarIds := r.mvarIds.filter fun mvarId => mvarCounterSaved ≤ (mctx.getDecl mvarId).index
    return { r with mvarIds }
  let s ← getInfoState
  let trees := s.trees.map (·.substitute s.assignment)
  let trees := match r.lctx? with
    | some lctx => trees.map (updateInfoTree lctx)
    | none => trees
  modifyInfoState fun s => { s with trees := treesSaved ++ trees }
  finishElabGRewrite r

/-- Apply the `grewrite` tactic to the current goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant1ced239b0a6c078895c33920c21d41d8bc2706fa0d42b92d855085f77cceb84a.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1566532695d1b9418b319ed99d6d2f6e16eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
