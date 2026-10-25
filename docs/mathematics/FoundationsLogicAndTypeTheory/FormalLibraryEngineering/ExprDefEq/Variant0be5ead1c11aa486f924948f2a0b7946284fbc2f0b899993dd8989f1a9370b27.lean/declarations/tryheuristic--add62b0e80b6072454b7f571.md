# tryHeuristic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dffd49c201e3400046bc9a89942871293301bf77a0650d337053f59da124e3f3",
  "kind": "def",
  "lexical_name": "tryHeuristic",
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
  "slug": "tryheuristic--add62b0e80b6072454b7f571",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1526,
    "line": 1468,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:add62b0e80b6072454b7f5710e5eedf170fd07ddf26f04c069e2cbe0c747f622",
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

Occurrence: `declaration:dffd49c201e3400046bc9a89942871293301bf77a0650d337053f59da124e3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1468–1526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def tryHeuristic (t s : Expr) : MetaM Bool := do
  let mut t := t
  let mut s := s
  let tFn := t.getAppFn
  let sFn := s.getAppFn
  -- If `f` (i.e., `tFn`) is not a definition, we do not apply the heuristic.
  let .defnInfo info ← getConstInfo tFn.constName! | return false
  /-
  We apply the heuristic in the following cases:
  1- `f` is a non-trivial definition (see predicate `isNonTrivialRegular`)
  2- `f` is `match` application.
  3- `t` or `s` contain meta-variables.

  The third case is important to make sure we can solve constraints such as
  `S.proj ?x =?= S.proj t` without performing delta-reduction.

  When the conditions 1&2&3 do not hold, we are assuming the heuristic implemented by this method is seldom effective
  when `f` is simple, `t` and `s` do not have metavariables, and are not structurally equal.

  Recall that auxiliary `match` definitions are marked as abbreviations, but we must use the heuristic on
  them since they will not be unfolded when smartUnfolding is turned on. The abbreviation annotation in this
  case is used to help the kernel type checker.

  The `isNonTrivialRegular` predicate is also useful to avoid applying the heuristic to very simple definitions that
  have not been marked as abbreviations by the user. Example:
  ```
  protected def Mem (a : α) (s : Set α) : Prop := s a
  ```
  at test 3807.lean
  -/
  unless (← isNonTrivialRegular info) || isMatcherCore (← getEnv) tFn.constName! do
    unless t.hasExprMVar || s.hasExprMVar do
      return false
  withTraceNodeBefore `Meta.isDefEq.delta (fun _ => return m!"{t} =?= {s}") do
    recordDefEqHeuristic tFn.constName!
    /-
      We process arguments before universe levels to reduce a source of brittleness in the TC procedure.

      In the TC procedure, we can solve problems containing metavariables.
      If the TC procedure tries to assign one of these metavariables, it interrupts the search
      using a "stuck" exception. The elaborator catches it, and "interprets" it as "we should try again later".
      Now suppose we have a TC problem, and there are two "local" candidate instances we can try: "bad" and "good".
      The "bad" candidate is stuck because of a universe metavariable in the TC problem.
      If we try "bad" first, the TC procedure is interrupted. Moreover, if we have ignored the exception,
      "bad" would fail anyway trying to assign two different free variables `α =?= β`.
      Example: `Preorder.{?u} α =?= Preorder.{?v} β`, where `?u` and `?v` are universe metavariables that were
      not created by the TC procedure.
      The key issue here is that we have an `isDefEq t s` invocation that is interrupted by the "stuck" exception,
      but it would have failed anyway if we had continued processing it.
      By solving the arguments first, we make the example above fail without throwing the "stuck" exception.

      TODO: instead of throwing an exception as soon as we get stuck, we should just set a flag.
      Then the entry-point for `isDefEq` checks the flag before returning `true`.
    -/
    checkpointDefEq do
      isDefEqArgs tFn t.getAppArgs s.getAppArgs <&&>
        isListLevelDefEqAux tFn.constLevels! sFn.constLevels!

/-- Auxiliary method for isDefEqDelta -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L1468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
