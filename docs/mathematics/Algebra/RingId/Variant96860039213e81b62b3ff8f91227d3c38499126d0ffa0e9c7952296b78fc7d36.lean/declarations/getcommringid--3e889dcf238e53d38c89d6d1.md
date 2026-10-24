# getCommRingId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dce9cdb4baab4a223a4657970c7a448d9fdad51801fa751c146a4a7cf378d30f",
  "kind": "def",
  "lexical_name": "getCommRingId?",
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
  "slug": "getcommringid--3e889dcf238e53d38c89d6d1",
  "source": {
    "blob": "2c27403ce66e22e760d6388fb2699c4a9a8cec5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 21,
    "path": "GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e889dcf238e53d38c89d6d16ec55f225efcc9d48bab910230d66cf5ec18cf34",
  "verification": {
    "reference": "docs/verification/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dce9cdb4baab4a223a4657970c7a448d9fdad51801fa751c146a4a7cf378d30f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCommRingId? (type : Expr) : GoalM (Option Nat) := do
  if let some id? := (← get').typeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with typeIdOf := s.typeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    if type.isAppOfArity ``Grind.Ring.OfSemiring.Q 2 then
      goQ? type.appFn!.appArg! type.appArg!
    else
      goCore?

  /-
  Fast path for `grind`'s internal envelope type `Ring.OfSemiring.Q base`.
  -/
  goQ? (base semiringInst : Expr) : GoalM (Option Nat) := do
    -- `getCommSemiringId?` instantiates the envelope with `CommSemiring.toSemiring`;
    -- fall back to the generic path otherwise.
    let_expr Grind.CommSemiring.toSemiring _ commSemiringInst := semiringInst | goCore?
    let some u ← getDecLevel? base | return none
    let commRingInst := mkApp2 (mkConst ``Grind.CommRing.OfCommSemiring.ofCommSemiring [u]) base commSemiringInst
    let ringInst := mkApp2 (mkConst ``Grind.CommRing.toRing [u]) type commRingInst
    let semiringInstQ := mkApp2 (mkConst ``Grind.Ring.toSemiring [u]) type ringInst
    let commSemiringInstQ := mkApp2 (mkConst ``Grind.CommRing.toCommSemiring [u]) type semiringInstQ
    registerInstance (mkApp (mkConst ``Grind.CommRing [u]) type) commRingInst
    registerInstance (mkApp (mkConst ``Grind.Ring [u]) type) ringInst
    registerInstance (mkApp (mkConst ``Grind.Semiring [u]) type) semiringInstQ
    registerInstance (mkApp (mkConst ``Grind.CommSemiring [u]) type) commSemiringInstQ
    registerInstance (mkApp (mkConst ``Grind.NatModule [u]) type)
      (mkApp2 (mkConst ``Grind.Semiring.toNatModule [u]) type semiringInstQ)
    registerInstance (mkApp3 (mkConst ``HAdd [u, u, u]) type type type)
      (mkApp2 (mkConst ``instHAdd [u]) type (mkApp2 (mkConst ``Grind.Semiring.toAdd [u]) type semiringInstQ))
    registerInstance (mkApp3 (mkConst ``HMul [u, u, u]) type type type)
      (mkApp2 (mkConst ``instHMul [u]) type (mkApp2 (mkConst ``Grind.Semiring.toMul [u]) type semiringInstQ))
    registerInstance (mkApp3 (mkConst ``HSub [u, u, u]) type type type)
      (mkApp2 (mkConst ``instHSub [u]) type (mkApp2 (mkConst ``Grind.Ring.toSub [u]) type ringInst))
    registerInstance (mkApp (mkConst ``Neg [u]) type)
      (mkApp2 (mkConst ``Grind.Ring.toNeg [u]) type ringInst)
    registerInstance (mkApp3 (mkConst ``HPow [u, 0, u]) type Nat.mkType type)
      (mkApp2 (mkConst ``Grind.Semiring.npow [u]) type semiringInstQ)
    registerInstance (mkApp (mkConst ``NatCast [u]) type)
      (mkApp2 (mkConst ``Grind.Semiring.natCast [u]) type semiringInstQ)
    registerInstance (mkApp (mkConst ``IntCast [u]) type)
      (mkApp2 (mkConst ``Grind.Ring.intCast [u]) type ringInst)
    trace_goal[grind.ring] "new ring: {type}"
    -- Premises on the base type for the conditional envelope instances.
    let addRightCancelInst? ← do
      let some addInst ← synthInstance? (mkApp (mkConst ``Add [u]) base) | pure none
      synthInstance? (mkApp2 (mkConst ``Grind.AddRightCancel [u]) base addInst)
    let charInst? ← do
      let some addRightCancelInst := addRightCancelInst? | pure none
      let some (baseCharInst, n) ← getIsCharInst? u base semiringInst | pure none
      let inst := mkApp5 (mkConst ``Grind.Ring.OfSemiring.instIsCharPQOfAddRightCancel [u])
        base (mkRawNatLit n) semiringInst addRightCancelInst baseCharInst
      pure (some (inst, n))
    let noZeroDivInst? ← do
      let some addRightCancelInst := addRightCancelInst? | pure none
      -- `getNoZeroDivInst?` synthesizes the `NatModule base` premise instead of using
      -- `Semiring.toNatModule`, so this query is shared with the one issued for the
      -- `IntModule.OfNatModule.Q base` envelope; the results are definitionally equal.
      let some noZeroDivInst ← getNoZeroDivInst? u base | pure none
      pure (some (mkApp4 (mkConst ``Grind.Ring.OfSemiring.instNoNatZeroDivisorsQOfAddRightCancel [u])
        base semiringInst addRightCancelInst noZeroDivInst))
    trace_goal[grind.ring] "NoNatZeroDivisors available: {noZeroDivInst?.isSome}"
    trace_goal[grind.ring] "PowIdentity available: false"
    let id := (← get').rings.size
    let ring : CommRing := {
      id, semiringId? := none, type, u, semiringInst := semiringInstQ, ringInst,
      commSemiringInst := commSemiringInstQ,
      commRingInst, charInst?, noZeroDivInst?, fieldInst? := none, powIdentityInst? := none,
    }
    modify' fun s => { s with rings := s.rings.push ring }
    return some id

  goCore? : GoalM (Option Nat) := do
    let u ← getDecLevel type
    let commRing := mkApp (mkConst ``Grind.CommRing [u]) type
    let some commRingInst ← synthInstance? commRing | return none
    let ringInst := mkApp2 (mkConst ``Grind.CommRing.toRing [u]) type commRingInst
    let semiringInst := mkApp2 (mkConst ``Grind.Ring.toSemiring [u]) type ringInst
    let commSemiringInst := mkApp2 (mkConst ``Grind.CommRing.toCommSemiring [u]) type semiringInst
    trace_goal[grind.ring] "new ring: {type}"
    let charInst? ← getIsCharInst? u type semiringInst
    let noZeroDivInst? ← getNoZeroDivInst? u type
    trace_goal[grind.ring] "NoNatZeroDivisors available: {noZeroDivInst?.isSome}"
    let fieldInst? ← synthInstance? <| mkApp (mkConst ``Grind.Field [u]) type
    let powIdentityInst? ← getPowIdentityInst? u type
    trace_goal[grind.ring] "PowIdentity available: {powIdentityInst?.isSome}"
    let semiringId? := none
    let id := (← get').rings.size
    let ring : CommRing := {
      id, semiringId?, type, u, semiringInst, ringInst, commSemiringInst,
      commRingInst, charInst?, noZeroDivInst?, fieldInst?, powIdentityInst?,
    }
    modify' fun s => { s with rings := s.rings.push ring }
    return some id

/--
Returns the ring id for the given type if there is a `Ring` instance for it.
This function is invoked only when `getCommRingId?` returns `none`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c27403ce66e22e760d6388fb2699c4a9a8cec5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
