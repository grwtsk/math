# simpAndMatchIteDecidableCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50e9980390d92ba974c5320b6c1d2341908552b8213217e7d4d9790bdbf1cad3",
  "kind": "def",
  "lexical_name": "simpAndMatchIteDecidableCongr",
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
  "slug": "simpandmatchitedecidablecongr--bee9dbccfc2b8985476a4510",
  "source": {
    "blob": "638b27269bcce232d6c9cdff393ab48f7bb039a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bee9dbccfc2b8985476a451059ab89732121cadbc4652c25853c106a5e30520f",
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

Occurrence: `declaration:50e9980390d92ba974c5320b6c1d2341908552b8213217e7d4d9790bdbf1cad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAndMatchIteDecidableCongr (f α c inst a b c' h inst' : Expr) (fallback : SimpM Result) : SimpM Result := do
  match (← simp inst') with
  | .rfl _ cd =>
    let r ← matchIteDecidableCongr f α c inst a b c' h inst' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r
  | .step inst'' _ _ cd =>
    let r ← matchIteDecidableCongr f α c inst a b c' h inst'' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r

/-- Like `simpIte` but also evaluates `Decidable.decide` when the condition does not
reduce to `True`/`False` directly. -/
builtin_cbv_simproc ↓ simpIteCbv (@ite _ _ _ _ _) := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 5) fun e => do
    let_expr f@ite α c inst a b := e | return .rfl
    -- See Sym.Simp.ControlFlow.simpIte for why cd is propagated to all branches.
    match (← simp c) with
    | .rfl _ cd =>
      if (← isTrueExpr c) then
        return .step a (mkApp3 (mkConst ``ite_true f.constLevels!) α a b) (contextDependent := cd)
      else if (← isFalseExpr c) then
        return .step b (mkApp3 (mkConst ``ite_false f.constLevels!) α a b) (contextDependent := cd)
      else
        simpAndMatchIteDecidable f α c inst a b do return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if (← isTrueExpr c') then
        return .step a (mkApp (e.replaceFn ``ite_cond_eq_true) h) (contextDependent := cd)
      else if (← isFalseExpr c') then
        return .step b (mkApp (e.replaceFn ``ite_cond_eq_false) h) (contextDependent := cd)
      else
        -- If we got stuck with simplifying `p` then let's try evaluating the original instance
        simpAndMatchIteDecidable f α c inst a b do
          -- If we get stuck here, maybe the problem is that we need to look at `Decidable c'`
          let inst' := mkApp4 (mkConst ``decidable_of_decidable_of_eq) c c' inst h
          simpAndMatchIteDecidableCongr f α c inst a b c' h inst' do
            -- If we fail, then we just rewrite `c` to `c'`
            let e' := e.getBoundedAppFn 4
            let e' ← mkAppS₄ e' c' inst' a b
            let h' := mkApp3 (e.replaceFn ``Sym.ite_cond_congr) c' inst' h
            return .step e' h' (done := true) (contextDependent := cd)

/-- Reduce `dite` by matching the `Decidable` instance for `isTrue`/`isFalse`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638b27269bcce232d6c9cdff393ab48f7bb039a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
