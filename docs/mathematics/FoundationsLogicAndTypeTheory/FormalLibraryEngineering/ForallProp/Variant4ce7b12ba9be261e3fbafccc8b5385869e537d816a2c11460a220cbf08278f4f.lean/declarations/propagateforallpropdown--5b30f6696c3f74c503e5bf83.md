# propagateForallPropDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69ce2a6f7d6394f20baa00dfd3addc3bf09774e4d7098d7f4fbdba4e3bfe1815",
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
  "slug": "propagateforallpropdown--5b30f6696c3f74c503e5bf83",
  "source": {
    "blob": "8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b30f6696c3f74c503e5bf835d0fff920329382a0cb30d3c29548ae6ee0cd1b0",
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

Occurrence: `declaration:69ce2a6f7d6394f20baa00dfd3addc3bf09774e4d7098d7f4fbdba4e3bfe1815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–177.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
