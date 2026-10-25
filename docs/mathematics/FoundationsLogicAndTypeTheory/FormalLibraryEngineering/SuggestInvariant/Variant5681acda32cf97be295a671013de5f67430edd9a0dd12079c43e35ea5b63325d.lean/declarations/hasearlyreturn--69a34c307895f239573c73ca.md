# hasEarlyReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2cfee4c268efe8b39023305d4441d64ec0dc3cabcf449ba60d435ee4c8fba37",
  "kind": "def",
  "lexical_name": "hasEarlyReturn",
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
  "slug": "hasearlyreturn--69a34c307895f239573c73ca",
  "source": {
    "blob": "61262511d113b689159480e4d4e106eef227e231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69a34c307895f239573c73ca9f8539816d7873d94cf0585a68072fc536f8c65e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2cfee4c268efe8b39023305d4441d64ec0dc3cabcf449ba60d435ee4c8fba37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasEarlyReturn (vcs : Array MVarId) (inv : MVarId) (letMutsTy : Expr) : MetaM (Option (Expr × Expr)) := do
  if !(letMutsTy.isAppOf ``Prod) || letMutsTy.getAppNumArgs < 2 then return none
  let_expr Option ρ := letMutsTy.getArg! 0 | return none
  let σ := letMutsTy.getArg! 1

  -- The predicate on `letMutsTy` above is not sufficient; after all the user might just have
  -- introduced `let mut ret : Option α` and not use this variable according to "early return
  -- semantics", meaning that *if* `ret = some r` for some `r : ρ`, then the loop body returns
  -- `ForInStep.done (ret, ...)`. This is a property upheld by the `do` elaborator.
  --
  -- At this point, `mvcgen` has already run, so we do not see the syntax of the original loop body.
  -- However, we know that loop invariant lemmas such as `Spec.forIn_list` require that the
  -- invariant holds at `suffix = []` whenever the loop body returns `ForInStep.done`.
  -- Therefore, a sufficient condition for early return depends on whether all the VCs conform to
  -- the property:
  --
  -- > For any use of `?inv` of the form `?inv.fst (cursor, ⟨ret, ...⟩)` it is provable that either
  -- > `ret = none` or `cursor.suffix = []`.
  --
  -- Examples of VC goal types that uphold the property:
  -- * `(Prod.fst ?inv ({ «prefix» := [], suffix := l, property := ⋯ }, ⟨none, PUnit.unit⟩)).down`
  --   because `ret=none`
  -- * `(Prod.fst ?inv ({ «prefix» := pref✝ ++ [cur✝], suffix := suff✝, property := ⋯ }, ⟨none, PUnit.unit⟩)).down`
  --   because `ret=none`
  -- * `(Prod.fst ?inv ({ «prefix» := l, suffix := [], property := ⋯ }, ⟨some true, PUnit.unit⟩)).down`
  --   because `suffix = []`
  -- Example of a VC not fulfilling the property:
  -- * `(Prod.fst ?inv ({ «prefix» := pref✝ ++ [cur✝], suffix := suff✝, property := ⋯ }, ⟨some cur✝, ()⟩)).down`
  --   because `ret = some _` and `suffix = suff✝` and `suff✝` has instances other than `[]`.
  -- And similarly for unsimplified entailment `_ ⊢ₛ Prod.fst ?inv (cursor, ⟨some r, ...⟩)`:
  -- * `_ ⊢ₛ Prod.fst ?inv ({ «prefix» := pref✝ ++ [cur✝], suffix := suff✝, property := ⋯ }, ⟨some cur✝, ()⟩)`
  --   because `ret = some _` and `suffix = suff✝` and `suff✝` has instances other than `[]`.
  --
  -- Hence we check all VCs for the property above.

  for vc in vcs do
    -- logWarning m!"Looking at {vc}."
    let type ← Expr.consumeMData <$> instantiateMVars (← vc.getType)
    let some (_, _, spredTarget) ← vc.withContext <| getSPredGoalHypsAndTarget type | continue
    -- logWarning m!"Found spredTarget: {spredTarget}"
    match classifyInvariantUse spredTarget inv with
    | .notAnInvariantUse => continue
    | .unknownInvariantUse => return none -- conservative
    | .success invariantUse =>
    -- logWarning m!"Invariant use: {invariantUse.letMuts}"
    -- The following check could be smarter. Essentially it tries to construct a proof that
    -- `suff = []` or `acc = (none, _)` and returns `none` upon failure.
    -- NB: There always is at least one `invariantUse.letMuts`.
    if !invariantUse.cursorSuffix.isAppOf ``List.nil && !invariantUse.letMuts[0]!.isAppOf ``Option.none then
      -- logWarning m!"No early return! Not a `List.nil`: {invariantUse.cursorSuffix} and not an `Option.none`: {invariantUse.letMuts[0]!}"
      return none

  return (ρ, σ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61262511d113b689159480e4d4e106eef227e231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
