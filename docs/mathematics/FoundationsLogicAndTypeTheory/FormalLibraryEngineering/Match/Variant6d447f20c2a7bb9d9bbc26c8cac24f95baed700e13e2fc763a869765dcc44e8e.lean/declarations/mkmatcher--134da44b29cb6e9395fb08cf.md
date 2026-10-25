# mkMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e7c7ab558efa8435246a898083a89096948639c832987d429aec9f8ce32311d",
  "kind": "def",
  "lexical_name": "mkMatcher",
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
  "slug": "mkmatcher--134da44b29cb6e9395fb08cf",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1264,
    "line": 1172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:134da44b29cb6e9395fb08cf6e05fde93f8330df81c356058b7a901f2d872d65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e7c7ab558efa8435246a898083a89096948639c832987d429aec9f8ce32311d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1172–1264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkMatcher (input : MkMatcherInput) : MetaM MatcherResult := withCleanLCtxFor input do
  let {matcherName, matchType, discrInfos, lhss, isSplitter} := input
  let numDiscrs := discrInfos.size
  checkNumPatterns numDiscrs lhss
  forallBoundedTelescope matchType numDiscrs fun discrs matchTypeBody => do
  /- We generate an matcher that can eliminate using different motives with different universe levels.
     `uElim` is the universe level the caller wants to eliminate to.
     If it is not Level.zero, we create a matcher that can eliminate in any universe level.
     This is useful for implementing `MatcherApp.addArg` because it may have to change the universe level. -/
  let uElim ← getLevel matchTypeBody
  let uElimGen ← if uElim == Level.zero then pure Level.zero else mkFreshLevelMVar
  let mkMatcher (type val : Expr) (altInfos : Array AltParamInfo) (s : State) : MetaM MatcherResult := do
    trace[Meta.Match.debug] "matcher value: {val}\ntype: {type}"
    /- The option `bootstrap.gen_matcher_code` is a helper hack. It is useful, for example,
       for compiling `src/Init/Data/Int`. It is needed because the compiler uses `Int.decLt`
       for generating code for `Int.casesOn` applications, but `Int.casesOn` is used to
       give the reference implementation for
       ```
       @[extern "lean_int_neg"] def neg (n : @& Int) : Int :=
       match n with
       | ofNat n   => negOfNat n
       | negSucc n => succ n
       ```
       which is defined **before** `Int.decLt` -/
    let (matcher, addMatcher) ← mkMatcherAuxDefinition matcherName type val (isSplitter := input.isSplitter.isSome)
    trace[Meta.Match.debug] "matcher levels: {matcher.getAppFn.constLevels!}, uElim: {uElimGen}"
    let uElimPos? ← getUElimPos? matcher.getAppFn.constLevels! uElimGen
    discard <| isLevelDefEq uElimGen uElim
    let addMatcher :=
      match addMatcher with
      | some addMatcher => addMatcher <|
        { numParams := matcher.getAppNumArgs
          altInfos
          discrInfos
          numDiscrs
          uElimPos?
          overlaps := s.overlaps
          }
      | none => pure ()

    trace[Meta.Match.debug] "matcher: {matcher}"
    let unusedAltIdxs := lhss.length.fold (init := []) fun i _ r =>
      if s.used.contains i then r else i::r
    return {
      matcher,
      counterExamples := s.counterExamples,
      unusedAltIdxs := unusedAltIdxs.reverse,
      addMatcher
    }

  let motiveType ← mkForallFVars discrs (mkSort uElimGen)
  trace[Meta.Match.debug] "motiveType: {motiveType}"
  withLocalDeclD `motive motiveType fun motive => do
  if discrInfos.any fun info => info.hName?.isSome then
    forallBoundedTelescope matchType numDiscrs fun discrs' _ => do
    let (mvarType, isEqMask) ← withEqs discrs discrs' discrInfos fun eqs => do
      let mvarType ← mkForallFVars eqs (mkAppN motive discrs')
      let isEqMask ← eqs.mapM fun eq => return (← inferType eq).isEq
      return (mvarType, isEqMask)
    trace[Meta.Match.debug] "target: {mvarType}"
    withAlts motive discrs discrInfos lhss isSplitter fun alts minors altInfos => do
      let mvar ← mkFreshExprMVar mvarType
      trace[Meta.Match.debug] "goal\n{mvar.mvarId!}"
      let examples := discrs'.toList.map fun discr => Example.var discr.fvarId!
      let (_, s) ← (process { mvarId := mvar.mvarId!, vars := discrs'.toList, alts := alts, examples := examples }).run {}
      let val ← mkLambdaFVars discrs' mvar
      trace[Meta.Match.debug] "matcher\nvalue: {val}\ntype: {← inferType val}"
      let mut rfls := #[]
      let mut isEqMaskIdx := 0
      for discr in discrs, info in discrInfos do
        if info.hName?.isSome then
          if isEqMask[isEqMaskIdx]! then
            rfls := rfls.push (← mkEqRefl discr)
          else
            rfls := rfls.push (← mkHEqRefl discr)
          isEqMaskIdx := isEqMaskIdx + 1
      let val := mkAppN (mkAppN val discrs) rfls
      let args := #[motive] ++ discrs ++ minors
      let val ← mkLambdaFVars args val
      let type ← mkForallFVars args (mkAppN motive discrs)
      mkMatcher type val altInfos s
  else
    let mvarType  := mkAppN motive discrs
    trace[Meta.Match.debug] "target: {mvarType}"
    withAlts motive discrs discrInfos lhss isSplitter fun alts minors altInfos => do
      let mvar ← mkFreshExprMVar mvarType
      let examples := discrs.toList.map fun discr => Example.var discr.fvarId!
      let (_, s) ← (process { mvarId := mvar.mvarId!, vars := discrs.toList, alts := alts, examples := examples }).run {}
      let args := #[motive] ++ discrs ++ minors
      let type ← mkForallFVars args mvarType
      let val  ← mkLambdaFVars args mvar
      mkMatcher type val altInfos s

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L1172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
