# propagateForallPropDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d958fef39029c666f867e421a0b8f293da6b86c0118cc3c2c7caee45036a129",
  "kind": "def",
  "lexical_name": "propagateForallPropDown",
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
  "slug": "propagateforallpropdown--7bfc6b9836a92e010df5c4eb",
  "source": {
    "blob": "14bb804b0ede7aac0ac190c76c5c11b5baa95a12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bfc6b9836a92e010df5c4eb6c173524b4a4ee69cf8b2291de70d19ef7d14aa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d958fef39029c666f867e421a0b8f293da6b86c0118cc3c2c7caee45036a129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def propagateForallPropDown (e : Expr) : GoalM Unit := do
  let .forallE n a b bi := e | return ()
  if (← isEqFalse e) then
    if b.hasLooseBVars || !(← isProp a) then
      let α := a
      let p := b
      -- `e` is of the form `∀ x : α, p x`
      -- Add fact `∃ x : α, ¬ p x`
      let u ← getLevel α
      let prop := mkApp2 (mkConst ``Exists [u]) α (mkLambda n bi α (mkNot p))
      let proof := mkApp3 (mkConst ``Grind.of_forall_eq_false [u]) α (mkLambda n bi α p) (← mkEqFalseProof e)
      addNewRawFact proof prop (← getGeneration e) (.forallProp e) .other
    else
      let h ← mkEqFalseProof e
      pushEqTrue a <| mkApp3 (mkConst ``Grind.eq_true_of_imp_eq_false) a b h
      pushEqFalse b <| mkApp3 (mkConst ``Grind.eq_false_of_imp_eq_false) a b h
  else if (← isEqTrue e) then
    if let some (e', h') ← eqResolution e then
      trace_goal[grind.eqResolution] "{e}, {e'}"
      let h := mkOfEqTrueCore e (← mkEqTrueProof e)
      let h' := mkApp h' h
      addNewRawFact h' e' (← getGeneration e) (.forallProp e) .other
    if b.hasLooseBVars then
      unless (← isProp a) do
        /-
        We used to waste a lot of time trying to process terms such as
        ```
        ∀ (h : i + 1 ≤ w), x.abs.getLsbD i = x.abs[i]
        ```
        as E-matching theorems. They are "dependent" implications, and should be handled
        by `propagateForallPropUp`.
        -/
        addLocalEMatchTheorems e
    else
      unless (← alreadyInternalized b) do return ()
      if (← isEqFalse b <&&> isProp a) then
      -- (a → b) = True → b = False → a = False
      pushEqFalse a <| mkApp4 (mkConst ``Grind.eq_false_of_imp_eq_true) a b (← mkEqTrueProof e) (← mkEqFalseProof b)

builtin_grind_propagator propagateExistsDown ↓Exists := fun e => do
  if (← isEqFalse e) then
    let_expr f@Exists α p := e | return ()
    let u := f.constLevels!
    let notP := mkApp (mkConst ``Not) (mkApp p (.bvar 0) |>.headBeta)
    let prop := mkForall `x .default α notP
    let proof := mkApp3 (mkConst ``forall_not_of_not_exists u) α p (mkOfEqFalseCore e (← mkEqFalseProof e))
    addNewRawFact proof prop (← getGeneration e) (.existsProp e) .other

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bb804b0ede7aac0ac190c76c5c11b5baa95a12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
