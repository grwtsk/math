# propagatePending

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3263d9bc92484e58567bcb51576c066100be54c00a3082ec981c0ccc7f7293f5",
  "kind": "def",
  "lexical_name": "propagatePending",
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
  "slug": "propagatepending--1fc331cf7bce3f6a54390e2d",
  "source": {
    "blob": "6fa365256ec5393e9e5fb507f4d59c842f974b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fc331cf7bce3f6a54390e2d457888d7b207152daafc93363606ce00fc2f58d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3263d9bc92484e58567bcb51576c066100be54c00a3082ec981c0ccc7f7293f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagatePending : OrderM Unit := do
  let todo := (← getStruct).propagate
  modifyStruct fun s => { s with propagate := [] }
  for p in todo do
    match p with
    | .eqTrue c e u v k k' => propagateEqTrue c e u v k k'
    | .eqFalse c e u v k k' => propagateEqFalse c e u v k k'
    | .eq u v =>
      let ue ← getExpr u
      let ve ← getExpr v
      if (← alreadyInternalized ue <&&> alreadyInternalized ve) then
        unless (← isEqv ue ve) do
          let huv ← mkProofForPath u v
          let hvu ← mkProofForPath v u
          let h ← mkEqProofOfLeOfLe ue ve huv hvu
          pushEq ue ve h
      -- Checks whether `ue` and `ve` are auxiliary terms
      let some (ue', h₁) ← getOriginal? ue | continue
      let some (ve', h₂) ← getOriginal? ve | continue
      if (← alreadyInternalized ue' <&&> alreadyInternalized ve') then
      unless (← isEqv ue' ve') do
        let huv ← mkProofForPath u v
        let hvu ← mkProofForPath v u
        let h ← mkEqProofOfLeOfLe ue ve huv hvu
        /-
        We have
        - `h₁ : ↑ue' = ue`
        - `h₂ : ↑ve' = ve`
        - `h : ue = ve`
        **Note**: We currently only support `Nat` originals. Thus `↑a` is actually
        `NatCast.natCast a`. The lemma `nat_eq` is specialized to `Int`, so we
        only invoke it when the cast destination is `Int`. For other types (e.g.
        `Rat`), `pushEq ue ve h` above is sufficient and `grind` core can derive
        the `Nat` equality via `norm_cast`/cast injectivity if needed.
        -/
        if (← inferType ue) == Int.mkType then
          pushEq ue' ve' <| mkApp7 (mkConst ``Grind.Order.nat_eq) ue' ve' ue ve h₁ h₂ h
where
  /--
  If `e` is an auxiliary term used to represent some term `a`, returns
  `some (a, h)` s.t. `h : ↑a = e`
  -/
  getOriginal? (e : Expr) : GoalM (Option (Expr × Expr)) := do
    return (← get').termMapInv.find? { expr := e }

/--
Returns `true` if `e` is already `True` in the `grind` core.
Recall that `e` may be an auxiliary term created for a term `e'` (see `cnstrsMapInv`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa365256ec5393e9e5fb507f4d59c842f974b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
