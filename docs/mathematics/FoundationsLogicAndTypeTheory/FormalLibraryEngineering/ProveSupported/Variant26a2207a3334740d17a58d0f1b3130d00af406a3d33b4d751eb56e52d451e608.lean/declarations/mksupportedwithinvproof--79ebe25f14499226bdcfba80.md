# mkSupportedWithInvProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63f4d9fe53e2d972ec2cadf0ae11e6982ed228031a3765c2dff9c25ea4dc533d",
  "kind": "def",
  "lexical_name": "mkSupportedWithInvProof",
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
  "slug": "mksupportedwithinvproof--79ebe25f14499226bdcfba80",
  "source": {
    "blob": "8ebd584a937578ce6fb6d8f5e1a98637b8e79804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 327,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79ebe25f14499226bdcfba801f5c5ab8e7d33e5fb9e74cca7d7ce3ba17fe7c9f",
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

Occurrence: `declaration:63f4d9fe53e2d972ec2cadf0ae11e6982ed228031a3765c2dff9c25ea4dc533d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSupportedWithInvProof (e_ast : Lean.Expr) : MetaM Lean.Expr := do
  -- Get the head constant and arguments
  let fn := e_ast.getAppFn
  let args := e_ast.getAppArgs

  -- Match on AST constructors
  if fn.isConstOf ``LeanCert.Core.Expr.const then
    let q := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.const #[q]

  else if fn.isConstOf ``LeanCert.Core.Expr.var then
    let idx := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.var #[idx]

  else if fn.isConstOf ``LeanCert.Core.Expr.add then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedWithInvProof e₁
    let h₂ ← mkSupportedWithInvProof e₂
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.add #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.mul then
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedWithInvProof e₁
    let h₂ ← mkSupportedWithInvProof e₂
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.mul #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.neg then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.neg #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.inv then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.inv #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sin then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.sin #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cos then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.cos #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.exp then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.exp #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.log then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.log #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.atan then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.atan #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.arsinh then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.arsinh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.atanh then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.atanh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sinc then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.sinc #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.erf then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.erf #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sqrt then
    let e := args[0]!
    let h ← mkSupportedWithInvProof e
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.sqrt #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.namedConst then
    let c := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedWithInv.namedConst #[c]

  else
    throwError "Cannot generate ExprSupportedWithInv proof for: {e_ast}\n\
                Unrecognized expression structure."

/-! ## Testing Infrastructure -/

/-- Elaborate a term, reify it to a LeanCert expression, and generate
    an ExprSupportedCore proof. Useful for debugging. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ebd584a937578ce6fb6d8f5e1a98637b8e79804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
