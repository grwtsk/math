# coerceMonadLift?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28f34bce3af23ad1d39c24a443d95a2b19136ecb840832666b4e061ead04daa9",
  "kind": "def",
  "lexical_name": "coerceMonadLift?",
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
  "slug": "coercemonadlift--87c5684ea4b9f2e185722f63",
  "source": {
    "blob": "c7a2b06c76242f0801d3039092f2687477984745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87c5684ea4b9f2e185722f6358801c003960f25745c7f0a9a6f8b58ecbee6693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28f34bce3af23ad1d39c24a443d95a2b19136ecb840832666b4e061ead04daa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coerceMonadLift? (e expectedType : Expr) : MetaM (Option Expr) := do
  let expectedType ← instantiateMVars expectedType
  let eType ← instantiateMVars (← inferType e)
  let some (n, β) ← isTypeApp? expectedType | return none
  let some (m, α) ← isTypeApp? eType | return none
  -- Need to save and restore the state in case `m` and `n` are defeq but not monads to prevent this procedure from having side effects.
  let saved ← saveState
  if (← isDefEq m n) then
    let some monadInst ← isMonad? n | restoreState saved; return none
    try
      let (result, _) ← expandCoe (← mkAppOptM ``Lean.Internal.coeM #[m, α, β, none, monadInst, e])
      pure result
    catch _ => restoreState saved; return none
  else if autoLift.get (← getOptions) then
    try
      -- Construct lift from `m` to `n`
      -- Note: we cannot use mkAppM here because mkAppM does not assign universe metavariables,
      -- but we need to make sure that the domains of `m` and `n` have the same level.
      let .forallE _ (.sort um₁) (.sort um₂) _ ← whnf (← inferType m) | return none
      let .forallE _ (.sort un₁) (.sort un₂) _ ← whnf (← inferType n) | return none
      let u ← decLevel um₁
      let .true ← isLevelDefEq u (← decLevel un₁) | return none
      let v ← decLevel um₂
      let w ← decLevel un₂
      let monadLiftType := mkAppN (.const ``MonadLiftT [u, v, w]) #[m, n]
      let .some monadLiftVal ← trySynthInstance monadLiftType | return none
      let u_1 ← getDecLevel α
      let u_2 ← getDecLevel eType
      let u_3 ← getDecLevel expectedType
      let eNew := mkAppN (Lean.mkConst ``liftM [u_1, u_2, u_3]) #[m, n, monadLiftVal, α, e]
      let eNewType ← inferType eNew
      if (← isDefEq expectedType eNewType) then
        return some eNew -- approach 2 worked
      else
        let some monadInst ← isMonad? n | return none
        let u ← getLevel α
        let v ← getLevel β
        let coeTInstType := Lean.mkForall `a BinderInfo.default α <| mkAppN (mkConst ``CoeT [u, v]) #[α, mkBVar 0, β]
        let .some coeTInstVal ← trySynthInstance coeTInstType | return none
        let (eNew, _) ← expandCoe (mkAppN (Lean.mkConst ``Lean.Internal.liftCoeM [u_1, u_2, u_3]) #[m, n, α, β, monadLiftVal, coeTInstVal, monadInst, e])
        let eNewType ← inferType eNew
        unless (← isDefEq expectedType eNewType) do return none
        return some eNew -- approach 3 worked
    catch _ =>
      /- If `m` is not a monad, then we try to use `tryCoe?`. -/
      return none
  else
    return none

/--
Coerces `expr` to the type `expectedType`.
Returns `.some (coerced, appliedCoeDecls)` on successful coercion,
`.none` if the expression cannot by coerced to that type,
or `.undef` if we need more metavariable assignments.

`appliedCoeDecls` is a list of names representing the names of the `Coe` instances that were
applied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7a2b06c76242f0801d3039092f2687477984745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
