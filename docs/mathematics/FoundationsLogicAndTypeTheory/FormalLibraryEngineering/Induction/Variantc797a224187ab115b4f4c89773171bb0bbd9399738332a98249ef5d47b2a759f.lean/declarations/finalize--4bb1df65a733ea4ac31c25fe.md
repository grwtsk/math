# finalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:202957743601b7298de01f6bd87b4193ed55288887cda5c01312bd21fb4e7680",
  "kind": "def",
  "lexical_name": "finalize",
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
  "slug": "finalize--4bb1df65a733ea4ac31c25fe",
  "source": {
    "blob": "49bfb8b6e392784005edbb05d5ec0696dbd5024a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bb1df65a733ea4ac31c25fee66aa5d6f58b5328a4accf1cca8275a395e85ffb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:202957743601b7298de01f6bd87b4193ed55288887cda5c01312bd21fb4e7680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def finalize
    (mvarId : MVarId) (givenNames : Array AltVarNames) (recursorInfo : RecursorInfo)
    (reverted : Array FVarId) (major : Expr) (indices : Array Expr) (baseSubst : FVarSubst) (recursor : Expr)
    : MetaM (Array InductionSubgoal) := do
  let target ← mvarId.getType
  let initialArity := getTargetArity target
  let recursorType ← inferType recursor
  let numMinors := recursorInfo.produceMotive.length
  let rec loop (pos : Nat) (minorIdx : Nat) (recursor recursorType : Expr) (consumedMajor : Bool) (subgoals : Array InductionSubgoal) := do
    let recursorType ← whnfForall recursorType
    if recursorType.isForall && pos < recursorInfo.numArgs then
      if pos == recursorInfo.firstIndexPos then
        let (recursor, recursorType) ← indices.foldlM (init := (recursor, recursorType)) fun (recursor, recursorType) index => do
          let recursor := mkApp recursor index
          let recursorType ← getTypeBody mvarId recursorType index
          pure (recursor, recursorType)
        let recursor := mkApp recursor major
        let recursorType ← getTypeBody mvarId recursorType major
        let consumedMajor := true
        loop (pos+1+indices.size) minorIdx recursor recursorType consumedMajor subgoals
      else
        -- consume motive
        let tag ← mvarId.getTag
        if minorIdx ≥ numMinors then throwTacticEx `induction mvarId "ill-formed recursor"
        match recursorType with
        | Expr.forallE n d _ c =>
          let d := d.headBeta
          let tag' := if numMinors == 1 then tag else tag ++ n.eraseMacroScopes
          -- Remark is givenNames is not empty, then user provided explicit alternatives for each minor premise
          if c.isInstImplicit && givenNames.isEmpty then
            match (← synthInstance? d) with
            | some inst =>
              let recursor := mkApp recursor inst
              let recursorType ← getTypeBody mvarId recursorType inst
              loop (pos+1) (minorIdx+1) recursor recursorType consumedMajor subgoals
            | none => do
              -- Add newSubgoal if type class resolution failed
              let mvar ← mkFreshExprSyntheticOpaqueMVar d tag'
              let recursor := mkApp recursor mvar
              let recursorType ← getTypeBody mvarId recursorType mvar
              loop (pos+1) (minorIdx+1) recursor recursorType consumedMajor (subgoals.push { mvarId := mvar.mvarId! })
          else
            let arity := getTargetArity d
            if arity < initialArity then throwTacticEx `induction mvarId "ill-formed recursor"
            let nparams := arity - initialArity -- number of fields due to minor premise
            let nextra  := reverted.size - indices.size - 1 -- extra dependencies that have been reverted
            let minorGivenNames := if h : minorIdx < givenNames.size then givenNames[minorIdx] else {}
            let mvar ← mkFreshExprSyntheticOpaqueMVar d tag'
            let recursor := mkApp recursor mvar
            let recursorType ← getTypeBody mvarId recursorType mvar
            -- Try to clear major premise from new goal
            trace[Meta.Tactic.induction] "name of major premise: {major.fvarId!.name}"
            let mvarId' ← mvar.mvarId!.tryClear major.fvarId!
            let (fields, mvarId') ←  mvarId'.introN nparams minorGivenNames.varNames (useNamesForExplicitOnly := !minorGivenNames.explicit)
            let (extra,  mvarId') ← mvarId'.introNP nextra
            let subst := reverted.size.fold (init := baseSubst) fun i _ (subst : FVarSubst) =>
              if i < indices.size + 1 then subst
              else
                let revertedFVarId := reverted[i]
                let newFVarId      := extra[i - indices.size - 1]!
                subst.insert revertedFVarId (mkFVar newFVarId)
            let fields := fields.map mkFVar
            loop (pos+1) (minorIdx+1) recursor recursorType consumedMajor (subgoals.push { mvarId := mvarId', fields, subst})
        | _ => unreachable!
    else
      unless consumedMajor do throwTacticEx `induction mvarId "ill-formed recursor"
      mvarId.assign recursor
      trace[Meta.Tactic.induction] "finalize loop is done, {subgoals.size} subgoals"
      pure subgoals
  loop (recursorInfo.paramsPos.length + 1) 0 recursor recursorType false #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantc797a224187ab115b4f4c89773171bb0bbd9399738332a98249ef5d47b2a759f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bfb8b6e392784005edbb05d5ec0696dbd5024a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
