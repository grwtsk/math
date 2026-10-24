# parseArgminGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fa634820dc88c86eb293a7a82fccf8fe65693c0702644a670f4444cc4c95dc9",
  "kind": "def",
  "lexical_name": "parseArgminGoal",
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
  "slug": "parseargmingoal--813833dbb1a86a90dcd5003a",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 622,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:813833dbb1a86a90dcd5003a8034aa8abef29ac7bf9bc6b323051648cea04903",
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

Occurrence: `declaration:0fa634820dc88c86eb293a7a82fccf8fe65693c0702644a670f4444cc4c95dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseArgminGoal (goal : Lean.Expr) : MetaM (Option ArgminGoal) := do
  let goal ← whnf goal
  -- Goal: ∃ x, x ∈ I ∧ ∀ y ∈ I, f(x) ≤ f(y)
  match_expr goal with
  | Exists _ body =>
    if let .lam name ty innerBody _ := body then
      withLocalDeclD name ty fun x => do
        let bodyInst := innerBody.instantiate1 x
        let bodyInst ← whnf bodyInst
        -- bodyInst should be x ∈ I ∧ ∀ y ∈ I, f(x) ≤ f(y)
        match_expr bodyInst with
        | And memExpr forallExpr =>
          -- Extract interval from membership
          let interval? ← extractIntervalExpr memExpr x
          let some intervalExpr := interval? | return none
          -- Check if forallExpr is ∀ y ∈ I, f(x) ≤ f(y)
          let forallExpr ← whnf forallExpr
          if forallExpr.isForall then
            let .forallE yname yty forallBody _ := forallExpr | return none
            withLocalDeclD yname yty fun y => do
              let forallBody := forallBody.instantiate1 y
              let forallBody ← whnf forallBody
              -- forallBody should be y ∈ I → f(x) ≤ f(y)
              if forallBody.isForall then
                let .forallE _ _memTy compBody _ := forallBody | return none
                -- compBody should be f(x) ≤ f(y) (with y free, x from outer scope)
                match_expr compBody with
                | LE.le _ _ _lhs rhs =>
                  -- rhs is f(y), we extract the function structure
                  -- The function is fun z => (rhs with y replaced by z)
                  let func ← mkLambdaFVars #[y] rhs
                  return some (.argmin name intervalExpr func)
                | _ => return none
              else return none
          else return none
        | _ => return none
    else return none
  | _ => return none
where
  /-- Extract the interval from a membership expression x ∈ I -/
  extractIntervalExpr (memExpr : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr memExpr with
    | Membership.mem _ _ _ interval xExpr =>
      if ← isDefEq xExpr x then return some interval else return none
    | _ => return none

/-- Check if a function expression is wrapped in Expr.eval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
