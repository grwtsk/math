# tryTheoremCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1f4e52c1edaebf7af51df7ac8b92ad4e3cf4eae0dfe0113483537f00c30ad10",
  "kind": "def",
  "lexical_name": "tryTheoremCore",
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
  "slug": "trytheoremcore--1f011c233844f6c3b68f6a7a",
  "source": {
    "blob": "3a827dc4563a3afaefd4e052606efc0d052a06e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f011c233844f6c3b68f6a7ae3f94bf84b74e9efd14d384d817147192e788354",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1f4e52c1edaebf7af51df7ac8b92ad4e3cf4eae0dfe0113483537f00c30ad10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryTheoremCore (lhs : Expr) (xs : Array Expr) (bis : Array BinderInfo) (val : Expr) (type : Expr) (e : Expr) (thm : SimpTheorem) (numExtraArgs : Nat) : SimpM (Option Result) := do
  recordTriedSimpTheorem thm.origin
  let rec go (e : Expr) : SimpM (Option Result) := do
    trace[Debug.Meta.Tactic.simp] "trying {← ppSimpTheorem thm} to rewrite{indentExpr e}"
    if (← withSimpMetaConfig <| isDefEq lhs e) then
      unless (← synthesizeArgs thm.origin bis xs) do
        return none
      let proof? ← if (← useImplicitDefEqProof thm) then
        pure none
      else
        let proof ← instantiateMVars (mkAppN val xs)
        if (← hasAssignableMVar proof) then
          trace[Meta.Tactic.simp.rewrite] "{← ppSimpTheorem thm}, has unassigned metavariables after unification"
          return none
        pure <| some proof
      let rhs := (← instantiateMVars type).appArg!
      /-
      We used to use `e == rhs` in the following test.
      However, it include unnecessary proof steps when `e` and `rhs`
      are equal after metavariables are instantiated.
      We are hoping the following `instantiateMVars` should not be too expensive since
      we seldom have assigned metavariables in goals.
      -/
      if (← instantiateMVars e) == rhs then
        trace[Debug.Meta.Tactic.simp] "Not applying {← ppSimpTheorem thm} with type\
          {indentExpr type}\nto{indentExpr e}\nas the result is structurally equal \
          to the original expression"
        return none
      if thm.perm then
        /-
        We use `.reduceSimpleOnly` because this is how we indexed the discrimination tree.
        See issue #1815
        -/
        if !(← acLt rhs e .reduceSimpleOnly) then
          trace[Meta.Tactic.simp.rewrite] "{← ppSimpTheorem thm}, perm rejected {e} ==> {rhs}"
          return none
      trace[Meta.Tactic.simp.rewrite] "{← ppSimpTheorem thm}:{indentExpr e}\n==>{indentExpr rhs}"
      let rhs ← if type.hasBinderNameHint then rhs.resolveBinderNameHint else pure rhs
      recordSimpTheorem thm.origin
      return some { expr := rhs, proof? }
    else
      unless lhs.isMVar do
        -- We do not report unification failures when `lhs` is a metavariable
        -- Example: `x = ()`
        -- TODO: reconsider if we want thms such as `(x : Unit) → x = ()`
        trace[Meta.Tactic.simp.unify] "{← ppSimpTheorem thm}, failed to unify{indentExpr lhs}\nwith{indentExpr e}"
      return none
  /- Check whether we need something more sophisticated here.
     This simple approach was good enough for Mathlib 3 -/
  let mut extraArgs := #[]
  let mut e := e
  for _ in *...numExtraArgs do
    extraArgs := extraArgs.push e.appArg!
    e := e.appFn!
  extraArgs := extraArgs.reverse
  match (← go e) with
  | none => return none
  | some r =>
    if (← hasAssignableMVar r.expr) then
      trace[Meta.Tactic.simp.rewrite] "{← ppSimpTheorem thm}, resulting expression has unassigned metavariables"
      return none
    r.addExtraArgs extraArgs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a827dc4563a3afaefd4e052606efc0d052a06e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
