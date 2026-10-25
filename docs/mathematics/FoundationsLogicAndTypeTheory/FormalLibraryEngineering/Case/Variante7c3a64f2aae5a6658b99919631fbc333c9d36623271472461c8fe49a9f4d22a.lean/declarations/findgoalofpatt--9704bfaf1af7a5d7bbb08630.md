# findGoalOfPatt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ada64b1e7d9618a0b7ea339cf9cd6dd90d4a05388e64c83c193e92ec34c925e",
  "kind": "def",
  "lexical_name": "findGoalOfPatt",
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
  "slug": "findgoalofpatt--9704bfaf1af7a5d7bbb08630",
  "source": {
    "blob": "7119470f0fd4bb9fcefc887ddbe327c30fe277f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9704bfaf1af7a5d7bbb08630160ab0e7803b8ef84ee348e1d3dbe3b14cbf26fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ada64b1e7d9618a0b7ea339cf9cd6dd90d4a05388e64c83c193e92ec34c925e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findGoalOfPatt (gs : List MVarId)
    (tag : TSyntax ``binderIdent) (patt? : Option Term) (renameI : TSyntaxArray `Lean.binderIdent) :
    TacticM (MVarId × List MVarId × List MVarId) :=
  Term.withoutErrToSorry do
    let fgs ← match tag with
      | `(binderIdent|$tag:ident) => filterTag gs tag.getId
      | _ => pure gs
    for g in fgs do
      let gs := gs.erase g
      if let some patt := patt? then
        let s ← saveState
        try
          let g ← renameInaccessibles g renameI
          -- Make a copy of `g` so that we don't assign type hints to `g` if we don't need to.
          let gCopy ← g.withContext <| mkFreshExprSyntheticOpaqueMVar (← g.getType) (← g.getTag)
          let g' :: gs' ← run gCopy.mvarId! <| withoutRecover <|
                            evalTactic (← `(tactic| refine_lift show $patt from ?_))
            | throwNoGoalsToBeSolved -- This should not happen
          -- Avoid assigning the type hint if the original type and the new type are
          -- defeq at reducible transparency.
          if ← g.withContext <| withReducible <| isDefEq (← g.getType) (← g'.getType) then
            g.assign (.mvar g')
          else
            g.assign gCopy
          return (g', gs', gs)
        catch _ =>
          restoreState s
      else
        let g ← renameInaccessibles g renameI
        return (g, [], gs)
    throwError "No goals with tag {tag} unify with the term {patt?.getD (← `(_))}, {
                ""}or too many names provided for renaming {
                ""}inaccessible variables."

/-- Given a `casePattBody`, either give a synthetic hole or a tactic sequence
(along with the syntax for the `=>`).
Converts holes into synthetic holes since they are processed with `elabTermWithHoles`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7119470f0fd4bb9fcefc887ddbe327c30fe277f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
