# toInt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d89f3e57f465b30a3b3892b0b5d5e3785f4866f80475caae684ca2b1634316e",
  "kind": "def",
  "lexical_name": "toInt'",
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
  "slug": "toint--325bbe41bdd9499620b6c1dc",
  "source": {
    "blob": "572eea9716e2eb5b559cd26661b8263908691dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 393,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:325bbe41bdd9499620b6c1dc683886a9e0f364ddc4b1e1348f11cb50ad5a639f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d89f3e57f465b30a3b3892b0b5d5e3785f4866f80475caae684ca2b1634316e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def toInt' (e : Expr) : ToIntM (Expr × Expr) := do
  match_expr e with
  | HAdd.hAdd α β γ _ a b =>
    unless isHomo α β γ do return (← mkToIntVar e)
    toIntBin (← getAddThms) mkIntAdd a b
  | HMul.hMul α β γ _ a b =>
    unless isHomo α β γ do return (← mkToIntVar e)
    toIntBin (← getMulThms) mkIntMul a b
  | HDiv.hDiv α β γ _ a b =>
    unless isHomo α β γ do return (← mkToIntVar e)
    processDivMod (isDiv := true) a b
  | HMod.hMod α β γ _ a b =>
    unless isHomo α β γ do return (← mkToIntVar e)
    processDivMod (isDiv := false) a b
  | HSub.hSub α β γ _ a b =>
    unless isHomo α β γ do return (← mkToIntVar e)
    processSub a b
  | Neg.neg _ _ a =>
    processNeg a
  | HPow.hPow α β γ _ a b =>
    unless isSameExpr α γ && β.isConstOf ``Nat do return (← mkToIntVar e)
    processPow a b
  | Zero.zero _ _ =>
    let some thm ← getZeroThm? | mkToIntVar e
    return (mkIntLit 0, thm)
  | OfNat.ofNat _ n inst =>
    let some n ← getNatValue? n | mkToIntVar e
    if n == 0 then
      if let some (k, neZeroInst) ← isFinInstOfNat? inst then
        let h := mkApp2 (mkConst ``Lean.Grind.ofNat_FinZero) k neZeroInst
        return (mkIntLit 0, h)
    toIntOfNat e n
  | BitVec.ofNat _ n =>
    let some n ← getNatValue? n | mkToIntVar e
    toIntOfNat e n
  | _ => mkToIntVar e
where
  toIntOfNat (e : Expr) (n : Nat) : ToIntM (Expr × Expr) := do
    let some thm ← getOfNatThm? | mkToIntVar e
    let h := mkApp thm (toExpr n)
    if (← hasNumericLoHi) then
      let r ← (← getInfo).range.wrap (mkIntLit n)
      return (r, h)
    else
      expandWrap e (mkIntLit n) h

  toIntBin (toIntOp : ToIntThms) (mkBinOp : Expr → Expr → Expr) (a b : Expr) : ToIntM (Expr × Expr) := do
    unless toIntOp.c?.isSome do return (← mkToIntVar e)
    let (a', h₁) ← toInt' a
    let (b', h₂) ← toInt' b
    toIntOp.mkResult mkBinOp a b a' b' h₁ h₂

  toIntAndExpandWrap (a : Expr) : ToIntM (Expr × Expr) := do
    let (a', h₁) ← toInt' a
    expandIfWrap a a' h₁

  processDivMod (isDiv : Bool) (a b : Expr) : ToIntM (Expr × Expr) := do
    let some thm ← if isDiv then getDivThm? else getModThm?
      | return (← mkToIntVar e)
    let (a', h₁) ← toIntAndExpandWrap a
    let (b', h₂) ← toIntAndExpandWrap b
    let r := if isDiv then mkIntDiv a' b' else mkIntMod a' b'
    let h := mkApp6 thm a b a' b' h₁ h₂
    return (r, h)

  processSub (a b : Expr) : ToIntM (Expr × Expr) := do
    let some thm ← getSubThm? | mkToIntVar e
    let (a', h₁) ← toIntAndExpandWrap a
    let (b', h₂) ← toIntAndExpandWrap b
    let r ← mkWrap (mkIntSub a' b')
    let h := mkApp6 thm a b a' b' h₁ h₂
    return (r, h)

  processNeg (a : Expr) : ToIntM (Expr × Expr) := do
    let some thm ← getNegThm? | mkToIntVar e
    let (a', h₁) ← toIntAndExpandWrap a
    let r ← mkWrap (mkIntNeg a')
    let h := mkApp3 thm a a' h₁
    return (r, h)

  processPow (a b : Expr) : ToIntM (Expr × Expr) := do
    let some thm ← getPowThm? | mkToIntVar e
    let (a', h₁) ← toIntAndExpandWrap a
    let r ← mkWrap (mkIntPowNat a' b)
    let h := mkApp4 thm a b a' h₁
    return (r, h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variant18a52d373336d5ce0d6030b75e4ed83f236f9db8c37466dc7fe1bf5a60955836.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `572eea9716e2eb5b559cd26661b8263908691dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
