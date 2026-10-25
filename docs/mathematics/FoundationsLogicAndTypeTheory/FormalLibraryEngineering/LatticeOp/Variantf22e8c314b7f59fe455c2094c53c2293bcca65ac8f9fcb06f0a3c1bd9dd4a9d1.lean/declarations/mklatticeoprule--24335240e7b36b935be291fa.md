# mkLatticeOpRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:328678f3855305ad39a50865a2aadc2aceddabd1e3f505794abe0076250e171c",
  "kind": "def",
  "lexical_name": "mkLatticeOpRule",
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
  "slug": "mklatticeoprule--24335240e7b36b935be291fa",
  "source": {
    "blob": "36551109b40f9de23c922c11950354862373b473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24335240e7b36b935be291fac881041f8c00c7c5822975c3f72ef584b15dd5b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:328678f3855305ad39a50865a2aadc2aceddabd1e3f505794abe0076250e171c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkLatticeOpRule (rhs : Expr) (op : LatticeOp) : MetaM BackwardRule := do
  -- Merge the operator's own rewrites and terminal with the built-in connective seeds: saturation can
  -- reduce to any built-in connective, so its rewrites and terminals are always in scope. On a head
  -- clash the operator's own contribution wins: its rewrite is tried first, its terminal inserted last.
  let rewrites := builtinLatticeOps.foldl (· ++ ·.rewrites) op.rewrites
  let terminals ← mkLatticeTerminals
    (builtinLatticeOps.foldl (fun ts s => ts ++ s.terminal?.toArray) #[] ++ op.terminal?.toArray)
  rhs.withApp fun head args => do
    -- Hold the operator's `numConst` leading arguments (its carrier type and typeclass instances)
    -- concrete; make the operands and excess state arguments after them schematic, so the rule serves
    -- every operand and state chain of this shape.
    let vars ← (args.extract op.numConst).mapM fun a => do mkFreshExprMVar (← Meta.inferType a)
    let rhs' := mkAppN head (args.extract 0 op.numConst ++ vars)
    -- Saturate the operator and prove `pre ⊑ reduced`: fire the terminal keyed by the reduced head,
    -- or hand back the residual entailment as the subgoal when the head has none. An irreducible
    -- operator with no terminal would make that residual the original goal, so no rule is produced.
    let (reduced, eqProof?) ← saturateLatticeOp rewrites rhs'
    let pre ← mkFreshExprMVar (← Meta.inferType rhs')
    let redHead := reduced.getAppFn.constName?.getD .anonymous
    let termProof? ← terminals[redHead]?.mapM fun (termLemma, rhsArgCount) => do
      let args := reduced.getAppArgs
      mkPointFrameApply termLemma (mkAppN reduced.getAppFn (args.extract 0 rhsArgCount)) pre
        (args.extract rhsArgCount).toList
    let prf ←
      match (termProof?, eqProof?) with
      | (none, none) =>
        throwError "frame operator `{op.head}` neither reduces nor has a registered terminal; its \
          lattice split rule would be the identity"
      | (some termProof, none) => pure termProof
      | (_, some eqProof) =>
        -- Lift the saturation equality `rhs' = reduced` through `pre ⊑ ·`, turning the terminal proof of
        -- `pre ⊑ reduced` into a proof of `pre ⊑ rhs'`.
        let termProof ← termProof?.getDM (mkFreshExprMVar (← mkAppM ``PartialOrder.rel #[pre, reduced]))
        let relPre ← mkAppM ``PartialOrder.rel #[pre]
        let eqMp ← mkAppM ``Eq.mp #[← mkEqSymm (← mkCongrArg relPre eqProof)]
        pure (mkApp eqMp termProof)
    let res ← abstractMVars prf
    mkBackwardRuleFromExpr res.expr res.paramNames.toList


end VCGen
end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LatticeOp/Variantf22e8c314b7f59fe455c2094c53c2293bcca65ac8f9fcb06f0a3c1bd9dd4a9d1.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36551109b40f9de23c922c11950354862373b473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
