# solveTrivialConjuncts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:224d3e57dbcb23997ddf66ecf02b414a789992970fcad10f317d3bc2008ad88c",
  "kind": "def",
  "lexical_name": "solveTrivialConjuncts",
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
  "slug": "solvetrivialconjuncts--e3d5d029142cdb1f54c00b06",
  "source": {
    "blob": "cb306f2ada9110944a97d6d731f38b9f77e49c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3d5d029142cdb1f54c00b068fc380eef9c0069a177f03a617ea6f9301ea9b04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:224d3e57dbcb23997ddf66ecf02b414a789992970fcad10f317d3bc2008ad88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def solveTrivialConjuncts (goal : MVarId) : VCGenM (Option MVarId) :=
    goal.withContext do
  let ctx ← read
  let ty ← instantiateMVars (← goal.getType)
  if ty.isAppOf ``True then
    goal.assign (mkConst ``True.intro)
    return none
  else if ty.isAppOf ``And then
    let .goals [g₁, g₂] ← ctx.backwardRules.andIntro.applyChecked goal
      | throwError "solveTrivialConjuncts: failed to apply {.ofConstName ``And.intro} to{indentExpr ty}"
    match ← solveTrivialConjuncts g₁, ← solveTrivialConjuncts g₂ with
    | none,    none    => return none
    | some g,  none    => return some g
    | none,    some g  => return some g
    | some g₁', some g₂' =>
      let t₁ ← g₁'.getType
      let t₂ ← g₂'.getType
      let combined ← mkFreshExprSyntheticOpaqueMVar (mkApp2 (mkConst ``And) t₁ t₂)
      g₁'.assign (mkApp3 (mkConst ``And.left) t₁ t₂ combined)
      g₂'.assign (mkApp3 (mkConst ``And.right) t₁ t₂ combined)
      return some combined.mvarId!
  else if let some (ty, lhs, rhs) := ty.app3? ``Eq then
    let lhs ← reduceHead lhs
    let rhs ← reduceHead rhs
    let u ← Meta.getLevel ty
    let goal ← goal.replaceTargetDefEqFast (mkApp3 (mkConst ``Eq [u]) ty lhs rhs)
    -- Synthetic opaque metavariables (e.g. invariant holes) stay rigid; natural
    -- metavariables may be assigned (e.g. `?m := e` for `e = ?m` leaves).
    if ← isDefEqS lhs rhs then
      goal.assign (mkApp2 (mkConst ``Eq.refl [← Meta.getLevel ty]) ty lhs)
      return none
    else
      return some goal
  else
    return some goal

end VCGen
end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant3d31c0794d605dd6823f27ddd5c750ef6ff48cfdae2f967cd845f20bf66a2e71.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb306f2ada9110944a97d6d731f38b9f77e49c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
