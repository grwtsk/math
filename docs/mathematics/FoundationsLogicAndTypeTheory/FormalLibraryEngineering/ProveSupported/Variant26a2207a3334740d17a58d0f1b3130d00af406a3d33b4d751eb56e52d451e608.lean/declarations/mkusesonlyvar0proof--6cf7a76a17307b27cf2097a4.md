# mkUsesOnlyVar0Proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:762a05d0a1f1861b1b66e9e929dcd8421637e6a41248a2919be3c145635d3cdf",
  "kind": "def",
  "lexical_name": "mkUsesOnlyVar0Proof",
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
  "slug": "mkusesonlyvar0proof--6cf7a76a17307b27cf2097a4",
  "source": {
    "blob": "8ebd584a937578ce6fb6d8f5e1a98637b8e79804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf7a76a17307b27cf2097a4c19362f9e4fe95fcaf593a011856aff70bbeb7fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:762a05d0a1f1861b1b66e9e929dcd8421637e6a41248a2919be3c145635d3cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkUsesOnlyVar0Proof (e_ast : Lean.Expr) : MetaM Lean.Expr := do
  -- Get the head constant and arguments
  let fn := e_ast.getAppFn
  let args := e_ast.getAppArgs

  -- Match on AST constructors
  if fn.isConstOf ``LeanCert.Core.Expr.const then
    -- Expr.const q => UsesOnlyVar0.const q
    let q := args[0]!
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.const #[q]

  else if fn.isConstOf ``LeanCert.Core.Expr.var then
    -- Expr.var 0 => UsesOnlyVar0.var0
    -- Check that it's var 0
    let idx := args[0]!
    let idxVal ← whnf idx
    -- Check if it's a raw nat literal (OfNat.ofNat Nat 0 ...)
    let isZero ← isDefEq idxVal (mkRawNatLit 0)
    if isZero then
      pure <| Lean.mkConst ``LeanCert.Engine.UsesOnlyVar0.var0
    else
      throwError "Cannot generate UsesOnlyVar0 proof for: {e_ast}\n\
                  Expression uses a variable other than var 0."

  else if fn.isConstOf ``LeanCert.Core.Expr.add then
    -- Expr.add e₁ e₂ => UsesOnlyVar0.add e₁ e₂ h₁ h₂
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkUsesOnlyVar0Proof e₁
    let h₂ ← mkUsesOnlyVar0Proof e₂
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.add #[e₁, e₂, h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.mul then
    -- Expr.mul e₁ e₂ => UsesOnlyVar0.mul e₁ e₂ h₁ h₂
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkUsesOnlyVar0Proof e₁
    let h₂ ← mkUsesOnlyVar0Proof e₂
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.mul #[e₁, e₂, h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.neg then
    -- Expr.neg e => UsesOnlyVar0.neg e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.neg #[e, h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sin then
    -- Expr.sin e => UsesOnlyVar0.sin e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.sin #[e, h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cos then
    -- Expr.cos e => UsesOnlyVar0.cos e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.cos #[e, h]

  else if fn.isConstOf ``LeanCert.Core.Expr.exp then
    -- Expr.exp e => UsesOnlyVar0.exp e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.exp #[e, h]

  else if fn.isConstOf ``LeanCert.Core.Expr.atan then
    -- Expr.atan e => UsesOnlyVar0.atan e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.atan #[e, h]

  else if fn.isConstOf ``LeanCert.Core.Expr.arsinh then
    -- Expr.arsinh e => UsesOnlyVar0.arsinh e h
    let e := args[0]!
    let h ← mkUsesOnlyVar0Proof e
    mkAppM ``LeanCert.Engine.UsesOnlyVar0.arsinh #[e, h]

  else
    throwError "Cannot generate UsesOnlyVar0 proof for: {e_ast}\n\
                This expression contains unsupported operations (inv, log, atanh, or var n with n ≠ 0)."

/-! ## ExprSupported Proof Generation

Generate proof terms of type `ExprSupported e` by recursively matching
on the structure of `e : LeanCert.Core.Expr`.

Note: ExprSupported is a strict subset of ExprSupportedCore.
ExprSupported only supports: const, var, add, mul, neg, sin, cos, exp
-/

/-- Generate a proof of `ExprSupported e_ast` by matching on the AST structure.

    This function inspects the head constant of the AST expression and
    recursively builds the appropriate proof constructor.

    Supported: const, var, add, mul, neg, sin, cos, exp
    Not supported: log, sqrt, sinh, cosh, tanh, pi, inv, atan, arsinh, atanh -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ebd584a937578ce6fb6d8f5e1a98637b8e79804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
