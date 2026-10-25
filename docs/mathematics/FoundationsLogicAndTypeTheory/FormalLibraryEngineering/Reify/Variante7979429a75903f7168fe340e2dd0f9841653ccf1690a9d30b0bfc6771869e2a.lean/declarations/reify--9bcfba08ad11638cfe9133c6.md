# reify?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68fcf3a08878adc616d9366ca86960db140dfa7e3e42df45771e347eb6589caa",
  "kind": "def",
  "lexical_name": "reify?",
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
  "slug": "reify--9bcfba08ad11638cfe9133c6",
  "source": {
    "blob": "c750150e6c8ba437d4582e6a45c365bba1bafed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bcfba08ad11638cfe9133c6837646f24134594800aef1b7bbc1f1feee9ce363",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68fcf3a08878adc616d9366ca86960db140dfa7e3e42df45771e347eb6589caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reify? (e : Expr) (skipVar : Bool) (generation : Nat := 0) : LinearM (Option LinExpr) := do
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isAddInst (← getStruct) i then return some (.add (← go a) (← go b)) else asTopVar e
  | HSub.hSub _ _ _ i a b =>
    if isSubInst (← getStruct) i then return some (.sub (← go a) (← go b)) else asTopVar e
  | HSMul.hSMul _ _ _ i a b =>
    let some r ← processSMul i a b | asTopVar e
    return some r
  | Neg.neg _ i a =>
    if isNegInst (← getStruct) i then return some (.neg (← go a)) else asTopVar e
  | Zero.zero _ i =>
    if isZeroInst (← getStruct) i then return some .zero else asTopVar e
  | OfNat.ofNat _ _ _ =>
    if (← isOfNatZero e) then return some .zero else asTopVar e
  | NatCast.natCast _ _ a =>
    if (← getStruct).orderedRingInst?.isSome then
      assertNatCastNonneg a
    toTopVar e
  | _ => toTopVar e
where
  toVar (e : Expr) : LinearM LinExpr := do
    if (← alreadyInternalized e) then
      return .var (← mkVar e)
    else
      internalize e generation
      return .var (← mkVar e)
  asVar (e : Expr) : LinearM LinExpr := do
    reportInstIssue e
    toVar e
  toTopVar (e : Expr) : LinearM (Option LinExpr) := do
    if skipVar then
      return none
    else
      return some (← toVar e)
  asTopVar (e : Expr) : LinearM (Option LinExpr) := do
    reportInstIssue e
    if skipVar then
      return none
    else
      return some (← asVar e)
  isOfNatZero (e : Expr) : LinearM Bool := do
    isDefEqD e (← getStruct).ofNatZero
  processSMul (i a b : Expr) : LinearM (Option LinExpr) := do
    if isSMulIntInst (← getStruct) i then
      let some k ← getIntValue? a | return none
      return some (.intMul k (← go b))
    else if isSMulNatInst (← getStruct) i then
      let some k ← getNatValue? a | return none
      return some (.natMul k (← go b))
    return none
  go (e : Expr) : LinearM LinExpr := do
    match_expr e with
    | HAdd.hAdd _ _ _ i a b =>
      if isAddInst (← getStruct) i then return .add (← go a) (← go b) else asVar e
    | HSub.hSub _ _ _ i a b =>
      if isSubInst (← getStruct) i then return .sub (← go a) (← go b) else asVar e
    | HSMul.hSMul _ _ _ i a b =>
      let some r ← processSMul i a b | asVar e
      return r
    | Neg.neg _ i a =>
      if isNegInst (← getStruct) i then return .neg (← go a) else asVar e
    | Zero.zero _ i =>
      if isZeroInst (← getStruct) i then return .zero else asVar e
    | OfNat.ofNat _ _ _ =>
      if (← isOfNatZero e) then return .zero else toVar e
    | NatCast.natCast _ _ a =>
      if (← getStruct).orderedRingInst?.isSome then
        assertNatCastNonneg a
      toVar e
    | _ => toVar e

end  Lean.Meta.Grind.Arith.Linear
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750150e6c8ba437d4582e6a45c365bba1bafed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
