# getMkMatcherInputInContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e125870e61a528669e0ffc04bb635021a03928709a7c26f7f168af29fb5f2ba",
  "kind": "def",
  "lexical_name": "getMkMatcherInputInContext",
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
  "slug": "getmkmatcherinputincontext--640bb12c28ae796c0b06d0e6",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1297,
    "line": 1265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:640bb12c28ae796c0b06d0e65ec873e273e38c9030054b882e3e55f6ae00a3f3",
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

Occurrence: `declaration:0e125870e61a528669e0ffc04bb635021a03928709a7c26f7f168af29fb5f2ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1265–1297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMkMatcherInputInContext (matcherApp : MatcherApp) (unfoldNamed : Bool) : MetaM MkMatcherInput := do
  let matcherName := matcherApp.matcherName
  let some matcherInfo ← getMatcherInfo? matcherName
    | throwError "Internal error during match expression elaboration: Could not find a matcher named `{matcherName}`"
  let matcherConst ← getConstVal matcherName
  let matcherType ← instantiateTypeLevelParams matcherConst matcherApp.matcherLevels.toList
  let matcherType ← instantiateForall matcherType <| matcherApp.params ++ #[matcherApp.motive]
  let matchType ← do
    let u :=
      if let some idx := matcherInfo.uElimPos?
      then mkLevelParam matcherConst.levelParams.toArray[idx]!
      else Level.zero
    forallBoundedTelescope matcherType (some matcherInfo.numDiscrs) fun discrs _ => do
    mkForallFVars discrs (mkConst ``PUnit [u])

  let matcherType ← instantiateForall matcherType matcherApp.discrs
  let lhss ← forallBoundedTelescope matcherType (some matcherApp.alts.size) fun alts _ =>
    alts.mapM fun alt => do
    let ty ← inferType alt
    let ty ← if unfoldNamed then unfoldNamedPattern ty else pure ty
    forallTelescope ty fun xs body => do
    let xs ← xs.filterM fun x => dependsOn body x.fvarId!
    body.withApp fun _ args => do
    let ctx ← getLCtx
    let localDecls := xs.map ctx.getFVar!
    let patterns ← args.mapM Match.toPattern
    return {
      ref := Syntax.missing
      fvarDecls := localDecls.toList
      patterns := patterns.toList : Match.AltLHS }

  return { matcherName, matchType, discrInfos := matcherInfo.discrInfos, lhss := lhss.toList }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L1265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
