# mkSupportedCoreProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8bdf16fa118e1eded8c64e1bd468bb41780fc6e91650f2e31f638a7568b284c",
  "kind": "def",
  "lexical_name": "mkSupportedCoreProof",
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
  "slug": "mksupportedcoreproof--a81fb3e8664c58cfe050c37f",
  "source": {
    "blob": "99b6e5e627322cb7ec0928e0f12f25e5470664a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a81fb3e8664c58cfe050c37f290bc69a168d5268f1b23cf767c1995de5750e53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8bdf16fa118e1eded8c64e1bd468bb41780fc6e91650f2e31f638a7568b284c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSupportedCoreProof (e_ast : Lean.Expr) : MetaM Lean.Expr := do
  -- Get the head constant and arguments
  let fn := e_ast.getAppFn
  let args := e_ast.getAppArgs

  -- Match on AST constructors
  if fn.isConstOf ``LeanCert.Core.Expr.const then
    -- Expr.const q => ExprSupportedCore.const q
    let q := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedCore.const #[q]

  else if fn.isConstOf ``LeanCert.Core.Expr.var then
    -- Expr.var idx => ExprSupportedCore.var idx
    let idx := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedCore.var #[idx]

  else if fn.isConstOf ``LeanCert.Core.Expr.add then
    -- Expr.add e₁ e₂ => ExprSupportedCore.add h₁ h₂
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedCoreProof e₁
    let h₂ ← mkSupportedCoreProof e₂
    mkAppM ``LeanCert.Core.ExprSupportedCore.add #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.mul then
    -- Expr.mul e₁ e₂ => ExprSupportedCore.mul h₁ h₂
    let e₁ := args[0]!
    let e₂ := args[1]!
    let h₁ ← mkSupportedCoreProof e₁
    let h₂ ← mkSupportedCoreProof e₂
    mkAppM ``LeanCert.Core.ExprSupportedCore.mul #[h₁, h₂]

  else if fn.isConstOf ``LeanCert.Core.Expr.neg then
    -- Expr.neg e => ExprSupportedCore.neg h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.neg #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sin then
    -- Expr.sin e => ExprSupportedCore.sin h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.sin #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cos then
    -- Expr.cos e => ExprSupportedCore.cos h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.cos #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.exp then
    -- Expr.exp e => ExprSupportedCore.exp h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.exp #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.log then
    -- Expr.log e => ExprSupportedCore.log h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.log #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sqrt then
    -- Expr.sqrt e => ExprSupportedCore.sqrt h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.sqrt #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.sinh then
    -- Expr.sinh e => ExprSupportedCore.sinh h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.sinh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.cosh then
    -- Expr.cosh e => ExprSupportedCore.cosh h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.cosh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.tanh then
    -- Expr.tanh e => ExprSupportedCore.tanh h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.tanh #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.erf then
    -- Expr.erf e => ExprSupportedCore.erf h
    let e := args[0]!
    let h ← mkSupportedCoreProof e
    mkAppM ``LeanCert.Core.ExprSupportedCore.erf #[h]

  else if fn.isConstOf ``LeanCert.Core.Expr.namedConst then
    let c := args[0]!
    mkAppM ``LeanCert.Core.ExprSupportedCore.namedConst #[c]

  else
    throwError "Cannot generate ExprSupportedCore proof for: {e_ast}\n\
                This expression contains unsupported operations (inv, atan, arsinh, or atanh).\n\
                Use mkSupportedWithInvProof for expressions with inv."

/-! ## ExprSupportedWithInv Proof Generation

Generate proof terms of type `ExprSupportedWithInv e` by recursively matching
on the structure of `e : LeanCert.Core.Expr`. This supports the full expression language.
-/

/-- Generate a proof of `ExprSupportedWithInv e_ast` by matching on the AST structure.

    This function supports all expression constructors including inv, log, atan, arsinh, and atanh. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant34672eb5d8e39bfe2826b843639e42b2fe912af669230f8331b5ced9de621c27.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99b6e5e627322cb7ec0928e0f12f25e5470664a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
