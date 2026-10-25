# tryMkBackwardRuleFromSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0fb9b19771ae0ad7a6eeb4765cc11e36d599c35520c583d0337d8851190fae3",
  "kind": "def",
  "lexical_name": "tryMkBackwardRuleFromSpec",
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
  "slug": "trymkbackwardrulefromspec--d66a1d44b439b8ebf55c5ede",
  "source": {
    "blob": "386fc1cd07d277bd6d4447ec159ec1f8f074b80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d66a1d44b439b8ebf55c5ede08c0da22e52360c2488fb59cb82c155f4c8325c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0fb9b19771ae0ad7a6eeb4765cc11e36d599c35520c583d0337d8851190fae3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def tryMkBackwardRuleFromSpec (specThm : SpecTheorem) (info : WPApp)
    (stateArgNames : Array Name := #[]) : OptionT MetaM BackwardRule := do
  -- Instantiate the spec theorem, creating metavars for all universally quantified params
  let (xs, _bs, specProof, specType) ← specThm.instantiate
  -- Equality specs (the simp side of `@[spec]`) are normalized to `⊑ wp` form, then handled like
  -- any ordinary `⊑ wp` spec.
  let (specProof, specType) ←
    if specType.isAppOfArity ``Eq 3 then eqSpecToWp? info xs specProof specType
    else pure (specProof, specType)
  let_expr PartialOrder.rel Pred' _cl' pre rhs := specType
    | throwError "target not a partial order ⊑ application {specType}"
  guard <| ← isDefEqGuarded info.Pred Pred'
  let_expr Std.Internal.Do.wp _Prog' _Value' _Pred' _EPred' _instAL' _instEAL' instWP' prog postSpec epostSpec := rhs
    | throwError "target not a wp application {rhs}"
  guard <| ← isDefEqGuarded info.instWP instWP'
  -- Use local excess-state binders so explicit post premises can be re-lifted to `⊑`.
  -- Name them positionally from `stateArgNames` (else `s`) so the rule's binders carry good names.
  let mut ss := #[]
  let mut ssTypes := #[]
  for h : i in [0:info.excessArgs.size] do
    let ty ← Meta.inferType info.excessArgs[i]
    ssTypes := ssTypes.push ty
    ss := ss.push <| ← mkFreshExprMVar (userName := stateArgNames[i]?.getD `s) ty
  let res ← mkSpecBackwardProof pre prog postSpec epostSpec specProof info.EPred ss ssTypes stateArgNames
  mkBackwardRuleFromExpr res.expr res.paramNames.toList

/-! ## Split rules -/

open Lean.Elab.Tactic.Do in
/-- Creates a reusable backward rule for splitting `ite`, `dite`, or matchers.

Uses `SplitInfo.withAbstract` to introduce abstract fvars for the split components,
then `SplitInfo.splitWith` to build the splitting proof. Hypothesis types are
discovered via `rwIfOrMatcher` inside the splitter telescope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386fc1cd07d277bd6d4447ec159ec1f8f074b80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
