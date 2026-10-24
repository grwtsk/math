# intervalRootsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:149256a4589a45eaac2b782779eeb821aa0646317783da8fe5f4b7b5fcc64273",
  "kind": "def",
  "lexical_name": "intervalRootsCore",
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
  "slug": "intervalrootscore--37d5a27c9a8f43e77d370726",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1500,
    "line": 1413,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37d5a27c9a8f43e77d370726ffba10cfea090e40f6f3afeaa695ad1d2482f4c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:149256a4589a45eaac2b782779eeb821aa0646317783da8fe5f4b7b5fcc64273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1413–1500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def intervalRootsCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  -- Normalize f = c to f - c = 0 form only if needed
  let goal ← getMainGoal
  let goalType ← goal.getType
  if ← needsRootNormalization goalType then
    try evalTactic (← `(tactic| conv => arg 1; ext x; arg 2; rw [← sub_eq_zero]))
    catch _ => pure ()
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- 1. Parse the goal
  let some (.existsRoot _varName interval func) ← parseRootExistsGoal goalType
    | let diagReport ← LeanCert.Tactic.Auto.mkDiagnosticReport "interval_roots" goalType "parse"
        (some m!"Expected form: ∃ x ∈ I, f(x) = 0\n\n\
                 The function f must be continuous on interval I.\n\
                 Uses intermediate value theorem to find roots.")
      throwError "interval_roots: Could not parse goal.\n\n{diagReport}"

  goal.withContext do
    let mut fromSetIcc := false
    let intervalExpr ←
      match ← tryConvertSetIcc interval with
      | some intervalRat =>
          fromSetIcc := true
          pure intervalRat
      | none =>
          let intervalTy ← inferType interval
          if intervalTy.isConstOf ``IntervalRat then
            pure interval
          else
            throwError "interval_roots: Only IntervalRat or literal Set.Icc intervals are supported"

    -- 2. Get AST (either from Expr.eval or by reifying)
    let ast ← getAstFromFunc func

    -- 3. Generate ExprSupportedCore proof
    let supportProof ← mkSupportedCoreProof ast

    -- 4. Generate ContinuousOn proof
    let contProof ← mkContinuousOnProof ast intervalExpr

    -- 5. Build config expression
    let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

    -- 6. Apply verify_sign_change theorem
    -- verify_sign_change : ExprSupportedCore e → ContinuousOn ... → checkSignChange e I cfg = true → ∃ x ∈ I, f(x) = 0
    let proof ← mkAppM ``LeanCert.Validity.RootFinding.verify_sign_change
      #[ast, supportProof, intervalExpr, cfgExpr, contProof]

    if fromSetIcc then
      let proofSyntax ← Term.exprToSyntax proof
      evalTactic (← `(tactic| refine (by
        have h := $proofSyntax (by native_decide)
        simpa [IntervalRat.mem_iff_mem_Icc, sub_eq_add_neg, sq, pow_two] using h)))
    else
      -- 7. Apply the proof - this leaves the certificate check as a goal
      let newGoals ← goal.apply proof
      setGoals newGoals

      -- 8. Solve remaining goals with native_decide
      for g in newGoals do
        setGoals [g]
        evalTactic (← `(tactic| native_decide))

/-- The interval_roots tactic.

Proves goals of the form `∃ x ∈ I, f(x) = 0` by:
1. Checking for a sign change at the interval endpoints using interval arithmetic
2. Applying the Intermediate Value Theorem

The tactic automatically:
- Reifies the function to a LeanCert AST
- Generates an `ExprSupportedCore` proof
- Generates a `ContinuousOn` proof (automatic for supported expressions)
- Verifies the sign change certificate using `native_decide`

**Usage:**
```lean
example : ∃ x ∈ Icc (0 : ℝ) 2, x^2 - 2 = 0 := by
  interval_roots
```

**Limitations:**
- Only works for expressions in `ExprSupportedCore` (no `log`, `inv`)
- Requires a sign change at the endpoints (IVT condition)
- If there's no sign change, the tactic will fail
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
