# tryConvertSetIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d059413a5ded036f0f752adcf7790b7f587a760b81684dd22fd9bf10a4e80edf",
  "kind": "def",
  "lexical_name": "tryConvertSetIcc",
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
  "slug": "tryconvertseticc--6062f1a0c797eb6a8851fb3d",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 308,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6062f1a0c797eb6a8851fb3d7ff6866539abe632caa3f61f4caaac4693091675",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d059413a5ded036f0f752adcf7790b7f587a760b81684dd22fd9bf10a4e80edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryConvertSetIcc (interval : Lean.Expr) : MetaM (Option Lean.Expr) := do
  let getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let fn := e.getAppFn
    let args := e.getAppArgs
    if fn.isConstOf ``LE.le && args.size >= 4 then
      return some (args[2]!, args[3]!)
    return none

  let extractLowerBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq b x then
        return some a
    return none

  let extractUpperBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq a x then
        return some b
    return none

  let parseSetIccBounds (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let fn := e.getAppFn
    let args := e.getAppArgs
    if fn.isConstOf ``Set.Icc && args.size >= 4 then
      return some (args[2]!, args[3]!)
    return none

  let parseSetIccLambda (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    match e with
    | Lean.Expr.lam name ty body _ =>
      withLocalDeclD name ty fun x => do
        let bodyInst := body.instantiate1 x
        let fn := bodyInst.getAppFn
        let args := bodyInst.getAppArgs
        if fn.isConstOf ``And && args.size >= 2 then
          let left := args[0]!
          let right := args[1]!
          if let some lo ← extractLowerBound left x then
            if let some hi ← extractUpperBound right x then
              return some (lo, hi)
          if let some lo ← extractLowerBound right x then
            if let some hi ← extractUpperBound left x then
              return some (lo, hi)
        return none
    | _ => return none

  let parseBounds (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    if let some bounds ← parseSetIccBounds e then
      return some bounds
    parseSetIccLambda e

  let mkIntervalRatFromBounds (loExpr hiExpr : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some lo ← extractRatFromReal loExpr then
      if let some hi ← extractRatFromReal hiExpr then
        let loRatExpr := toExpr lo
        let hiRatExpr := toExpr hi
        let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
        let leProof ← mkDecideProof leProofTy
        let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
        return some intervalRat
    return none

  if let some (loExpr, hiExpr) ← parseBounds interval then
    if let some intervalRat ← mkIntervalRatFromBounds loExpr hiExpr then
      return some intervalRat
  let intervalWhnf ← withTransparency TransparencyMode.all <| whnf interval
  if intervalWhnf == interval then
    return none
  if let some (loExpr, hiExpr) ← parseBounds intervalWhnf then
    return ← mkIntervalRatFromBounds loExpr hiExpr
  return none

/-! ## Minimization Tactic -/

/-- The interval_minimize tactic implementation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
