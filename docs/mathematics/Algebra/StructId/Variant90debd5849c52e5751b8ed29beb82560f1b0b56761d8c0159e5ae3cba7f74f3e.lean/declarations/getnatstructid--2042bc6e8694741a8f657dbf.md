# getNatStructId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87d6914383e676924802ea54b77ec54c1d5edb8bf610d0cf50bcbeecefbed4c1",
  "kind": "def",
  "lexical_name": "getNatStructId?",
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
  "slug": "getnatstructid--2042bc6e8694741a8f657dbf",
  "source": {
    "blob": "8a5d963c3243fe2f7dec54707fbc075223fd67bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 383,
    "path": "GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2042bc6e8694741a8f657dbf9c97adc34151eb569982f79c6840f30defc58b09",
  "verification": {
    "reference": "docs/verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87d6914383e676924802ea54b77ec54c1d5edb8bf610d0cf50bcbeecefbed4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNatStructId? (type : Expr) : GoalM (Option Nat) := do
  unless (← getConfig).linarith do return none
  if (← get').forbiddenNatModules.contains { expr := type } then return none
  if (← isCutsatType type) then return none
  if let some id? := (← get').natTypeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with natTypeIdOf := s.natTypeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    let u ← getDecLevel type
    let some natModuleInst ← mkNatModuleInst? u type | return none
    let q ← shareCommon (← canon (mkApp2 (mkConst ``Grind.IntModule.OfNatModule.Q [u]) type natModuleInst))
    let some structId ← getStructId? q
      | throwError "`grind` unexpected failure, failure to initialize auxiliary `IntModule`{indentExpr q}"
    let leInst? ← getInst? ``LE u type
    let ltInst? ← getInst? ``LT u type
    let isPreorderInst? ← mkIsPreorderInst? u type leInst?
    let lawfulOrderLTInst? ← mkLawfulOrderLTInst? u type ltInst? leInst?
    let isLinearInst? ← mkIsLinearOrderInst? u type leInst?
    let addInst ← getBinHomoInst ``HAdd u type
    let addFn ← internalizeFn <| mkApp4 (mkConst ``HAdd.hAdd [u, u, u]) type type type addInst
    let orderedAddInst? ← match leInst?, isPreorderInst? with
      | some leInst, some isPreorderInst =>
        synthInstance? <| mkApp4 (mkConst ``Grind.OrderedAdd [u]) type addInst leInst isPreorderInst
      | _, _ => pure none
    let addInst' ← synthInstance <| mkApp (mkConst ``Add [u]) type
    let addRightCancelInst? ← synthInstance? <| mkApp2 (mkConst ``Grind.AddRightCancel [u]) type addInst'
    let toQFn ← internalizeFn <| mkApp2 (mkConst ``Grind.IntModule.OfNatModule.toQ [u]) type natModuleInst
    let zeroInst ← getInst ``Zero u type
    let zero ← internalizeConst <| mkApp2 (mkConst ``Zero.zero [u]) type zeroInst
    let smulInst ← getHSMulNatInst u type
    let smulFn ← internalizeFn <| mkApp4 (mkConst ``HSMul.hSMul [0, u, u]) Nat.mkType type type smulInst
    let rfl_q := mkApp (mkConst ``Eq.refl [.succ u]) q
    let id := (← get').natStructs.size
    let natStruct : NatStruct := {
      id, structId, u, type, natModuleInst,
      leInst?, ltInst?, lawfulOrderLTInst?, isPreorderInst?, isLinearInst?, orderedAddInst?, addRightCancelInst?,
      rfl_q, zero, toQFn, addFn, smulFn
    }
    modify' fun s => { s with natStructs := s.natStructs.push natStruct }
    return some id

end Lean.Meta.Grind.Arith.Linear
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructId/Variant90debd5849c52e5751b8ed29beb82560f1b0b56761d8c0159e5ae3cba7f74f3e.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5d963c3243fe2f7dec54707fbc075223fd67bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
