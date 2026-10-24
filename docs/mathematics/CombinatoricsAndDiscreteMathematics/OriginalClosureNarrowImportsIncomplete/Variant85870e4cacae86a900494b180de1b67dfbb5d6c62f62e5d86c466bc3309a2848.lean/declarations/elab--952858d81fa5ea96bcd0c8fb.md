# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:480a09ae5fd67b942f5a22816c52501baa01060b50249e86fce740490cb38504",
  "kind": "elab",
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
  "slug": "elab--952858d81fa5ea96bcd0c8fb",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17884,
    "line": 17816,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:952858d81fa5ea96bcd0c8fbd14e301757d7a325c9645546e9cb91b6b358d84a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:480a09ae5fd67b942f5a22816c52501baa01060b50249e86fce740490cb38504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17816–17884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "pts_pl " L:term " using " "[" ps:term,* "]" : tactic => withMainContext do
  let l ← Term.elabTerm L none
  let target := (← instantiateMVars (← getMainTarget)).consumeMData
  let mut proofs : Array (TSyntax `term) := #[]
  let mut fs : Array Lean.Expr := #[]
  for p in ps.getElems do
    let pe ← Term.elabTerm p none
    let ty ← instantiateMVars (← inferType pe)
    let args := ty.getAppArgs
    if ty.getAppFn.isConstOf ``PureTypeSystem.Labelled.Proves then
      proofs := proofs.push p
      fs := fs.push args[args.size-1]!
    else if ty.getAppFn.isConstOf ``PureTypeSystem.Labelled.Equivalent then
      let a := args[args.size-2]!
      let b := args[args.size-1]!
      let iff ← mkAppM ``PureTypeSystem.Labelled.LogicSetup.iff #[l,a,b]
      fs := fs.push iff
      let fp ← mkAppM ``PureTypeSystem.Labelled.LogicSetup.iff_of_equivalent
        #[l, ← formulaProof l a, ← formulaProof l b, pe]
      proofs := proofs.push (← Term.exprToSyntax fp)
    else throwError "pts_pl input is neither Proves nor Equivalent: {ty}"
  unless target.getAppFn.isConstOf ``PureTypeSystem.Labelled.Proves do
    throwError "pts_pl expects a Proves goal; use equivalent_of_iff first: {target}"
  let goalFormula := target.getAppArgs.back!
  let ((hs,q),atoms) ← (do
    let hs ← fs.mapM reify
    let q ← reify goalFormula
    pure (hs,q)).run #[]
  let hsyntax := Syntax.TSepArray.ofElems (← hs.mapM (fun n => n.syntax))
  let qsyntax ← q.syntax
  let body ← atomFunction atoms L
  let a ← `(fun i : Nat => $body)
  let ha ← `(by
    have hb := ($L).bottom_formula
    intro i
    try dsimp only
    split_ifs <;> solve_by_elim [($L).imp_formula,($L).neg_formula,($L).conj_formula,($L).disj_formula,($L).iff_formula,($L).cond_formula,($L).bottom_formula,($L).top_formula])
  let v := mkIdent `__pts_pl_v
  let hr := mkIdent `__pts_pl_mem
  let hv ← `(by
    intro $v:ident
    simp only [FiniteClassical.Formula.chain,List.foldr,FiniteClassical.Formula.eval,
      Bool.or_eq_true_eq_eq_true_or_eq_true,Bool.or_eq_false_eq_eq_false_and_eq_false,
      Bool.not_eq_true_eq_eq_false,Bool.not_eq_false_eq_eq_true,
      Bool.true_eq_false_eq_False,Bool.false_eq_true_eq_False,
      eq_self_iff_true,← Bool.eq_false_eq_not_eq_true]
    tauto)
  let r := mkIdent `__pts_pl_R
  let mem ← memCases r hr proofs
  let mt ← `(tactic| ($mem:tacticSeq))
  let hp ← `(by intro $r:ident $hr:ident; simp only [List.mem_cons,List.not_mem_nil] at $hr:ident; $mt)
  evalTactic (← `(tactic| refine ($L).propositional_consequence $a ?_ [$hsyntax,*] $qsyntax ?_ ?_))
  evalTactic (← `(tactic| exact $ha))
  evalTactic (← `(tactic| exact $hv))
  evalTactic (← `(tactic| exact $hp))
end PTSPropositional

end OAI

/- Source module: OAI.Computability.TypeSystem.Channels -/

namespace OAI

namespace PureTypeSystem.Labelled
universe u
variable {S : Type u} {P : Specification S}
namespace LogicSetup
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)} (L : LogicSetup P Γ γ C)
    {A B : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L17816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
