# abstractGroundMismatches?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2f19f7b8c2a35223c946ccec2bbe881ecc5d6e95de3306feb895da1076a0fdb",
  "kind": "def",
  "lexical_name": "abstractGroundMismatches?",
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
  "slug": "abstractgroundmismatches--aa42486aad22cb2f03c07303",
  "source": {
    "blob": "3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa42486aad22cb2f03c073039e6cac3900138b1d1bd22146cfe75a13e3372040",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2f19f7b8c2a35223c946ccec2bbe881ecc5d6e95de3306feb895da1076a0fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def abstractGroundMismatches? (lhs rhs : Expr) : GoalM (Option (Expr × Expr)) := do
  let lhs ← shareCommon lhs
  let rhs ← shareCommon rhs
  let some (f, s) ← go lhs rhs |>.run {} |>.run {} |>.run
    | return none
  if s.lhss.isEmpty then
    return none
  let f := mkLambdaWithBodyAndVarType s.varTypes f
  let fType ← inferType f
  let u ← getLevel fType
  let f := mkApp2 (.const ``Grind.abstractFn [u]) fType f
  return some (mkAppN f s.lhss, mkAppN f s.rhss)
where
  goCore (lhs rhs : Expr) : AbstractM Expr := do
    if (← inBinder) then
      if !lhs.hasLooseBVars && !rhs.hasLooseBVars then
        let lhs ← ensureInternalized lhs
        let rhs ← ensureInternalized rhs
        processNewFacts
        if (← isEqv lhs rhs) then
        if (← hasSameType lhs rhs) then
        let varType ← inferType lhs
        let varIdx := (← get).varTypes.size + (← read).offset
        modify fun s => { s with
          varTypes := s.varTypes.push varType
          lhss := s.lhss.push lhs
          rhss := s.rhss.push rhs
        }
        return mkBVar varIdx
    match lhs with
    | .lit _ | .sort _ | .mvar _ | .fvar _
    | .bvar _ | .const .. => failure
    | .mdata d₁ b₁ =>
      let .mdata _ b₂ := rhs | failure
      return .mdata d₁ (← go b₁ b₂)
    | .proj n₁ i₁ b₁ =>
      let .proj n₂ i₂ b₂ := rhs | failure
      guard (n₁ == n₂ && i₁ == i₂)
      return .proj n₁ i₁ (← go b₁ b₂)
    | .app f₁ a₁ =>
      let .app f₂ a₂ := rhs | failure
      return mkApp (← go f₁ f₂) (← go a₁ a₂)
    | .forallE n₁ d₁ b₁ i₁ =>
      let .forallE _ d₂ b₂ _ := rhs | failure
      return mkForall n₁ i₁ (← go d₁ d₂) (← withIncOffset <| go b₁ b₂)
    | .lam n₁ d₁ b₁ i₁  =>
      let .lam _ d₂ b₂ _ := rhs | failure
      return mkLambda n₁ i₁ (← go d₁ d₂) (← withIncOffset <| go b₁ b₂)
    | .letE n₁ t₁ v₁ b₁ nd₁ =>
      let .letE _ t₂ v₂ b₂ _ := rhs | failure
      return mkLet n₁ (← go t₁ t₂) (← go v₁ v₂) (← withIncOffset <| go b₁ b₂) nd₁

  go (lhs rhs : Expr) : AbstractM Expr := do
    if isSameExpr lhs rhs then
      return lhs
    if let some e := (← get).cache[(lhs, rhs)]? then
      return e
    let r ← goCore lhs rhs
    modify fun s => { s with cache := s.cache.insert (lhs, rhs) r }
    return r

/-!
Helper functions for creating equalities proofs.
-/

/--
Try to construct a proof that `lhs = rhs` using the information in the
goal state. If `lhs` and `rhs` have not been internalized, this function
will internalize then, process propagated equalities, and then check
whether they are in the same equivalence class or not.
The goal state is not modified by this function.
This function mainly relies on congruence closure, and constraint
propagation. It will not perform case analysis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
