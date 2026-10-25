# isExprDefEqAuxImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d98d5d0255e41dbc7e5494964708a72ea54cfed655172aeb750d239e88a3cc34",
  "kind": "def",
  "lexical_name": "isExprDefEqAuxImpl",
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
  "slug": "isexprdefeqauximpl--22df1456e0cdc656005b4638",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2359,
    "line": 2285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22df1456e0cdc656005b4638ca0a5218475749a7f0d59a0e6b577639994bcc79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d98d5d0255e41dbc7e5494964708a72ea54cfed655172aeb750d239e88a3cc34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2285–2359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def isExprDefEqAuxImpl (t : Expr) (s : Expr) : MetaM Bool := withIncRecDepth do
  withTraceNodeBefore `Meta.isDefEq (fun _ => do
    if trace.Meta.isDefEq.printTransparency.get (← getOptions) then
      return m!"[{toString (← getTransparency)}] {t} =?= {s}"
    else
      return m!"{t} =?= {s}") do
  checkSystem "isDefEq"
  whenUndefDo (isDefEqQuick t s) do
  whenUndefDo (isDefEqProofIrrel t s) do
  /-
    We also reduce projections here to prevent expensive defeq checks when unifying TC operations.
    When unifying e.g. `(@Field.toNeg α inst1).1 =?= (@Field.toNeg α inst2).1`,
    we only want to unify negation (and not all other field operations as well).
    Unifying the field instances slowed down unification: https://github.com/leanprover/lean4/issues/1986

    Note that we use `proj := .yesWithDeltaI` to ensure `whnfAtMostI` is used to reduce the projection structure.
    We added this refinement to address a performance issue in code such as
    ```
    let val : Test := bar c1 key
    have : val.1 = (bar c1 key).1 := rfl
    ```
    where `bar` is a complex function that takes a long time to be reduced.

    Note that the current solution times out at unification problems such as
    `(f x).1 =?= (g x).1` where `f`, `g` are defined as
    ```
    structure Foo where
      x : Nat
      y : Nat

    def f (x : Nat) : Foo :=
      { x, y := ack 10 10 }

    def g (x : Nat) : Foo :=
      { x, y := ack 10 11 }
    ```
    and `ack` is ackermann. We claim this is an abuse of the unifier.
    That being said, we could in principle address this issue by implementing
    lazy-delta reduction at `isDefEqProj`.

    The current solution should be sufficient. In the past, we have used
    `whnfCore t (config := { proj := .yes })` which more conservative than `.yesWithDeltaI`,
    and it only created performance issues when handling TC unification problems.
  -/
  let t' ← whnfCoreAtDefEq t
  let s' ← whnfCoreAtDefEq s
  if t != t' || s != s' then
    isExprDefEqAuxImpl t' s'
  else
    /-
      TODO: check whether the following `instantiateMVar`s are expensive or not in practice.
      Lean 3 does not use them, and may miss caching opportunities since it is not safe to cache when `t` and `s` may contain mvars.
      The unit test `tryHeuristicPerfIssue2.lean` cannot be solved without these two `instantiateMVar`s.
      If it becomes a problem, we may use store a flag in the context indicating whether we have already used `instantiateMVar` in
      outer invocations or not. It is not perfect (we may assign mvars in nested calls), but it should work well enough in practice,
      and prevent repeated traversals in nested calls.
    -/
    let t ← instantiateMVars t
    let s ← instantiateMVars s
    let numPostponed ← getNumPostponed
    let k ← mkCacheKey t s
    match (← getCachedResult k) with
    | .true  =>
      trace[Meta.isDefEq.cache] "cache hit 'true' for {t} =?= {s}"
      return true
    | .false =>
      trace[Meta.isDefEq.cache] "cache hit 'false' for {t} =?= {s}"
      return false
    | .undef =>
      let result ← isExprDefEqExpensive t s
      if numPostponed == (← getNumPostponed) then
        trace[Meta.isDefEq.cache] "cache {result} for {t} =?= {s}"
        cacheResult k result
      return result

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L2285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
