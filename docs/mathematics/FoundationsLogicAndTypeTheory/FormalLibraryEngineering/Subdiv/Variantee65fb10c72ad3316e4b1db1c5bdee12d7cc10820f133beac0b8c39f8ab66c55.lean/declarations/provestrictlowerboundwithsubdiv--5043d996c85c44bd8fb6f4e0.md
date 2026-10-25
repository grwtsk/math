# proveStrictLowerBoundWithSubdiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42ac9bf82ac01ff2ff4190ce548be07f211ed99458ab3f7318688f6e08183585",
  "kind": "def",
  "lexical_name": "proveStrictLowerBoundWithSubdiv",
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
  "slug": "provestrictlowerboundwithsubdiv--5043d996c85c44bd8fb6f4e0",
  "source": {
    "blob": "d6a6700a430de62391daa9ef13940fd0aacffecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 252,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5043d996c85c44bd8fb6f4e0b55ac52fa38904c4a6a632a5d3333588dc206e48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42ac9bf82ac01ff2ff4190ce548be07f211ed99458ab3f7318688f6e08183585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def proveStrictLowerBoundWithSubdiv
    (ast supportProof loRatExpr hiRatExpr leProof boundRat cfgExpr : Lean.Expr)
    (taylorDepth maxSubdiv : Nat) : TacticM (Option Lean.Expr) := do
  let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
  let checkExpr ← mkAppM ``LeanCert.Validity.checkStrictLowerBound
    #[ast, intervalRat, boundRat, cfgExpr]

  if ← certCheckSucceeds checkExpr then
    trace[interval_decide] "Direct strict lower bound check succeeded"
    let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
    let certGoal ← mkFreshExprMVar certTy
    let certGoalId := certGoal.mvarId!
    setGoals [certGoalId]
    evalTactic (← `(tactic| native_decide))
    let certProof := certGoal
    let proof ← mkAppM ``Validity.verify_strict_lower_bound_Icc_core
      #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat, cfgExpr, certProof]
    return some proof

  if maxSubdiv == 0 then
    trace[interval_decide] "Subdivision exhausted - giving up"
    return none

  trace[interval_decide] "Direct strict lower bound check failed, trying subdivision (depth {maxSubdiv})"

  let some lo ← getLiteral? loRatExpr
    | trace[interval_decide] "Could not extract lo literal"; return none
  let some hi ← getLiteral? hiRatExpr
    | trace[interval_decide] "Could not extract hi literal"; return none

  let mid : ℚ := (lo + hi) / 2
  let midExpr := toExpr mid
  let loLeMidExpr ← mkDecideProof (← mkAppM ``LE.le #[loRatExpr, midExpr])
  let midLeHiExpr ← mkDecideProof (← mkAppM ``LE.le #[midExpr, hiRatExpr])

  let leftProof ← proveStrictLowerBoundWithSubdiv ast supportProof loRatExpr midExpr loLeMidExpr
    boundRat cfgExpr taylorDepth (maxSubdiv - 1)
  let some _ := leftProof
    | trace[interval_decide] "Left half failed"; return none

  let rightProof ← proveStrictLowerBoundWithSubdiv ast supportProof midExpr hiRatExpr midLeHiExpr
    boundRat cfgExpr taylorDepth (maxSubdiv - 1)
  let some _ := rightProof
    | trace[interval_decide] "Right half failed"; return none

  let leftInterval ← mkAppM ``IntervalRat.mk #[loRatExpr, midExpr, loLeMidExpr]
  let rightInterval ← mkAppM ``IntervalRat.mk #[midExpr, hiRatExpr, midLeHiExpr]

  let leftCheckExpr ← mkAppM ``LeanCert.Validity.checkStrictLowerBound
    #[ast, leftInterval, boundRat, cfgExpr]
  let rightCheckExpr ← mkAppM ``LeanCert.Validity.checkStrictLowerBound
    #[ast, rightInterval, boundRat, cfgExpr]

  let leftCertTy ← mkAppM ``Eq #[leftCheckExpr, mkConst ``Bool.true]
  let leftCertGoal ← mkFreshExprMVar leftCertTy
  setGoals [leftCertGoal.mvarId!]
  evalTactic (← `(tactic| native_decide))
  let leftCertProof := leftCertGoal

  let rightCertTy ← mkAppM ``Eq #[rightCheckExpr, mkConst ``Bool.true]
  let rightCertGoal ← mkFreshExprMVar rightCertTy
  setGoals [rightCertGoal.mvarId!]
  evalTactic (← `(tactic| native_decide))
  let rightCertProof := rightCertGoal

  trace[interval_decide] "Subdivision succeeded on both halves - combining strict lower bound proofs"

  let proof ← mkAppM ``Validity.verify_strict_lower_bound_general_split
    #[ast, supportProof, loRatExpr, midExpr, hiRatExpr,
      loLeMidExpr, midLeHiExpr, leProof, boundRat, cfgExpr,
      leftCertProof, rightCertProof]

  return some proof

/-- Prove ∀ x ∈ I, f x ≤ c using subdivision as fallback -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variantee65fb10c72ad3316e4b1db1c5bdee12d7cc10820f133beac0b8c39f8ab66c55.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a6700a430de62391daa9ef13940fd0aacffecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
