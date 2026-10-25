# mkSupportedProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5733d56ab244715df116d2b5ebce7ef549a8dab532066c8991046cf981212ab",
  "kind": "def",
  "lexical_name": "mkSupportedProof",
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
  "slug": "mksupportedproof--8fece0bd03b5d5961c00768d",
  "source": {
    "blob": "8ebd584a937578ce6fb6d8f5e1a98637b8e79804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fece0bd03b5d5961c00768d662b5c4130339531df15ae9df2effb858822190b",
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

Occurrence: `declaration:b5733d56ab244715df116d2b5ebce7ef549a8dab532066c8991046cf981212ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSupportedProof (e_ast : Lean.Expr) : MetaM Lean.Expr := do
  let fn := e_ast.getAppFn
  let args := e_ast.getAppArgs

  if fn.isConstOf ``LeanCert.Core.Expr.const then
    let q := args[0]!
    mkAppM ``LeanCert.Core.ExprSupported.const #[q]

  else if fn.isConstOf ``LeanCert.Core.Expr.var then
    let idx := args[0]!
    mkAppM ``LeanCert.Core.ExprSupported.var #[idx]

  else if fn.isConstOf ``LeanCert.Core.Expr.add then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedProof e₁
    let h₂ ← mkSupportedProof e₂
    mkAppM ``LeanCert.Core.ExprSupported.add #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.mul then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedProof e₁
    let h₂ ← mkSupportedProof e₂
    mkAppM ``LeanCert.Core.ExprSupported.mul #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.neg then
    let e := args[0]!
    let h ← mkSupportedProof e
    mkAppM ``LeanCert.Core.ExprSupported.neg #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sin then
    let e := args[0]!
    let h ← mkSupportedProof e
    mkAppM ``LeanCert.Core.ExprSupported.sin #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cos then
    let e := args[0]!
    let h ← mkSupportedProof e
    mkAppM ``LeanCert.Core.ExprSupported.cos #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.exp then
    let e := args[0]!
    let h ← mkSupportedProof e
    mkAppM ``LeanCert.Core.ExprSupported.exp #[h]

  else
    throwError "Cannot generate ExprSupported proof for: {e_ast}\n\
                ExprSupported only covers: const, var, add, mul, neg, sin, cos, exp.\n\
                This expression uses unsupported operations (log, sqrt, sinh, cosh, tanh, pi, inv, etc.).\n\
                For unique root finding, the function must be in this restricted set."

/-! ## ExprSupportedCore Proof Generation

Generate proof terms of type `ExprSupportedCore e` by recursively matching
on the structure of `e : LeanCert.Core.Expr`.
-/

/-- Generate a proof of `ExprSupportedCore e_ast` by matching on the AST structure.

    This function inspects the head constant of the AST expression and
    recursively builds the appropriate proof constructor.

    Supported: const, var, add, mul, neg, sin, cos, exp, log, sqrt, sinh, cosh, tanh, erf, pi
    Not supported: inv, atan, arsinh, atanh -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ebd584a937578ce6fb6d8f5e1a98637b8e79804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
