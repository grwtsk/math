# validateForwarder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70905c2bc3615757ae020917a0e370e643b3404c0aa5c7ff38038605421a0434",
  "kind": "def",
  "lexical_name": "validateForwarder",
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
  "slug": "validateforwarder--6a1750043e31b9ac7cd00a36",
  "source": {
    "blob": "da465511cdea040574e33b7394801bdcdebc7a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a1750043e31b9ac7cd00a36e6ed52b08abdba95048d40b79879df2e17ca2285",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70905c2bc3615757ae020917a0e370e643b3404c0aa5c7ff38038605421a0434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def validateForwarder (headApp : Term) (forwarded probeExpr : Expr) : MetaM Unit := do
  let reject {α} (reason : MessageData) : MetaM α := throwError forwardHint headApp reason
  let probeType ← whnfD (← instantiateMVars (← inferType probeExpr))
  let .app _ alphaRet := probeType
    | reject m!"its return type `{probeType}` is not of the form `m α`"
  unless alphaRet.isMVar do
    reject m!"its return type pins `α` to a concrete type"
  let argMentionsAlpha (arg : Expr) : MetaM (Option Expr) := do
    let ty ← inferType arg
    if (← instantiateMVars ty).findMVar? (· == alphaRet.mvarId!) |>.isSome then
      return some ty
    else return none
  forallTelescopeReducing (← inferType forwarded) fun args body => do
    unless ← isDefEq probeType (← whnfD (← instantiateMVars body)) do
      reject m!"the forwarded body's `α` differs from the wrapper's return `α`"
    for arg in args do
      if let some ty ← argMentionsAlpha arg then
        reject m!"`α` appears in the forwarded body's input type `{ty}`"
  forallTelescopeReducing (← inferType probeExpr.getAppFn) fun fvars _ => do
    for (fvar, appArg) in fvars.zip probeExpr.getAppArgs do
      unless (← fvar.fvarId!.getDecl).binderInfo matches .default do continue
      let appArgInst ← instantiateMVars appArg
      if appArgInst == forwarded then continue
      if let some ty ← argMentionsAlpha appArgInst then
        reject m!"`α` appears in an applied explicit argument of type `{ty}`"

/--
Elaborate `e` as an application whose last argument is a `do←` body, performing the effect
forwarding. Returns `none` if `e` doesn't have that shape.

Strategy: build `headApp ?forwarded` with a fresh metavariable in the body slot and elaborate
it. Lean's elaborator handles named args, defaults, and dot notation. We then check the
wrapper's shape against the probe; on success, the lifted body is assigned into `?forwarded`
and the probe expression itself is the result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38cb99286641fbab0fa638216de52a7b99226024d86e6e9a1b55961fd38ed72d.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da465511cdea040574e33b7394801bdcdebc7a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
