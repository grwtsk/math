# whnfDelayedAssigned?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85927d5d5f044540eb307c7de94fe79ee306d31cd2b5bda63adc53d8a9a25e93",
  "kind": "def",
  "lexical_name": "whnfDelayedAssigned?",
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
  "slug": "whnfdelayedassigned--6ca53cac98c9fb367f8693f3",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 587,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ca53cac98c9fb367f8693f3b6f58c49703b353d8f5d1502ada5e162c64e2830",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85927d5d5f044540eb307c7de94fe79ee306d31cd2b5bda63adc53d8a9a25e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def whnfDelayedAssigned? (f' : Expr) (e : Expr) : MetaM (Option Expr) := do
  if f'.isMVar then
    match (← getDelayedMVarAssignment? f'.mvarId!) with
    | none => return none
    | some { fvars, mvarIdPending } =>
      let args := e.getAppArgs
      if fvars.size > args.size then
        -- Insufficient number of argument to expand delayed assignment
        return none
      else
        let newVal ← instantiateMVars (mkMVar mvarIdPending)
        if newVal.hasExprMVar then
           -- Delayed assignment still contains metavariables
           return none
        else
           let newVal := newVal.abstract fvars
           let result := newVal.instantiateRevRange 0 fvars.size args
           return mkAppRange result fvars.size args.size args
  else
    return none

/--
Zeta reduces `let`s/`have`s.
If `zetaHave` is false, then `have`s are not zeta reduced.

Auxiliary function for `whnfCore` and `Simp.reduceStep`, to implement the `zeta` option.
This function does not implement `zetaUnused` logic,
which is instead the responsibility of `consumeUnusedLet`.
The `expandLet` function works with expressions with loose bound variables,
and thus determining whether a let variable is used isn't an O(1) operation.

Note: since `expandLet` and `consumeUnusedLet` are separated like this, a consequence is that
in the `+zeta -zetaHave +zetaUnused` configuration, then `whnfCore` has quadratic complexity
when reducing a sequence of alternating `let`s and `have`s where the `let`s are used but the `have`s are unused.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
