# ExprSupportedCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aac7292e1756e15cabda0656c2578edd46a4d1fb5e1ae6279c36b9ebee55b529",
  "kind": "inductive",
  "lexical_name": "ExprSupportedCore",
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
  "slug": "exprsupportedcore--3b3408dbad71f7df01424808",
  "source": {
    "blob": "f7c0d7c045e1b455d396a934fc15190be5e5b818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b3408dbad71f7df01424808b347f136ce399f9d37694e9eb9de0582c27f4771",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aac7292e1756e15cabda0656c2578edd46a4d1fb5e1ae6279c36b9ebee55b529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExprSupportedCore : Expr → Prop where
  | const (q : ℚ) : ExprSupportedCore (Expr.const q)
  | var (idx : Nat) : ExprSupportedCore (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupportedCore e₁ → ExprSupportedCore e₂ →
      ExprSupportedCore (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupportedCore e₁ → ExprSupportedCore e₂ →
      ExprSupportedCore (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.neg e)
  | sin {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sin e)
  | cos {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.cos e)
  | exp {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.exp e)
  | log {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.log e)
  | sqrt {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sqrt e)
  | sinh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.sinh e)
  | cosh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.cosh e)
  | tanh {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.tanh e)
  | erf {e : Expr} : ExprSupportedCore e → ExprSupportedCore (Expr.erf e)
  | namedConst (c : MathConst) : ExprSupportedCore (Expr.namedConst c)

/-! ### Extended supported expression subset (with exp) -/

/-- Predicate indicating an expression is in the fully-verified subset for AD.
    Supports: const, var, add, mul, neg, sin, cos, exp
    Does NOT support:
    - sqrt (not differentiable at 0 - use ExprSupportedCore for interval evaluation only)
    - inv (requires nonzero interval checks)
    - log (requires positive interval checks)
    - atan/arsinh/atanh (derivative proofs incomplete - use ExprSupportedWithInv + evalInterval?) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c0d7c045e1b455d396a934fc15190be5e5b818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
