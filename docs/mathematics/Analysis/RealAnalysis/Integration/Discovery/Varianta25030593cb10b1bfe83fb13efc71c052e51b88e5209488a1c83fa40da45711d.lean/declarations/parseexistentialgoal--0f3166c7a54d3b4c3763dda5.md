# parseExistentialGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0143cbd47c9e1a92fc3cb981915c6d5dcda4200779180c2f1ab50978ed050959",
  "kind": "def",
  "lexical_name": "parseExistentialGoal",
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
  "slug": "parseexistentialgoal--0f3166c7a54d3b4c3763dda5",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f3166c7a54d3b4c3763dda50cff2111dfa253f266a116e2a52036274449888f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0143cbd47c9e1a92fc3cb981915c6d5dcda4200779180c2f1ab50978ed050959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseExistentialGoal (goalType : Lean.Expr) : MetaM (Option ExistentialBoundGoal) := do
  -- Try to match the Exists pattern
  let goalType ← whnf goalType
  if let .app (.app (.const ``Exists _) _) body := goalType then
    -- body is `fun m => ∀ x ∈ I, ...`
    if let .lam mName mTy mBody _ := body then
      -- Introduce m as a local variable to properly resolve bound variables
      withLocalDeclD mName mTy fun m => do
        let mBodyInst := mBody.instantiate1 m
        -- Analyze mBodyInst: `∀ x ∈ I, f(x) ≥ m` (minimize) or `f(x) ≤ m` (maximize)
        -- We reuse parseBoundGoal from IntervalAuto logic roughly
        if let some boundGoal ← LeanCert.Tactic.Auto.parseBoundGoal mBodyInst then
          match boundGoal with
          | .forallGe _name intervalInfo func bound =>
             -- c ≤ f(x) where c is m (the fvar we introduced)
             -- The bound might be a coercion of m, so check if it contains m
             let boundContainsM := bound.containsFVar m.fvarId!
             if boundContainsM then
               return some (.minimize _name mTy intervalInfo.intervalRat func)
             else return none
          | .forallLe _name intervalInfo func bound =>
             -- f(x) ≤ c where c is m
             let boundContainsM := bound.containsFVar m.fvarId!
             if boundContainsM then
               return some (.maximize _name mTy intervalInfo.intervalRat func)
             else return none
          | _ => return none
        else return none
    else return none
  else return none

/-! ## Helper Functions -/

/-- Try to extract AST from an Expr.eval application, or reify if it's a raw expression.
    This enables automatic reification - users can write standard math like `x * x + sin x`
    without needing to wrap in `Expr.eval`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
