# mkCongrSimpCore?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c462cc87afd7273f6e3ba42cd076f4a30f581089c33f62a4929349594a605d7",
  "kind": "def",
  "lexical_name": "mkCongrSimpCore?",
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
  "slug": "mkcongrsimpcore--56b77ea24d855cb7fcb536c0",
  "source": {
    "blob": "2b0f7de86c99ab7a804854faf9d97370d0007f8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56b77ea24d855cb7fcb536c0e0f1eb8d2f7a3fb1f71823e3b4c71418b5b9db9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c462cc87afd7273f6e3ba42cd076f4a30f581089c33f62a4929349594a605d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrSimpCore? (f : Expr) (info : FunInfo) (kinds : Array CongrArgKind) (subsingletonInstImplicitRhs : Bool := true) : MetaM (Option CongrTheorem) := do
  if let some result ← mk? f info kinds then
    return some result
  else if hasCastLike kinds then
    -- Simplify kinds and try again
    let kinds := kinds.map fun kind => if kind matches .cast | .subsingletonInst then .fixed else kind
    mk? f info kinds
  else
    return none
where
  /--
    Create a congruence theorem that is useful for the simplifier.
    In this kind of theorem, if the i-th argument is a `cast` argument, then the theorem
    contains an input `a_i` representing the i-th argument in the left-hand-side, and
    it appears with a cast (e.g., `Eq.rec ... a_i ...`) in the right-hand-side.
    The idea is that the right-hand-side of this theorem "tells" the simplifier
    how the resulting term looks like. -/
  mk? (f : Expr) (info : FunInfo) (kinds : Array CongrArgKind) : MetaM (Option CongrTheorem) := do
    try
      let fType ← inferType f
      forallBoundedTelescope fType kinds.size (cleanupAnnotations := true) fun lhss _ => do
        if lhss.size != kinds.size then return none
        let rec go (i : Nat) (rhss : Array Expr) (eqs : Array (Option EqInfo)) (hyps : Array Expr) : MetaM CongrTheorem := do
          if i == kinds.size then
            let lhs := mkAppN f lhss
            let rhs := mkAppN f rhss
            let type ← mkForallFVars hyps (← mkEq lhs rhs)
            let proof ← mkProof type kinds
            return { type, proof, argKinds := kinds }
          else
            let hyps := hyps.push lhss[i]!
            match kinds[i]! with
            | .heq | .fixedNoParam => unreachable!
            | .eq =>
              let localDecl ← lhss[i]!.fvarId!.getDecl
              withLocalDecl localDecl.userName localDecl.binderInfo localDecl.type fun rhs => do
              withLocalDeclD (localDecl.userName.appendBefore "e_") (← mkEq lhss[i]! rhs) fun eq => do
                go (i+1) (rhss.push rhs) (eqs.push <| some <| .hyp eq.fvarId!) (hyps.push rhs |>.push eq)
            | .fixed => go (i+1) (rhss.push lhss[i]!) (eqs.push none) hyps
            | .cast =>
              let rhsType := (← inferType lhss[i]!).replaceFVars (lhss[*...rhss.size]) rhss
              let rhs ← mkCast lhss[i]!.fvarId! rhsType info.paramInfo[i]!.backDeps eqs
              go (i+1) (rhss.push rhs) (eqs.push none) hyps
            | .subsingletonInst =>
              -- The `lhs` does not need to instance implicit since it can be inferred from the LHS
              withImplicitBinderInfos #[lhss[i]!] do
                let lhs := lhss[i]!
                let lhsType ← inferType lhs
                let rhsType := lhsType.replaceFVars (lhss[*...rhss.size]) rhss
                let rhsBi   := if subsingletonInstImplicitRhs then .instImplicit else .implicit
                withLocalDecl (← lhss[i]!.fvarId!.getDecl).userName rhsBi rhsType fun rhs => do
                  go (i+1) (rhss.push rhs) (eqs.push <| some <| .decSubsingleton lhs.fvarId! rhs.fvarId!) (hyps.push rhs)
        return some (← go 0 #[] #[] #[])
    catch _ =>
      return none

  mkProof (type : Expr) (kinds : Array CongrArgKind) : MetaM Expr := do
    let rec go (i : Nat) (type : Expr) : MetaM Expr := do
      if i == kinds.size then
        let some (_, lhs, _) := type.eq? | unreachable!
        mkEqRefl lhs
      else
        withNext type fun lhs type => do
        match kinds[i]! with
        | .heq | .fixedNoParam => unreachable!
        | .fixed => mkLambdaFVars #[lhs] (← go (i+1) type)
        | .cast => mkLambdaFVars #[lhs] (← go (i+1) type)
        | .eq =>
          let typeSub := type.bindingBody!.bindingBody!.instantiate #[(← mkEqRefl lhs), lhs]
          withNext type fun rhs type =>
          withNext type fun heq type => do
            let motive ← mkLambdaFVars #[rhs, heq] type
            let proofSub ← go (i+1) typeSub
            mkLambdaFVars #[lhs, rhs, heq] (← mkEqRec motive proofSub heq)
        | .subsingletonInst =>
          let typeSub := type.bindingBody!.instantiate #[lhs]
          withNext type fun rhs type => do
            let motive ← mkLambdaFVars #[rhs] type
            let proofSub ← go (i+1) typeSub
            let heq ← mkAppM ``Subsingleton.elim #[lhs, rhs]
            mkLambdaFVars #[lhs, rhs] (← mkEqNDRec motive proofSub heq)
     go 0 type

/--
Create a congruence theorem for `f`. The theorem is used in the simplifier.

If `subsingletonInstImplicitRhs = true`, the `rhs` corresponding to `[Decidable p]` parameters
is marked as instance implicit. It forces the simplifier to compute the new instance when applying
the congruence theorem.
For the `congr` tactic we set it to `false`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b0f7de86c99ab7a804854faf9d97370d0007f8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
