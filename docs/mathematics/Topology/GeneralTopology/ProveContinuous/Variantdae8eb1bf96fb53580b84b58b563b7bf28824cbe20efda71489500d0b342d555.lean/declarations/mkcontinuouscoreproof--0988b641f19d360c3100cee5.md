# mkContinuousCoreProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f5e3fc6fbb60a5c3d9982509c2f0ba660aca32077b8c7b3bc8df3fb854d82d2",
  "kind": "def",
  "lexical_name": "mkContinuousCoreProof",
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
  "slug": "mkcontinuouscoreproof--0988b641f19d360c3100cee5",
  "source": {
    "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 339,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0988b641f19d360c3100cee57cc2b81d7b0d15b3c1f08ba60bdbf1101a3f3d98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f5e3fc6fbb60a5c3d9982509c2f0ba660aca32077b8c7b3bc8df3fb854d82d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkContinuousCoreProof (e_ast : Lean.Expr) : MetaM Lean.Expr := do
  -- Get the head constant and arguments
  let fn := e_ast.getAppFn
  let args := e_ast.getAppArgs

  -- Match on AST constructors
  if fn.isConstOf ``LeanCert.Core.Expr.const then
    let q := args[0]!
    mkAppM ``ExprContinuousCore.const #[q]

  else if fn.isConstOf ``LeanCert.Core.Expr.var then
    let idx := args[0]!
    mkAppM ``ExprContinuousCore.var #[idx]

  else if fn.isConstOf ``LeanCert.Core.Expr.add then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkContinuousCoreProof e₁
    let h₂ ← mkContinuousCoreProof e₂
    mkAppM ``ExprContinuousCore.add #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.mul then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkContinuousCoreProof e₁
    let h₂ ← mkContinuousCoreProof e₂
    mkAppM ``ExprContinuousCore.mul #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.neg then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.neg #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sin then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.sin #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cos then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.cos #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.exp then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.exp #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.log then
    throwError "Cannot generate ExprContinuousCore proof for: {e_ast}\n\
                Expression contains `log` which is not continuous at 0.\n\
                Continuity proofs for expressions with log require restricted domains."

  else if fn.isConstOf ``LeanCert.Core.Expr.sqrt then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.sqrt #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sinh then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.sinh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cosh then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.cosh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.tanh then
    let e := args[0]!
    let h ← mkContinuousCoreProof e
    mkAppM ``ExprContinuousCore.tanh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.inv then
    throwError "Cannot generate ExprContinuousCore proof for: {e_ast}\n\
                Expression contains `inv` which is not continuous at 0.\n\
                Continuity proofs for expressions with division require restricted domains."

  else
    throwError "Cannot generate ExprContinuousCore proof for: {e_ast}\n\
                This expression contains unsupported operations (atan, arsinh, or atanh)."

/-- Generate a ContinuousOn proof for an expression on an interval.

    Given:
    - `e_ast` : the AST expression (Lean.Expr representing LeanCert.Core.Expr)
    - `interval` : the interval expression (Lean.Expr representing IntervalRat)

    Returns a proof of:
    `ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi)`

    This works by:
    1. Generating an ExprContinuousCore proof for the AST
    2. Applying exprContinuousCore_continuousOn_interval

    Note: This will fail for expressions containing `inv` since 1/x is not continuous at 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
