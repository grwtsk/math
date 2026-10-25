# getElabElimExprInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73ffa4c0adab57cd4508420b2cc1be11a498dfe127e6c818ce928122a5e58c43",
  "kind": "def",
  "lexical_name": "getElabElimExprInfo",
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
  "slug": "getelabelimexprinfo--b96616246628bedef94e1f2b",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1006,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b96616246628bedef94e1f2b9d43e725f35219c7d606f55e2bd96e70f7f9cd79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73ffa4c0adab57cd4508420b2cc1be11a498dfe127e6c818ce928122a5e58c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getElabElimExprInfo (elimExpr : Expr) : MetaM ElabElimInfo := do
  let elimType ← inferType elimExpr
  trace[Elab.app.elab_as_elim] "eliminator {indentExpr elimExpr}\nhas type{indentExpr elimType}"
  forallTelescopeReducing elimType fun xs type => do
    let motive  := type.getAppFn
    let motiveArgs := type.getAppArgs
    unless motive.isFVar && motiveArgs.size > 0 do
      throwError "unexpected eliminator resulting type{indentExpr type}"
    let motiveType ← inferType motive
    forallTelescopeReducing motiveType fun motiveParams motiveResultType => do
      unless motiveParams.size == motiveArgs.size do
        throwError "unexpected number of arguments at motive type{indentExpr motiveType}"
      unless motiveResultType.isSort do
        throwError "motive result type must be a sort{indentExpr motiveType}"
    let some motivePos := xs.idxOf? motive |
      throwError "unexpected eliminator type{indentExpr elimType}"
    /-
    Compute transitive closure of fvars appearing in arguments to the motive.
    These are the primary set of major parameters.
    -/
    let initMotiveFVars : CollectFVars.State := motiveArgs.foldl (init := {}) collectFVars
    let motiveFVars ← xs.size.foldRevM (init := initMotiveFVars) fun i _ s => do
      let x := xs[i]
      if s.fvarSet.contains x.fvarId! then
        return collectFVars s (← inferType x)
      else
        return s
    /- Collect the major parameter positions -/
    let mut majorsPos := #[]
    for h : i in *...xs.size do
      let x := xs[i]
      unless motivePos == i do
        let xType ← x.fvarId!.getType
        /-
        We also consider "first-order" types because we can reliably "extract" information from them.
        We say a term is "first-order" if all applications are of the form `f ...` where `f` is a constant.
        -/
        let isFirstOrder (e : Expr) : Bool := Option.isNone <| e.find? fun e => e.isApp && !e.getAppFn.isConst
        if motiveFVars.fvarSet.contains x.fvarId!
            || (isFirstOrder xType
                && Option.isSome (xType.find? fun e => e.isFVar && motiveFVars.fvarSet.contains e.fvarId!)) then
          majorsPos := majorsPos.push i
    trace[Elab.app.elab_as_elim] "motivePos: {motivePos}"
    trace[Elab.app.elab_as_elim] "majorsPos: {majorsPos}"
    return { elimExpr, elimType, motivePos, majorsPos }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
