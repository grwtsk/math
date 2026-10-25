# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1200e515bcae736ed2ae4ca150390da4c6bd8e33e04771868df666e1b2e31c7d",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--71d48725c8d50c8c85cae84e",
  "source": {
    "blob": "0ab29fabd52e41b2d813c0fea7a32026e498158f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d48725c8d50c8c85cae84e088b9d0bd062a18f34695f5cece08ce0a66dc6c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1200e515bcae736ed2ae4ca150390da4c6bd8e33e04771868df666e1b2e31c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| interval_cases $[$[$h :]? $e]? $[using $lb, $ub]?) => do
    let g ← getMainGoal
    let cont x h? subst g e lbs ubs mustUseBounds : TacticM Unit := do
      let goals ← IntervalCases.intervalCases g (.fvar x) e lbs ubs mustUseBounds
      let gs ← goals.mapM fun { goal, .. } => do
        let (fv, g) ← goal.intro1
        let (subst, g) ← substCore g fv (fvarSubst := subst)
        if let some hStx := h.getD none then
          if let some fv := h? then
            g.withContext <| (subst.get fv).addLocalVarInfoForBinderIdent hStx
        pure g
      replaceMainGoal gs.toList
    g.withContext do
    let hName? := (h.getD none).map fun
      | `(binderIdent| $n:ident) => n.getId
      | _ => `_
    match e, lb, ub with
    | e, some lb, some ub =>
      let e ← if let some e := e then Tactic.elabTerm e none else mkFreshExprMVar none
      let lb' ← Tactic.elabTerm lb none
      let ub' ← Tactic.elabTerm ub none
      let lbTy ← inferType lb'
      let ubTy ← inferType ub'
      try
        let (_, hi, _) ← parseBound lbTy
        let .true ← isDefEq e hi | failure
      catch _ => throwErrorAt lb "expected a term of the form _ < {e} or _ ≤ {e}, got {lbTy}"
      try
        let (lo, _) ← parseBound ubTy
        let .true ← isDefEq e lo | failure
      catch _ => throwErrorAt ub "expected a term of the form {e} < _ or {e} ≤ _, got {ubTy}"
      let (subst, xs, g) ← g.generalizeHyp #[{ expr := e, hName? }] (← getFVarIdsAt g)
      g.withContext do
      cont xs[0]! xs[1]? subst g e #[subst.apply lb'] #[subst.apply ub'] (mustUseBounds := true)
    | some e, none, none =>
      let e ← Tactic.elabTerm e none
      let (subst, xs, g) ← g.generalizeHyp #[{ expr := e, hName? }] (← getFVarIdsAt g)
      let x := xs[0]!
      g.withContext do
      let e := subst.apply e
      let mut lbs := #[]
      let mut ubs := #[]
      for ldecl in ← getLCtx do
        try
          let (lo, hi, _) ← parseBound ldecl.type
          if ← withNewMCtxDepth <| withReducible <| isDefEq (.fvar x) lo then
            ubs := ubs.push (.fvar ldecl.fvarId)
          else if ← withNewMCtxDepth <| withReducible <| isDefEq (.fvar x) hi then
            lbs := lbs.push (.fvar ldecl.fvarId)
          else failure
        catch _ => pure ()
      cont x xs[1]? subst g e lbs ubs (mustUseBounds := false)
    | _, _, _ => throwUnsupportedSyntax

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab29fabd52e41b2d813c0fea7a32026e498158f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
