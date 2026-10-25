# elabSubst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6405a9a63a2d9c37c34ab42fcefe30304906fab1de22811af3c5360f655e25d",
  "kind": "def",
  "lexical_name": "elabSubst",
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
  "slug": "elabsubst--a3b024fe0381d0e6bee01077",
  "source": {
    "blob": "93ccf3f0a584d0877fb3442500c1b7e37083fe83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3b024fe0381d0e6bee010770cff149e86de8a31167cf39178d9f67a2ec5b407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6405a9a63a2d9c37c34ab42fcefe30304906fab1de22811af3c5360f655e25d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab subst] def elabSubst : TermElab := fun stx expectedType? => do
  let expectedType? ← tryPostponeIfHasMVars? expectedType?
  match stx with
  | `($heqStx ▸ $hStx) => do
     synthesizeSyntheticMVars
     let mut heq ← withSynthesize <| elabTerm heqStx none
     let heqType ← inferType heq
     let heqType ← instantiateMVars heqType
     match (← Meta.matchEq? heqType) with
     | none => throwError "invalid `▸` notation, argument{indentExpr heq}\n\
        has type{indentExpr heqType}\n\
        equality expected\
        {← Term.hintAutoImplicitFailure heq (expected := "an equality")}"
     | some (α, lhs, rhs) =>
       let mut lhs := lhs
       let mut rhs := rhs
       let mkMotive (lhs typeWithLooseBVar : Expr) := do
         withLocalDeclD (← mkFreshUserName `x) α fun x => do
           withLocalDeclD (← mkFreshUserName `h) (← mkEq lhs x) fun h => do
             mkLambdaFVars #[x, h] $ typeWithLooseBVar.instantiate1 x
       match expectedType? with
       | some expectedType =>
         let mut expectedAbst ← kabstract expectedType rhs
         unless expectedAbst.hasLooseBVars do
           expectedAbst ← kabstract expectedType lhs
           unless expectedAbst.hasLooseBVars do
             throwError "invalid `▸` notation, expected result type of cast is {indentExpr expectedType}\nhowever, the equality {indentExpr heq}\nof type {indentExpr heqType}\ndoes not contain the expected result type on either the left or the right hand side"
           heq ← mkEqSymm heq
           (lhs, rhs) := (rhs, lhs)
         let hExpectedType := expectedAbst.instantiate1 lhs
         let (h, badMotive?) ← withRef hStx do
           let h ← elabTerm hStx hExpectedType
           try
             return (← ensureHasType hExpectedType h, none)
           catch ex =>
             -- if `rhs` occurs in `hType`, we try to apply `heq` to `h` too
             let hType ← inferType h
             let hTypeAbst ← kabstract hType rhs
             unless hTypeAbst.hasLooseBVars do
               throw ex
             let hTypeNew := hTypeAbst.instantiate1 lhs
             unless (← isDefEq hExpectedType hTypeNew) do
               throw ex
             let motive ← mkMotive rhs hTypeAbst
             if !(← isTypeCorrect motive) then
               return (h, some motive)
             else
               return (← mkEqRec motive h (← mkEqSymm heq), none)
         let motive ← mkMotive lhs expectedAbst
         if badMotive?.isSome || !(← isTypeCorrect motive) then
           -- Before failing try to use `subst`
           if ← (isSubstCandidate lhs rhs <||> isSubstCandidate rhs lhs) then
             withLocalIdentFor heqStx heq fun heqStx => do
               let h ← instantiateMVars h
               if h.hasMVar then
                 -- If `h` has metavariables, we try to elaborate `hStx` again after we substitute `heqStx`
                 -- Remark: re-elaborating `hStx` may be problematic if `hStx` contains the `lhs` of `heqStx` which will be eliminated by `subst`
                 let stxNew ← `(by subst $heqStx; exact $hStx)
                 withMacroExpansion stx stxNew (elabTerm stxNew expectedType)
               else
                 withLocalIdentFor hStx h fun hStx => do
                   let stxNew ← `(by subst $heqStx; exact $hStx)
                   withMacroExpansion stx stxNew (elabTerm stxNew expectedType)
           else
             throwError "invalid `▸` notation, failed to compute motive for the substitution"
         else
           mkEqRec motive h heq
       | none =>
         let h ← elabTerm hStx none
         let hType ← inferType h
         let mut hTypeAbst ← kabstract hType lhs
         unless hTypeAbst.hasLooseBVars do
           hTypeAbst ← kabstract hType rhs
           unless hTypeAbst.hasLooseBVars do
             throwError "invalid `▸` notation, the equality{indentExpr heq}\nhas type {indentExpr heqType}\nbut neither side of the equality is mentioned in the type{indentExpr hType}"
           heq ← mkEqSymm heq
           (lhs, rhs) := (rhs, lhs)
         let motive ← mkMotive lhs hTypeAbst
         unless (← isTypeCorrect motive) do
           throwError "invalid `▸` notation, failed to compute motive for the substitution"
         mkEqRec motive h heq
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccf3f0a584d0877fb3442500c1b7e37083fe83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
