# ExprSupportedWithInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61a34280a0ea70c71b8bdf006a6efe6b21498cd99cceb349bff4566b370ce1f0",
  "kind": "inductive",
  "lexical_name": "ExprSupportedWithInv",
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
  "slug": "exprsupportedwithinv--5b84c2626798dc9d01fa04c0",
  "source": {
    "blob": "f7c0d7c045e1b455d396a934fc15190be5e5b818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b84c2626798dc9d01fa04c00dc8b32b94157ea3c3ac8961ba9bc28e38d05ad0",
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

Occurrence: `declaration:61a34280a0ea70c71b8bdf006a6efe6b21498cd99cceb349bff4566b370ce1f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExprSupportedWithInv : Expr → Prop where
  | const (q : ℚ) : ExprSupportedWithInv (Expr.const q)
  | var (idx : Nat) : ExprSupportedWithInv (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupportedWithInv e₁ → ExprSupportedWithInv e₂ →
      ExprSupportedWithInv (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupportedWithInv e₁ → ExprSupportedWithInv e₂ →
      ExprSupportedWithInv (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.neg e)
  | inv {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.inv e)
  | exp {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.exp e)
  | sin {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sin e)
  | cos {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.cos e)
  | log {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.log e)
  | atan {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.atan e)
  | arsinh {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.arsinh e)
  | atanh {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.atanh e)
  | sinc {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sinc e)
  | erf {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.erf e)
  | sqrt {e : Expr} : ExprSupportedWithInv e → ExprSupportedWithInv (Expr.sqrt e)
  | namedConst (c : MathConst) : ExprSupportedWithInv (Expr.namedConst c)

/-- ExprSupported implies ExprSupportedWithInv -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c0d7c045e1b455d396a934fc15190be5e5b818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
