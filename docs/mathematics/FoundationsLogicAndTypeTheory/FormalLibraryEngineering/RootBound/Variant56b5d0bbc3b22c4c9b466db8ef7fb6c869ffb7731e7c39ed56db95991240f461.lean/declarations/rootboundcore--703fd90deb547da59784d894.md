# rootBoundCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7825a8d671e3ecc34fd83b6bdb061b0de8f30f4dd81ba349e39ef2cb0036da4a",
  "kind": "def",
  "lexical_name": "rootBoundCore",
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
  "slug": "rootboundcore--703fd90deb547da59784d894",
  "source": {
    "blob": "270288647d29ffb9d171de91c4ce37aa7faef5b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RootBound/Variant56b5d0bbc3b22c4c9b466db8ef7fb6c869ffb7731e7c39ed56db95991240f461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:703fd90deb547da59784d894a77a1f4a1519ecb8e5a5f087af95e0820fb9940a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RootBound/Variant56b5d0bbc3b22c4c9b466db8ef7fb6c869ffb7731e7c39ed56db95991240f461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7825a8d671e3ecc34fd83b6bdb061b0de8f30f4dd81ba349e39ef2cb0036da4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootBoundCore (taylorDepth : Nat) : TacticM Unit := do
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse the goal
  let some rootGoal ← parseRootGoal goalType
    | let diagReport ← mkDiagnosticReport "root_bound" goalType "parse"
        (some m!"Expected form: ∀ x ∈ I, f x ≠ 0\n\n\
                 The function f must be continuous and supported by LeanCert.\n\
                 The interval I must be Set.Icc or equivalent.")
      throwError "root_bound: Could not parse goal as a root goal.\n\n{diagReport}"

  match rootGoal with
  | .forallNeZero _name interval func =>
    proveForallNeZero goal interval func taylorDepth

where
  /-- Try to extract AST from an Expr.eval application, or reify if it's a raw expression -/
  getAst (func : Lean.Expr) : TacticM Lean.Expr := do
    lambdaTelescope func fun _vars body => do
      let fn := body.getAppFn
      if fn.isConstOf ``LeanCert.Core.Expr.eval then
        let args := body.getAppArgs
        if args.size ≥ 2 then
          return args[1]!
        else
          throwError m!"Unexpected Expr.eval application structure.\n\
                        Expected: Expr.eval env ast\n\
                        Got {args.size} arguments: {args.toList}"
      else
        reify func

  /-- Try to convert Set.Icc to IntervalRat for root_bound -/
  tryConvertSetIccForRootBound (interval : Lean.Expr) : MetaM (Option Lean.Expr) := do
    let fn := interval.getAppFn
    let args := interval.getAppArgs
    if fn.isConstOf ``Set.Icc && args.size >= 4 then
      let loExpr := args[2]!
      let hiExpr := args[3]!
      if let some lo ← extractRatFromReal loExpr then
        if let some hi ← extractRatFromReal hiExpr then
          let loRatExpr := toExpr lo
          let hiRatExpr := toExpr hi
          let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
          let leProof ← mkDecideProof leProofTy
          let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
          return some intervalRat
    return none

  /-- Prove ∀ x ∈ I, f x ≠ 0 using verify_no_root -/
  proveForallNeZero (goal : MVarId) (interval func : Lean.Expr)
      (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      -- 0. Try to convert Set.Icc to IntervalRat if needed
      let mut fromSetIcc := false
      let intervalExpr ←
        match ← tryConvertSetIccForRootBound interval with
        | some intervalRat =>
            fromSetIcc := true
            pure intervalRat
        | none =>
            let intervalTy ← inferType interval
            if intervalTy.isConstOf ``IntervalRat then
              pure interval
            else
              throwError "root_bound: Only IntervalRat or literal Set.Icc intervals are supported"

      -- 1. Get AST
      let ast ← getAst func

      -- 2. Generate ExprSupportedCore proof
      let supportProof ← mkSupportedCoreProof ast

      -- 3. Build config expression
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      -- 4. Apply verify_no_root theorem
      let proof ← mkAppM ``Validity.RootFinding.verify_no_root
        #[ast, supportProof, intervalExpr, cfgExpr]

      if fromSetIcc then
        -- Use simpa to bridge Set.Icc to IntervalRat
        let proofSyntax ← Term.exprToSyntax proof
        evalTactic (← `(tactic| refine (by
          have h := $proofSyntax (by native_decide)
          simpa [IntervalRat.mem_iff_mem_Icc] using h)))
      else
        -- 5. Apply the proof - this leaves the certificate check as a goal
        let newGoals ← goal.apply proof

        setGoals newGoals

        -- 6. Solve remaining goals with native_decide
        for g in newGoals do
          setGoals [g]
          evalTactic (← `(tactic| native_decide))

/-- The root_bound tactic.

    Automatically proves root-related properties using interval arithmetic.

    Usage:
    - `root_bound` - uses default Taylor depth of 10
    - `root_bound 20` - uses Taylor depth of 20

    Supports goals of the form:
    - `∀ x ∈ I, f x ≠ 0` (proves no root exists in interval)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RootBound/Variant56b5d0bbc3b22c4c9b466db8ef7fb6c869ffb7731e7c39ed56db95991240f461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RootBound/Variant56b5d0bbc3b22c4c9b466db8ef7fb6c869ffb7731e7c39ed56db95991240f461.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270288647d29ffb9d171de91c4ce37aa7faef5b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
