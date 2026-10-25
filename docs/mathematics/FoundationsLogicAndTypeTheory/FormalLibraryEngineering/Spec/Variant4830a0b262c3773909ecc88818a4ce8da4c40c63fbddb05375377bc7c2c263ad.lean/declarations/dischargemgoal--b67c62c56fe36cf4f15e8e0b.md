# dischargeMGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75cf1cf4fc71c6c6d43407c43ef32d04d13e4d18af70f1ab99e46bfa39530927",
  "kind": "def",
  "lexical_name": "dischargeMGoal",
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
  "slug": "dischargemgoal--b67c62c56fe36cf4f15e8e0b",
  "source": {
    "blob": "3ed4cee461e180cd263668c196adeeafb35cde0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b67c62c56fe36cf4f15e8e0b2ab2e8718884302282e4de19863a6acd778c8767",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75cf1cf4fc71c6c6d43407c43ef32d04d13e4d18af70f1ab99e46bfa39530927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dischargeMGoal (goal : MGoal) (goalTag : Name) (tryTrivial : Bool) : n Expr := do
  liftMetaM <| do trace[Elab.Tactic.Do.spec] "dischargeMGoal: {goal.target}"
  -- simply try one of the assumptions for now. Later on we might want to decompose conjunctions etc; full xsimpl
  -- The `withDefault` ensures that a hyp `⌜s = 4⌝` can be used to discharge `⌜s = 4⌝ s`.
  -- (Recall that `⌜s = 4⌝ s` is `SPred.pure (σs:=[Nat]) (s = 4) s` and `SPred.pure` is
  -- semi-reducible.)
  -- We also try `mpure_intro; trivial` through `goal.pureTrivial` here because later on an
  -- assignment like `⌜s = ?c ∧ s₂ = ?d⌝` becomes impossible to discharge because `?c` will get
  -- abstracted over local bindings that depend on synthetic opaque MVars (such as loop invariants),
  -- and then the type of the new `?c` will not be defeq to itself. A bug, but we need to work
  -- around it for now.
  -- Even when we *do not* want to `tryTrivial`, we still use `goal.pureRflAndAndIntro` because
  -- it might assign metavariables as above.
  let some prf ← liftMetaM <| -- withDefault <|
      if tryTrivial then
        goal.pureTrivial <|> goal.assumption <|> goal.assumptionPure
      else
        goal.pureRflAndAndIntro
    | mkFreshExprSyntheticOpaqueMVar goal.toExpr goalTag
  liftMetaM <| do trace[Elab.Tactic.Do.spec] "proof: {prf}"
  return prf

/--
  Returns the proof and the list of new unassigned MVars.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed4cee461e180cd263668c196adeeafb35cde0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
