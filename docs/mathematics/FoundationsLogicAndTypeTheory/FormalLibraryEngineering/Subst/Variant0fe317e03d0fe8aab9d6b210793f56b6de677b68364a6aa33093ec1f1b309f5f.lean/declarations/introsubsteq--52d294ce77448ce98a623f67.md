# introSubstEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55027dd6eb7d6040dd7ee117c343f1d7c86429f5f9abe44e9ebb179fd2aa9fd4",
  "kind": "def",
  "lexical_name": "introSubstEq",
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
  "slug": "introsubsteq--52d294ce77448ce98a623f67",
  "source": {
    "blob": "6eb1bd574770be48d16b06b0e3048e9c0d3a6f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d294ce77448ce98a623f67e1ce43152c16f152406d1e71e9ea5a58a542775b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55027dd6eb7d6040dd7ee117c343f1d7c86429f5f9abe44e9ebb179fd2aa9fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def introSubstEq (mvarId : MVarId) (substLHS := false) : MetaM (FVarSubst × MVarId) := do
  mvarId.checkNotAssigned  `introSubstEq
  try commitIfNoEx do mvarId.withContext do
    let goalType ← mvarId.getType'
    let some (heq, body) := goalType.arrow? | throwError "not an arrow type"
    let (α, a, b, ndrec) ←
      match_expr heq with
      | Eq α a b =>
        if substLHS then
          pure (α, b, a, ``Eq.ndrec_symm)
        else
          pure (α, a, b, ``Eq.ndrec)
      | HEq α a β b =>
        unless (← isDefEq α β) do throwError "hetereogenenous equality isn't homogeneous"
        if substLHS then
          pure (α, b, a, ``HEq.homo_ndrec_symm)
        else
          pure (α, a, b, ``HEq.homo_ndrec)
      | _ => throwError "not an equality"
    unless b.isFVar do throwError "equality rhs not a free variable"
    let (reverted, mvarId) ← mvarId.revert #[b.fvarId!]
    unless reverted.size = 1 do throwError "variable {b} has forward dependencies"
    let motive ← mkLambdaFVars #[b] body
    let goal := motive.beta #[a]
    let e ← mkFreshExprSyntheticOpaqueMVar goal (tag := (← mvarId.getTag))
    let u1 ← getLevel goal
    let u2 ← getLevel α
    mvarId.assign <| mkApp4 (mkConst ndrec [u1, u2]) α a motive e
    let subst : FVarSubst := FVarSubst.empty.insert b.fvarId! a
    return (subst, e.mvarId!)
  catch e =>
    trace[Meta.Tactic.subst] "introSubstEq falling back to intro\n{e.toMessageData}\n{mvarId}"
    if (← mvarId.isAssigned) then throwError "introSubstEq: now assigned?"
    let (h, mvarId) ← mvarId.intro1
    let (subst, mvarId) ← substEq mvarId h
    return (subst, mvarId)

/--
Given `x`, try to find an equation of the form `heq : x = rhs` or `heq : lhs = x`,
and runs `substCore` on it. Returns `none` if no such equation is found, or if `substCore` fails.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1bd574770be48d16b06b0e3048e9c0d3a6f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
