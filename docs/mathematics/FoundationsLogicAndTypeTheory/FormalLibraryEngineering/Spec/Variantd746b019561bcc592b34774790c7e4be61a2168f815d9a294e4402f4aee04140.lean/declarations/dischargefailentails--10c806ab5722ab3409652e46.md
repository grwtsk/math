# dischargeFailEntails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7cf39a93fd2742ee289eb79bb3554b4ca17fb131d52660ccd172bec6aa8c1bb",
  "kind": "def",
  "lexical_name": "dischargeFailEntails",
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
  "slug": "dischargefailentails--10c806ab5722ab3409652e46",
  "source": {
    "blob": "edca26c0ebd8adb2dd49a3b65d5632d2d7f3ac85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10c806ab5722ab3409652e4699dcc714c7e986fac060d5eb562242e5e9b53698",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7cf39a93fd2742ee289eb79bb3554b4ca17fb131d52660ccd172bec6aa8c1bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def dischargeFailEntails (u : Level) (ps : Expr) (Q : Expr) (Q' : Expr) (goalTag : Name) : n Expr := do
  if ps.isAppOf ``PostShape.pure then
    return mkConst ``True.intro
  if ← withDefault <| isDefEqGuarded Q Q' then
    return mkApp2 (mkConst ``ExceptConds.entails.refl [u]) ps Q
  if ← withDefault <| isDefEqGuarded Q (mkApp (mkConst ``ExceptConds.false [u]) ps) then
    return mkApp2 (mkConst ``ExceptConds.entails_false [u]) ps Q'
  if ← withDefault <| isDefEqGuarded Q' (mkApp (mkConst ``ExceptConds.true [u]) ps) then
    return mkApp2 (mkConst ``ExceptConds.entails_true [u]) ps Q
  -- the remaining cases are recursive.
  if let some (_σ, ps) := ps.app2? ``PostShape.arg then
    return ← dischargeFailEntails u ps Q Q' goalTag
  if let some (ε, ps) := ps.app2? ``PostShape.except then
    let Q ← whnfR Q
    let Q' ← whnfR Q'
    let prf₁ ← withLocalDeclD (← liftMetaM <| mkFreshUserName `e) ε fun e => do
      let Q1e := (← mkProj' ``Prod 0 Q).betaRev #[e]
      let Q'1e := (← mkProj' ``Prod 0 Q').betaRev #[e]
      let σs := mkApp (mkConst ``PostShape.args [u]) ps
      let uniq ← liftMetaM mkFreshId
      let goal := MGoal.mk u σs (Hyp.mk (← liftMetaM <| mkFreshUserName `h) uniq Q1e).toExpr Q'1e
      mkLambdaFVars #[e] (← mkFreshExprSyntheticOpaqueMVar goal.toExpr (goalTag ++ `handle))
    let prf₂ ← dischargeFailEntails u ps (← mkProj' ``Prod 1 Q) (← mkProj' ``Prod 1 Q') (goalTag ++ `except)
    return ← mkAppM ``And.intro #[prf₁, prf₂] -- This is just a bit too painful to construct by hand
  -- This case happens when decomposing with unknown `ps : PostShape`
  mkFreshExprSyntheticOpaqueMVar (mkApp3 (mkConst ``ExceptConds.entails [u]) ps Q Q') goalTag
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edca26c0ebd8adb2dd49a3b65d5632d2d7f3ac85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
