# exprsEqualUpToIdsCore₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00d2bb8c64c8c8d94abac2ac8ce1ab63c7bc1baa9ec9455ff7ed8e9b3f841487",
  "kind": "def",
  "lexical_name": "exprsEqualUpToIdsCore₃",
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
  "slug": "exprsequaluptoidscore--917fe44f7c886ea785c69f18",
  "source": {
    "blob": "0a2c96db4a17e1ae56ef52af2e8f1d51cb8ab9ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:917fe44f7c886ea785c69f1838913dc53fda6df43ba4107410ed4e9a2c2b8bbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00d2bb8c64c8c8d94abac2ac8ce1ab63c7bc1baa9ec9455ff7ed8e9b3f841487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  unsafe def exprsEqualUpToIdsCore₃ : Expr → Expr → ExprsEqualUpToIdsM Bool
    | .bvar i, .bvar j => return i == j
    | .fvar fvarId₁, .fvar fvarId₂ =>
      return fvarId₁ == fvarId₂ ||
             (← read).equalFVarIds[fvarId₁]? == some fvarId₂
    | .sort u, .sort v => levelsEqualUpToIdsCore u v
    | .const decl₁ lvls₁, .const decl₂ lvls₂ => do
      if decl₁ == decl₂ && lvls₁.length == lvls₂.length then
        for l₁ in lvls₁, l₂ in lvls₂ do
          if ! (← levelsEqualUpToIdsCore l₁ l₂) then
            return false
        return true
      else
        return false
    | .app f₁ x₁, .app f₂ x₂ =>
      exprsEqualUpToIdsCore₂ f₁ f₂ <&&> exprsEqualUpToIdsCore₂ x₁ x₂
    | .lam n₁ t₁ e₁ bi₁, .lam n₂ t₂ e₂ bi₂ =>
      pure (namesEqualUpToMacroScopes n₁ n₂ && bi₁ == bi₂) <&&>
      exprsEqualUpToIdsCore₂ t₁ t₂ <&&>
      exprsEqualUpToIdsCore₂ e₁ e₂
    | .forallE n₁ t₁ e₁ bi₁, .forallE n₂ t₂ e₂ bi₂ =>
      pure (namesEqualUpToMacroScopes n₁ n₂ && bi₁ == bi₂) <&&>
      exprsEqualUpToIdsCore₂ t₁ t₂ <&&>
      exprsEqualUpToIdsCore₂ e₁ e₂
    | .letE n₁ t₁ v₁ e₁ _, .letE n₂ t₂ v₂ e₂ _ =>
      pure (namesEqualUpToMacroScopes n₁ n₂) <&&>
      exprsEqualUpToIdsCore₂ t₁ t₂ <&&>
      exprsEqualUpToIdsCore₂ v₁ v₂ <&&>
      exprsEqualUpToIdsCore₂ e₁ e₂
    | .lit l₁, .lit l₂ => return l₁ == l₂
    | .mdata _ e₁, e₂ => exprsEqualUpToIdsCore₂ e₁ e₂
    | e₁, .mdata _ e₂ => exprsEqualUpToIdsCore₂ e₁ e₂
    | .proj n₁ i₁ e₁, .proj n₂ i₂ e₂ =>
      pure (n₁ == n₂ && i₁ == i₂) <&&> exprsEqualUpToIdsCore₂ e₁ e₂
    | .mvar m₁, .mvar m₂ => do
      let v₁ ← normalizeMVar (← readMCtx₁) m₁
      let v₂ ← normalizeMVar (← readMCtx₂) m₂
      compareMVarValues v₁ v₂
    | .mvar m₁, e₂ => do
      let v₁ ← normalizeMVar (← readMCtx₁) m₁
      compareMVarValues v₁ (.expr e₂)
    | e₁, .mvar m₂ => do
      let v₂ ← normalizeMVar (← readMCtx₂) m₂
      compareMVarValues (.expr e₁) v₂
    | _, _ => return false
  where
    normalizeMVar (mctx : MetavarContext) (m : MVarId) : MetaM MVarValue :=
      withMCtx mctx do
        if let some dAss ← getDelayedMVarAssignment? m then
          return .delayedAssignment dAss
        else
          return .mvarId m

    compareMVarValues : MVarValue → MVarValue → ExprsEqualUpToIdsM Bool
      | .expr _, .expr _ => unreachable!
      | .mvarId m₁, .mvarId m₂ => unassignedMVarsEqualUpToIdsCore m₁ m₂
      | .delayedAssignment dAss₁, .delayedAssignment dAss₂ =>
        unassignedMVarsEqualUpToIdsCore dAss₁.mvarIdPending dAss₂.mvarIdPending
        -- TODO I'm not sure whether this suffices -- do we also need to check
        -- that the `fvars` in `dAss₁` correspond to the `fvars` in `dAss₂`?
      | .mvarId m₁, .expr e₂ => do
        if ! (← readAllowAssignmentDiff) then
          return false
        let map := (← get).leftUnassignedMVarValues
        if let some e₁ := map[m₁]? then
          exprsEqualUpToIdsCore₂ e₁ e₂
        else
          modify λ s => {
            s with
            leftUnassignedMVarValues := s.leftUnassignedMVarValues.insert m₁ e₂
          }
          return true
      | .expr e₁, .mvarId m₂ => do
        if ! (← readAllowAssignmentDiff) then
          return false
        let map := (← get).rightUnassignedMVarValues
        if let some e₂ := map[m₂]? then
          exprsEqualUpToIdsCore₂ e₁ e₂
        else
          modify λ s => {
            s with
            rightUnassignedMVarValues := s.rightUnassignedMVarValues.insert m₂ e₁
          }
          return true
      | _, _ => return false

  @[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2c96db4a17e1ae56ef52af2e8f1d51cb8ab9ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
