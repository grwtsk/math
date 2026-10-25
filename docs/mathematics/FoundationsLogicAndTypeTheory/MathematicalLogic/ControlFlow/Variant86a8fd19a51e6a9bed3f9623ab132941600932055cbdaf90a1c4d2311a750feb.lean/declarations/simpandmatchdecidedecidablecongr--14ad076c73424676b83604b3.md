# simpAndMatchDecideDecidableCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3eb2e83c2f31eb2b8457224abc0e781dbc4f7428f48f21b993302c1d24c51a63",
  "kind": "def",
  "lexical_name": "simpAndMatchDecideDecidableCongr",
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
  "slug": "simpandmatchdecidedecidablecongr--14ad076c73424676b83604b3",
  "source": {
    "blob": "638b27269bcce232d6c9cdff393ab48f7bb039a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14ad076c73424676b83604b348f61d1e000271c53d058957441359ba06ca6f86",
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

Occurrence: `declaration:3eb2e83c2f31eb2b8457224abc0e781dbc4f7428f48f21b993302c1d24c51a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAndMatchDecideDecidableCongr (p p' h inst inst' : Expr) (fallback : SimpM Result) : SimpM Result := do
  match (← simp inst') with
  | .rfl _ cd =>
    let r ← matchDecideDecidableCongr p p' h inst inst' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r
  | .step inst'' _ _ cd =>
    let r ← matchDecideDecidableCongr p p' h inst inst'' fallback
    return if cd && !r.isContextDependent then r.withContextDependent else r

/-- Simplify `Decidable.decide` by simplifying the proposition and reducing the instance.

First simplifies the proposition `p`. If the result is `True` or `False`, produces the
corresponding boolean directly. Otherwise, simplifies the `Decidable` instance and matches
on `isTrue`/`isFalse` to determine the boolean value. When `p` simplified to a new `p'`
but the instance doesn't reduce to `isTrue`/`isFalse`, falls back to rebuilding
`decide p'` with a congruence proof. -/
builtin_cbv_simproc ↓ simpDecideCbv (@Decidable.decide _ _) := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 2 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 2) fun e => do
    let_expr Decidable.decide p inst := e | return .rfl
    match (← simp p) with
    | .rfl _ cd =>
      if (← isTrueExpr p) then
        return .step (← getBoolTrueExpr) (mkApp (mkConst ``decide_true) inst) (contextDependent := cd)
      else if (← isFalseExpr p) then
        return .step (← getBoolFalseExpr) (mkApp (mkConst ``decide_false) inst) (contextDependent := cd)
      else
        simpAndMatchDecideDecidable p inst do return mkRflResult (done := true) (contextDependent := cd)
    | .step p' hp _ cd =>
      if (← isTrueExpr p') then
        return .step (← getBoolTrueExpr) (mkApp3 (mkConst ``Sym.decide_prop_eq_true) p inst hp) (contextDependent := cd)
      else if (← isFalseExpr p') then
        return .step (← getBoolFalseExpr) (mkApp3 (mkConst ``Sym.decide_prop_eq_false) p inst hp) (contextDependent := cd)
      else
        let inst' ← trySynthComputableInstance p'
        let inst' := inst'.getD <| mkApp4 (mkConst ``decidable_of_decidable_of_eq) p p' inst hp
        simpAndMatchDecideDecidableCongr p p' hp inst inst' do
          let res := (mkConst ``Decidable.decide)
          let res ← shareCommon res
          let res ← mkAppS₂ res p' inst'
          return .step res (mkApp5 (mkConst ``Decidable.decide.congr_simp) p p' hp inst inst') (done := true) (contextDependent := cd)

end Lean.Meta.Sym.Simp

namespace Lean.Meta.Tactic.Cbv
open Lean.Meta.Sym.Simp

/--
Run a `MetaM` computation with `whnf` blocked from unfolding `@[cbv_opaque]` definitions.
This prevents kernel-level reduction (used by `reduceRecMatcher?` and `reduceProj?`)
from bypassing the `@[cbv_opaque]` attribute.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638b27269bcce232d6c9cdff393ab48f7bb039a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
