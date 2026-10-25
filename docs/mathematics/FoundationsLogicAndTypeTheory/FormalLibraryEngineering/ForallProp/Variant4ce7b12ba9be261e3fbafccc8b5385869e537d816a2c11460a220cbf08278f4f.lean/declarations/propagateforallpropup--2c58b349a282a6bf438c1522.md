# propagateForallPropUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bce3631de34a4c4517efca7f7afff99ffdfc15e23c0a47057d25201033e2f57e",
  "kind": "def",
  "lexical_name": "propagateForallPropUp",
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
  "slug": "propagateforallpropup--2c58b349a282a6bf438c1522",
  "source": {
    "blob": "8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c58b349a282a6bf438c1522020b923260f5d2780ad2c3c22f18c5de24eba69f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bce3631de34a4c4517efca7f7afff99ffdfc15e23c0a47057d25201033e2f57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateForallPropUp (e : Expr) : GoalM Unit := do
  let .forallE n p q bi := e | return ()
  trace_goal[grind.debug.forallPropagator] "{e}"
  if !q.hasLooseBVars then
    propagateImpliesUp p q
  else
    unless (← isEqTrue p) do return
    trace_goal[grind.debug.forallPropagator] "isEqTrue, {e}"
    let h₁ ← mkEqTrueProof p
    let qh₁ := q.instantiate1 (mkOfEqTrueCore p h₁)
    let r ← preprocess qh₁
    let q := mkLambda n bi p q
    let q' := r.expr
    internalize q' (← getGeneration e)
    trace_goal[grind.debug.forallPropagator] "q': {q'} for{indentExpr e}"
    let h₂ ← r.getProof
    let h := mkApp5 (mkConst ``Lean.Grind.forall_propagator) p q q' h₁ h₂
    pushEq e q' h
where
  propagateImpliesUp (a b : Expr) : GoalM Unit := do
    unless (← alreadyInternalized b) do return ()
    if (← isEqFalse a <&&> isProp b) then
      -- a = False → (a → b) = True
      pushEqTrue e <| mkApp3 (mkConst ``Grind.imp_eq_of_eq_false_left) a b (← mkEqFalseProof a)
    else if (← isEqTrue a <&&> isProp b) then
      -- a = True → (a → b) = b
      pushEq e b <| mkApp3 (mkConst ``Grind.imp_eq_of_eq_true_left) a b (← mkEqTrueProof a)
    else if (← isEqTrue b <&&> isProp a) then
      -- b = True → (a → b) = True
      pushEqTrue e <| mkApp3 (mkConst ``Grind.imp_eq_of_eq_true_right) a b (← mkEqTrueProof b)
    else if (← isEqFalse b <&&> isEqTrue e <&&> isProp a) then
      -- (a → b) = True → b = False → a = False
      pushEqFalse a <| mkApp4 (mkConst ``Grind.eq_false_of_imp_eq_true) a b (← mkEqTrueProof e) (← mkEqFalseProof b)

/-- Similar to `mkEMatchTheoremWithKind?`, but swallow any exceptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
