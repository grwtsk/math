# addPPExplicitToExposeDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4ab5ef8e37d933cee82908c2c60946c738050d949b47d603655cc42f327672f",
  "kind": "def",
  "lexical_name": "addPPExplicitToExposeDiff",
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
  "slug": "addppexplicittoexposediff--6fa836e27b7727f20152e176",
  "source": {
    "blob": "139c054faa039d297522f6f79da2ea0e673560f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fa836e27b7727f20152e176082c45afc949c3ea7dec0b55ed90351a425ea768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4ab5ef8e37d933cee82908c2c60946c738050d949b47d603655cc42f327672f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addPPExplicitToExposeDiff (a b : Expr) : MetaM (Expr × Expr) := do
  if (← getOptions).getBool `pp.all false || (← getOptions).getBool `pp.explicit false then
    return (a, b)
  else
    -- We want to be able to assign metavariables to work out what why `isDefEq` failed,
    -- but we don't want these assignments to leak out of the function.
    -- Note: we shouldn't instantiate mvars in `visit` to prevent leakage.
    withoutModifyingState do
      visit (← instantiateMVars a) (← instantiateMVars b)
where
  visit (a b : Expr) : MetaM (Expr × Expr) := do
    try
      match a, b with
      | .mdata _ a', _ =>
        let (a', b) ← visit a' b
        return (a.updateMData! a', b)
      | _, .mdata _ b' =>
        let (a, b') ← visit a b'
        return (a, b.updateMData! b')
      | .const nm _, .const nm' _ =>
        if nm != nm' then
          return (a, b)
        else
          return (a.setPPUniverses true, b.setPPUniverses true)
      | .proj _ i a', .proj _ j b' =>
        if i != j then
          return (a, b)
        else
          let (a', b') ← visit a' b'
          return (a.updateProj! a', b.updateProj! b')
      | .app .., .app .. =>
        if a.getAppNumArgs != b.getAppNumArgs then
          return (a, b)
        else if a.getAppFn'.isMVar || b.getAppFn'.isMVar then
          -- This is a failed higher-order unification. Do not proceed to `isDefEq`.
          return (a, b)
        else if !(← isDefEq a.getAppFn b.getAppFn) then
          let (fa, fb) ← visit a.getAppFn b.getAppFn
          return (mkAppN fa a.getAppArgs, mkAppN fb b.getAppArgs)
        else
          -- The function might be "overapplied", so we can't use `forallBoundedTelescope`.
          -- That is to say, the arity might depend on the values of the arguments.
          -- We look for the first explicit argument that is different.
          -- Otherwise we look for the first implicit argument.
          -- We try `isDefEq` on all arguments to get discretionary mvar assignments.
          let mut as := a.getAppArgs
          let mut bs := b.getAppArgs
          let mut aFnType ← inferType a.getAppFn
          let mut bFnType ← inferType b.getAppFn
          let mut firstExplicitDiff? := none
          let mut firstImplicitDiff? := none
          for i in *...as.size do
            unless aFnType.isForall do aFnType ← withTransparency .all <| whnf aFnType
            unless bFnType.isForall do bFnType ← withTransparency .all <| whnf bFnType
            -- These pattern matches are expected to succeed:
            let .forallE _ _ abody abi := aFnType | return (a, b)
            let .forallE _ _ bbody bbi := bFnType | return (a, b)
            aFnType := abody.instantiate1 as[i]!
            bFnType := bbody.instantiate1 bs[i]!
            unless (← isDefEq as[i]! bs[i]!) do
              if abi.isExplicit && bbi.isExplicit then
                firstExplicitDiff? := firstExplicitDiff? <|> some i
              else
                firstImplicitDiff? := firstImplicitDiff? <|> some i
          -- Some special cases
          let fn? : Option Name :=
            match a.getAppFn, b.getAppFn with
            | .const ca .., .const cb .. => if ca == cb then ca else none
            | _, _ => none
          if fn? == ``OfNat.ofNat && as.size ≥ 3 && firstImplicitDiff? == some 0 then
            -- Even if there is an explicit diff, it is better to see that the type is different.
            return (a.setPPNumericTypes true, b.setPPNumericTypes true)
          if fn? == ``sorryAx then
            -- If these are `sorry`s with differing source positions, make sure the delaborator shows the positions.
            if let some { module? := moda? } := isLabeledSorry? a then
              if let some { module? := modb? } := isLabeledSorry? b then
                if moda? != modb? then
                  return (a.setOption `pp.sorrySource true, b.setOption `pp.sorrySource true)
          -- General case
          if let some i := firstExplicitDiff? <|> firstImplicitDiff? then
            let (ai, bi) ← visit as[i]! bs[i]!
            as := as.set! i ai
            bs := bs.set! i bi
          let a := mkAppN a.getAppFn as
          let b := mkAppN b.getAppFn bs
          if firstExplicitDiff?.isSome then
            return (a, b)
          else
            return (a.setPPExplicit true, b.setPPExplicit true)
      | .forallE na ta ba bia, .forallE nb tb bb bib =>
        if !(← isDefEq ta tb) then
          let (ta, tb) ← visit ta tb
          let a := Expr.forallE na ta ba bia
          let b := Expr.forallE nb tb bb bib
          return (a.setPPPiBinderTypes true, b.setPPPiBinderTypes true)
        else
          -- Then bodies must not be defeq.
          withLocalDeclD na ta fun arg => do
            let (ba', bb') ← visit (ba.instantiate1 arg) (bb.instantiate1 arg)
            return (Expr.forallE na ta (ba'.abstract #[arg]) bia, Expr.forallE nb tb (bb'.abstract #[arg]) bib)
      | .lam na ta ba bia, .lam nb tb bb bib =>
        if !(← isDefEq ta tb) then
          let (ta, tb) ← visit ta tb
          let a := Expr.lam na ta ba bia
          let b := Expr.lam nb tb bb bib
          return (a.setPPFunBinderTypes true, b.setPPFunBinderTypes true)
        else
          -- Then bodies must not be defeq.
          withLocalDeclD na ta fun arg => do
            let (ba', bb') ← visit (ba.instantiate1 arg) (bb.instantiate1 arg)
            return (Expr.lam na ta (ba'.abstract #[arg]) bia, Expr.lam nb tb (bb'.abstract #[arg]) bib)
      | _, _ => return (a, b)
    catch _ =>
      return (a, b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant87d56fe6d17d4fdf3de4b46454268f7b7843022b1ec418c110d2b3f3cf34a889.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `139c054faa039d297522f6f79da2ea0e673560f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
