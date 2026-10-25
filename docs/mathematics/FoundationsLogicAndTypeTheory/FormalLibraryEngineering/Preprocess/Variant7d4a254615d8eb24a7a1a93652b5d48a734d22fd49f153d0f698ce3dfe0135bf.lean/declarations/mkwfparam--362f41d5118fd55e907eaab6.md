# mkWfParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d069bc40ec906f72f7025504383789b347ee3e4abfc2bf26b699fe3a69c4951",
  "kind": "def",
  "lexical_name": "mkWfParam",
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
  "slug": "mkwfparam--362f41d5118fd55e907eaab6",
  "source": {
    "blob": "9df79abfb9f4c93b70a2fb2c3397a81998c8a62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:362f41d5118fd55e907eaab65d765fc9cdf570fdb3b2a9379e70af1679ff7129",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d069bc40ec906f72f7025504383789b347ee3e4abfc2bf26b699fe3a69c4951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkWfParam (e : Expr) : MetaM Expr :=
  mkAppM ``wfParam #[e]

/-- `f (wfParam x) ==> wfParam (f x)` if `f` is a projection -/
builtin_dsimproc paramProj (_) := fun e => do
  if h : e.isApp then
    let some a' := isWfParam? (e.appArg h) | return .continue
    let f := e.getAppFn
    unless f.isConst do return .continue
    unless (← isProjectionFn f.constName!) do return .continue
    let e' ← mkWfParam (.app (e.appFn h) a')
    return .done e'
  else
    return .continue

/-- `match (wfParam x) with con y => alt[y] ==> match x with con y => alt[wfParam y] -/
builtin_dsimproc paramMatcher (_) := fun e => do
  let some matcherApp ← matchMatcherApp? e (alsoCasesOn := true)  | return .continue
  unless matcherApp.discrs.any (isWfParam? · |>.isSome) do return .continue
  let discrs' := matcherApp.discrs.map (fun e => isWfParam? e |>.getD e)
  let alts' ← matcherApp.alts.mapM fun alt =>
    lambdaTelescope alt fun xs body => do
      -- Annotate all xs with `wfParam`
      let xs' ← xs.mapM (mkWfParam ·)
      let body' := body.replaceFVars xs xs'
      mkLambdaFVars xs body'
  let matcherApp' := { matcherApp with discrs := discrs', alts := alts' }
  return .continue <| matcherApp'.toExpr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variant7d4a254615d8eb24a7a1a93652b5d48a734d22fd49f153d0f698ce3dfe0135bf.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df79abfb9f4c93b70a2fb2c3397a81998c8a62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
