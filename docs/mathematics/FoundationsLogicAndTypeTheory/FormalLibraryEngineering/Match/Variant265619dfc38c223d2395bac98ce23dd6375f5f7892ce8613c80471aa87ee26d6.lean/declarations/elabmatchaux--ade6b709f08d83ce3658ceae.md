# elabMatchAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dca1f81660634b91c48190b630f6553f223afaddd20bbd7e1a2960e92415c190",
  "kind": "def",
  "lexical_name": "elabMatchAux",
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
  "slug": "elabmatchaux--ade6b709f08d83ce3658ceae",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1178,
    "line": 1125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ade6b709f08d83ce3658ceae2c8740a7bbd35f0850851abfff5fe7c580ff9ed7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dca1f81660634b91c48190b630f6553f223afaddd20bbd7e1a2960e92415c190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1125–1178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def elabMatchAux (generalizing? : Option Bool) (discrStxs : Array Syntax) (altViews : Array TermMatchAltView) (matchOptMotive : Syntax) (expectedType : Expr)
    : TermElabM Expr := do
  let mut generalizing? := generalizing?
  if !matchOptMotive.isNone then
    if generalizing? == some true then
      throwError "The '(generalizing := true)' parameter is not supported when the 'match' motive is explicitly provided"
    generalizing? := some false
  let (discrs, matchType, altLHSS, isDep, rhss) ← commitIfDidNotPostpone do
    let ⟨discrs, matchType, isDep, altViews⟩ ← elabMatchTypeAndDiscrs discrStxs matchOptMotive altViews expectedType
    let matchAlts ← liftMacroM <| expandMacrosInPatterns altViews
    trace[Elab.match] "matchType: {matchType}"
    let (discrs, matchType, alts, refined) ← elabMatchAltViews generalizing? discrs matchType matchAlts
    let isDep := isDep || refined
    /-
     We should not use `synthesizeSyntheticMVarsNoPostponing` here. Otherwise, we will not be
     able to elaborate examples such as:
     ```
     def f (x : Nat) : Option Nat := none

     def g (xs : List (Nat × Nat)) : IO Unit :=
     xs.forM fun x =>
       match f x.fst with
       | _ => pure ()
     ```
     If `synthesizeSyntheticMVarsNoPostponing`, the example above fails at `x.fst` because
     the type of `x` is only available after we process the last argument of `List.forM`.

     We apply pending default types to make sure we can process examples such as
     ```
     let (a, b) := (0, 0)
     ```
    -/
    synthesizeSyntheticMVarsUsingDefault
    let rhss := alts.map Prod.snd
    let matchType ← instantiateMVars matchType
    let altLHSS ← instantiateAltLHSs (alts.map Prod.fst)
    return (discrs, matchType, altLHSS, isDep, rhss)
  if let some r ← if isDep then pure none else isMatchUnit? altLHSS rhss then
    return r
  else
    let numDiscrs := discrs.size
    let matcherName ← mkAuxName `match
    let matcherResult ← mkMatcher { matcherName, matchType, discrInfos := discrs.map fun discr => { hName? := discr.h?.map (·.getId) }, lhss := altLHSS }
    reportMatcherResultErrors altLHSS matcherResult
    matcherResult.addMatcher
    let motive ← forallBoundedTelescope matchType numDiscrs fun xs matchType => mkLambdaFVars xs matchType
    let r := mkApp matcherResult.matcher motive
    let r := mkAppN r (discrs.map (·.expr))
    let r := mkAppN r rhss
    trace[Elab.match] "result: {r}"
    return r

-- leading_parser "match " >> optional generalizingParam >> optional motive >> sepBy1 matchDiscr ", " >> " with " >> ppDedent matchAlts

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L1125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
