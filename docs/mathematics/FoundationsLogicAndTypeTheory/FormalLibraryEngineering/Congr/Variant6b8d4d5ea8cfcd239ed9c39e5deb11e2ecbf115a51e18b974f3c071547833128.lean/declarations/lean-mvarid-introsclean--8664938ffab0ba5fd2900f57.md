# Lean.MVarId.introsClean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c260a3aa0921e8ef7cd5024887e426561d76151ce3ec0fe2d9965f6593fa3d1",
  "kind": "def",
  "lexical_name": "Lean.MVarId.introsClean",
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
  "slug": "lean-mvarid-introsclean--8664938ffab0ba5fd2900f57",
  "source": {
    "blob": "c3c4de23449c1822e987fa2b2b16809b1de82fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8664938ffab0ba5fd2900f57c146a7717e6228ba9002ac37889af937d0fd3f30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c260a3aa0921e8ef7cd5024887e426561d76151ce3ec0fe2d9965f6593fa3d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.introsClean (mvarId : MVarId) : CongrMetaM (List MVarId) :=
  loop mvarId
where
  heqImpOfEqImp (mvarId : MVarId) : MetaM (Option MVarId) :=
    observing? <| withReducible do
      let [mvarId] ← mvarId.apply (← mkConstWithFreshMVarLevels ``heq_imp_of_eq_imp) | failure
      return mvarId
  eqImpOfIffImp (mvarId : MVarId) : MetaM (Option MVarId) :=
    observing? <| withReducible do
      let [mvarId] ← mvarId.apply (← mkConstWithFreshMVarLevels ``eq_imp_of_iff_imp) | failure
      return mvarId
  loop (mvarId : MVarId) : CongrMetaM (List MVarId) :=
    mvarId.withContext do
      let ty ← withReducible <| mvarId.getType'
      if ty.isForall then
        let mvarId := (← heqImpOfEqImp mvarId).getD mvarId
        let mvarId := (← eqImpOfIffImp mvarId).getD mvarId
        let ty ← withReducible <| mvarId.getType'
        if ty.isArrow then
          if ← (isTrivialType ty.bindingDomain!
                <||> (← getLCtx).anyM (fun decl => do
                        return (← instantiateMVars decl.type) == ty.bindingDomain!)) then
            -- Don't intro, clear it
            let mvar ← mkFreshExprSyntheticOpaqueMVar ty.bindingBody! (← mvarId.getTag)
            mvarId.assign <| .lam .anonymous ty.bindingDomain! mvar .default
            return ← loop mvar.mvarId!
        if let some patt ← CongrMetaM.nextPattern then
          let gs ← Term.TermElabM.run' <| Std.Tactic.RCases.rintro #[patt] none mvarId
          List.join <$> gs.mapM loop
        else
          let (_, mvarId) ← mvarId.intro1
          loop mvarId
      else
        return [mvarId]
  isTrivialType (ty : Expr) : MetaM Bool := do
    unless ← Meta.isProp ty do
      return false
    let ty ← instantiateMVars ty
    if let some (lhs, rhs) := ty.eqOrIff? then
      if lhs.cleanupAnnotations == rhs.cleanupAnnotations then
        return true
    if let some (α, lhs, β, rhs) := ty.heq? then
      if α.cleanupAnnotations == β.cleanupAnnotations
          && lhs.cleanupAnnotations == rhs.cleanupAnnotations then
        return true
    return false

/-- Convert a goal into an `Eq` goal if possible (since we have a better shot at those).
Also, if `tryClose := true`, then try to close the goal using an assumption, `Subsingleton.Elim`,
or definitional equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c4de23449c1822e987fa2b2b16809b1de82fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
