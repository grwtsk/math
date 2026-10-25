# tryAutoCongrTheorem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d5f9bb55f39bf2613a69a4133eaab6b3233b64701d90324ffb74b9ec9ed4c4f",
  "kind": "def",
  "lexical_name": "tryAutoCongrTheorem?",
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
  "slug": "tryautocongrtheorem--b9973a66159f267d13caecfe",
  "source": {
    "blob": "478b7f82f24f885dac2cb1113f049505ee5d7b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 807,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9973a66159f267d13caecfe0e497a9687b464f5b6e7fe7c27df7544b2f9a7cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d5f9bb55f39bf2613a69a4133eaab6b3233b64701d90324ffb74b9ec9ed4c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def tryAutoCongrTheorem? (e : Expr) : SimpM (Option Result) := do
  let f := e.getAppFn
  -- TODO: cache
  let some cgrThm ← mkCongrSimp? f | return none
  if cgrThm.argKinds.size != e.getAppNumArgs then return none
  let args := e.getAppArgs
  let infos := (← getFunInfoNArgs f args.size).paramInfo
  let config ← getConfig
  let mut simplified := false
  let mut hasProof   := false
  let mut hasCast    := false
  let mut argsNew    := #[]
  let mut argResults := #[]
  let mut i          := 0 -- index at args
  for arg in args, kind in cgrThm.argKinds do
    if h : config.ground ∧ i < infos.size then
      if (infos[i]'h.2).isInstance then
        -- Do not visit instance implicit arguments when `ground := true`
        -- See comment at `congrArgs`
        argsNew := argsNew.push arg
        i := i + 1
        continue
    match kind with
    | CongrArgKind.fixed =>
      let argNew ← dsimp arg
      if arg != argNew then
        simplified := true
      argsNew := argsNew.push argNew
    | CongrArgKind.cast  => hasCast := true; argsNew := argsNew.push arg
    | CongrArgKind.subsingletonInst => argsNew := argsNew.push arg
    | CongrArgKind.eq =>
      let argResult ← simp arg
      argResults := argResults.push argResult
      argsNew    := argsNew.push argResult.expr
      if argResult.proof?.isSome then hasProof := true
      if arg != argResult.expr then simplified := true
    | _ => unreachable!
    i := i + 1
  if !simplified then return some { expr := e }
  /-
    If `hasProof` is false, we used to return `mkAppN f argsNew` with `proof? := none`.
    However, this created a regression when we started using `proof? := none` for `rfl` theorems.
    Consider the following goal
    ```
    m n : Nat
    a : Fin n
    h₁ : m < n
    h₂ : Nat.pred (Nat.succ m) < n
    ⊢ Fin.succ (Fin.mk m h₁) = Fin.succ (Fin.mk m.succ.pred h₂)
    ```
    The term `m.succ.pred` is simplified to `m` using a `Nat.pred_succ` which is a `rfl` theorem.
    The auto generated theorem for `Fin.mk` has casts and if used here at `Fin.mk m.succ.pred h₂`,
    it produces the term `Fin.mk m (id (Eq.refl m) ▸ h₂)`. The key property here is that the
    proof `(id (Eq.refl m) ▸ h₂)` has type `m < n`. If we had just returned `mkAppN f argsNew`,
    the resulting term would be `Fin.mk m h₂` which is type correct, but later we would not be
    able to apply `eq_self` to
    ```lean
    Fin.succ (Fin.mk m h₁) = Fin.succ (Fin.mk m h₂)
    ```
    because we would not be able to establish that `m < n` and `Nat.pred (Nat.succ m) < n` are definitionally
    equal using `TransparencyMode.reducible` (`Nat.pred` is not reducible).
    Thus, we decided to return here only if the auto generated congruence theorem does not introduce casts.
  -/
  if !hasProof && !hasCast then
    return some { expr := mkAppN f argsNew }
  let mut proof := cgrThm.proof
  let mut type  := cgrThm.type
  let mut j := 0 -- index at argResults
  let mut subst := #[]
  for arg in args, argNew in argsNew, kind in cgrThm.argKinds do
    proof := mkApp proof arg
    type := type.bindingBody!
    match kind with
    | CongrArgKind.fixed =>
      /-
      We use `argNew` here because `dsimp` may have simplified the fixed argument.
      See issue #4339
      -/
      subst := subst.push argNew
    | CongrArgKind.cast  =>
      subst := subst.push arg
    | CongrArgKind.subsingletonInst =>
      subst := subst.push arg
      let clsNew := type.bindingDomain!.instantiateRev subst
      let instNew ← if (← isDefEq (← inferType arg) clsNew) then
        pure arg
      else
        match (← trySynthInstance clsNew) with
        | LOption.some val => pure val
        | _ =>
          trace[Meta.Tactic.simp.congr] "failed to synthesize instance{indentExpr clsNew}"
          return none
      proof := mkApp proof instNew
      subst := subst.push instNew
      type := type.bindingBody!
    | CongrArgKind.eq =>
      subst := subst.push arg
      let argResult := argResults[j]!
      let argProof ← argResult.getProof' arg
      j := j + 1
      proof := mkApp2 proof argResult.expr argProof
      subst := subst.push argResult.expr |>.push argProof
      type := type.bindingBody!.bindingBody!
    | _ => unreachable!
  let some (_, _, rhs) := type.instantiateRev subst |>.eq? | unreachable!
  let rhs ← if hasCast then removeUnnecessaryCasts rhs else pure rhs
  if hasProof then
    return some { expr := rhs, proof? := proof }
  else
    /- See comment above. This is reachable if `hasCast == true`. The `rhs` is not structurally equal to `mkAppN f argsNew` -/
    return some { expr := rhs }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478b7f82f24f885dac2cb1113f049505ee5d7b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
