# elabGRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb09b793a35389101104893e8c24115fb56be343839530f8f9946862821b6780",
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
  "slug": "elabgrewrite--ff0bf7454546f4426b6d0315",
  "source": {
    "blob": "c13e144f79677ab5e57a39842c4c1a36ea0a9034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff0bf7454546f4426b6d0315f865b08bc979f32592e09c7eed5a4d0bed03044b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb09b793a35389101104893e8c24115fb56be343839530f8f9946862821b6780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–98.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c13e144f79677ab5e57a39842c4c1a36ea0a9034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
