# toRat?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c41ffee7986c83d3acd6950431e451687b4d4e227712b97263c2fe636be9a806",
  "kind": "def",
  "lexical_name": "toRat?",
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
  "slug": "torat--7c94239eadb30a2c4ecd7200",
  "source": {
    "blob": "f2f8e5cee09e7accb2fb735894d06a146d256603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Numeral/Variant927d46c784471534b3faaf997acb7e4fa5677518c8160b9c2e01fd48025e1b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c94239eadb30a2c4ecd7200ee997e1693505632971f4679012f1e59d11dceb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Numeral/Variant927d46c784471534b3faaf997acb7e4fa5677518c8160b9c2e01fd48025e1b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c41ffee7986c83d3acd6950431e451687b4d4e227712b97263c2fe636be9a806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toRat? (e : Lean.Expr) : MetaM (Option ℚ) := do
  -- Fast path: raw Nat literal
  if let some n := e.rawNatLit? then
    return some (n : ℚ)

  -- Match before reduction
  if let some q ← tryMatchNumeric e then
    return some q

  -- Match after weak-head reduction
  let e ← whnf e
  if let some q ← tryMatchNumeric e then
    return some q

  return none

where
  /-- Try to match a numeric expression directly. -/
  tryMatchNumeric (e : Lean.Expr) : MetaM (Option ℚ) := do
    match_expr e with
    -- OfNat.ofNat α n inst
    | OfNat.ofNat _ n _ =>
      if let some k := n.rawNatLit? then
        return some (k : ℚ)
      if let some k := n.nat? then
        return some (k : ℚ)
      toRat? n

    -- Nat.cast / NatCast.natCast
    | Nat.cast _ n =>
      toRat? n
    | NatCast.natCast _ n =>
      toRat? n

    -- Int.cast / IntCast.intCast
    | Int.cast _ z =>
      toRat? z
    | IntCast.intCast _ z =>
      toRat? z

    -- Neg.neg α inst x
    | Neg.neg _ _ x =>
      if let some q ← toRat? x then
        return some (-q)
      return none

    -- HSub.hSub a b
    | HSub.hSub _ _ _ _ a b =>
      match ← toRat? a, ← toRat? b with
      | some qa, some qb => return some (qa - qb)
      | _, _ => return none

    -- HDiv.hDiv n d
    | HDiv.hDiv _ _ _ _ n d =>
      match ← toRat? n, ← toRat? d with
      | some qn, some qd =>
        if qd = 0 then
          return none
        return some (qn / qd)
      | _, _ => return none

    -- HMul.hMul a b
    | HMul.hMul _ _ _ _ a b =>
      match ← toRat? a, ← toRat? b with
      | some qa, some qb => return some (qa * qb)
      | _, _ => return none

    -- HAdd.hAdd a b
    | HAdd.hAdd _ _ _ _ a b =>
      match ← toRat? a, ← toRat? b with
      | some qa, some qb => return some (qa + qb)
      | _, _ => return none

    -- Int.ofNat n
    | Int.ofNat n =>
      if let some k := n.rawNatLit? then
        return some (k : ℚ)
      toRat? n

    -- Int.negSucc n = -(n+1)
    | Int.negSucc n =>
      if let some k := n.rawNatLit? then
        return some (-(k + 1 : ℚ))
      return none

    -- Rat.mk' num den ...
    | Rat.mk' num den _ _ =>
      match ← toRat? num, ← toRat? den with
      | some qnum, some qden =>
        if qden = 0 then
          return none
        return some (qnum / qden)
      | _, _ => return none

    -- Inv.inv x = 1/x
    | Inv.inv _ _ x =>
      if let some q ← toRat? x then
        if q = 0 then
          return none
        return some ((1 : ℚ) / q)
      return none

    -- OfScientific.ofScientific mantissa exponentSign decimalExponent
    | OfScientific.ofScientific _ _ mantissa exponentSign decimalExponent =>
      let some m := mantissa.rawNatLit?
        | return none
      let some exp := decimalExponent.rawNatLit?
        | return none
      let isNegExp := exponentSign.constName? == some ``Bool.true
      let base10 : ℚ := (10 : ℚ) ^ exp
      if isNegExp then
        return some ((m : ℚ) / base10)
      return some ((m : ℚ) * base10)

    | _ =>
      let fn := e.getAppFn
      let args := e.getAppArgs
      -- Handle cast wrappers. We accept only cast-related projections/constants.
      -- This avoids accidentally classifying non-numeral projections
      -- (e.g. `x ^ (1/3)` reducing to a projection-headed term) as constants.
      match fn with
      | .proj s _ _ =>
        let sName := toString s
        if args.size > 0 &&
            (sName.endsWith "NatCast" || sName.endsWith "IntCast" || sName.endsWith "RatCast") then
          toRat? args.back!
        else
          return none
      | .const n _ =>
        let s := toString n
        if args.size > 0 &&
            (s.endsWith "instNatCast.1" || s.endsWith "instIntCast.1" || s.endsWith "instRatCast.1") then
          toRat? args.back!
        else
          return none
      | _ => return none

end LeanCert.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Numeral/Variant927d46c784471534b3faaf997acb7e4fa5677518c8160b9c2e01fd48025e1b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Numeral/Variant927d46c784471534b3faaf997acb7e4fa5677518c8160b9c2e01fd48025e1b83.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2f8e5cee09e7accb2fb735894d06a146d256603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
