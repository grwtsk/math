# simpAndMatchDIteDecidableCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d5fac153c875aba1bf0eb243b4dd35d766e5725e19155245e7ea77715860dc0",
  "kind": "def",
  "lexical_name": "simpAndMatchDIteDecidableCongr",
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
  "slug": "simpandmatchditedecidablecongr--d6253237af64168e0b4fb96a",
  "source": {
    "blob": "638b27269bcce232d6c9cdff393ab48f7bb039a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6253237af64168e0b4fb96a2d5286dee57330c3dd600cc0d7d99d627e7abf58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d5fac153c875aba1bf0eb243b4dd35d766e5725e19155245e7ea77715860dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAndMatchDIteDecidableCongr (f α c inst a b c' h inst' : Expr) (fallback : SimpM Result) : SimpM Result := do
  match (← simp inst') with
  | .rfl _ cd =>
    let r ← matchDIteDecidableCongr f α c inst a b c' h inst' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r
  | .step inst'' _ _ cd =>
    let r ← matchDIteDecidableCongr f α c inst a b c' h inst'' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r

/-- Like `simpDIte` but also evaluates `Decidable.decide` when the condition does not
reduce to `True`/`False` directly. -/
builtin_cbv_simproc ↓ simpDIteCbv (@dite _ _ _ _ _) := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 5) fun e => do
    let_expr f@dite α c inst a b := e | return .rfl
    match (← simp c) with
    | .rfl _ cd =>
      if (← isTrueExpr c) then
        let a' ← share <| a.betaRev #[mkConst ``True.intro]
        return .step a' (mkApp3 (mkConst ``dite_true f.constLevels!) α a b) (contextDependent := cd)
      else if (← isFalseExpr c) then
        let b' ← share <| b.betaRev #[mkConst ``not_false]
        return .step b' (mkApp3 (mkConst ``dite_false f.constLevels!) α a b) (contextDependent := cd)
      else
        simpAndMatchDIteDecidable f α c inst a b do return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if (← isTrueExpr c') then
        let h' ← shareCommon <| mkOfEqTrueCore c h
        let a ← share <| a.betaRev #[h']
        return .step a (mkApp (e.replaceFn ``dite_cond_eq_true) h) (contextDependent := cd)
      else if (← isFalseExpr c') then
        let h' ← shareCommon <| mkOfEqFalseCore c h
        let b ← share <| b.betaRev #[h']
        return .step b (mkApp (e.replaceFn ``dite_cond_eq_false) h) (contextDependent := cd)
      else
        -- If we get stuck after simplifying `p` to `p'`, then we try to evaluate the original instance
        simpAndMatchDIteDecidable f α c inst a b do
          -- Otherwise, we make `Decidable c'` instance and try to evaluate it instead
          let inst' := mkApp4 (mkConst ``decidable_of_decidable_of_eq) c c' inst h
          simpAndMatchDIteDecidableCongr f α c inst a b c' h inst' do
            let e' := e.getBoundedAppFn 4
            let h ← shareCommon h
            let a ← share <| mkLambda `h .default c' (a.betaRev #[mkApp4 (mkConst ``Eq.mpr_prop) c c' h (mkBVar 0)])
            let b ← share <| mkLambda `h .default (mkNot c') (b.betaRev #[mkApp4 (mkConst ``Eq.mpr_not) c c' h (mkBVar 0)])
            let e' ← mkAppS₄ e' c' inst' a b
            let h' := mkApp3 (e.replaceFn ``Sym.dite_cond_congr) c' inst' h
            return .step e' h' (done := true) (contextDependent := cd)

/-- Reduce `decide` by matching the `Decidable` instance for `isTrue`/`isFalse`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638b27269bcce232d6c9cdff393ab48f7bb039a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
