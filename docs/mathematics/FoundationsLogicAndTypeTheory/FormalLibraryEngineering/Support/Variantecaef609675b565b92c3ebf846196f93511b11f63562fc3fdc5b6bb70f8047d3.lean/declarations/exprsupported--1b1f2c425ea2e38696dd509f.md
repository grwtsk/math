# ExprSupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe5633e75ae124dea5548376f54340bb9d1025c34a6167c8d226fa03c20cbee9",
  "kind": "inductive",
  "lexical_name": "ExprSupported",
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
  "slug": "exprsupported--1b1f2c425ea2e38696dd509f",
  "source": {
    "blob": "f7c0d7c045e1b455d396a934fc15190be5e5b818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b1f2c425ea2e38696dd509f915834d3ba16fa4c19b67c928cc3d6b7b53e4a1b",
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

Occurrence: `declaration:fe5633e75ae124dea5548376f54340bb9d1025c34a6167c8d226fa03c20cbee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExprSupported : Expr → Prop where
  | const (q : ℚ) : ExprSupported (Expr.const q)
  | var (idx : Nat) : ExprSupported (Expr.var idx)
  | add {e₁ e₂ : Expr} : ExprSupported e₁ → ExprSupported e₂ → ExprSupported (Expr.add e₁ e₂)
  | mul {e₁ e₂ : Expr} : ExprSupported e₁ → ExprSupported e₂ → ExprSupported (Expr.mul e₁ e₂)
  | neg {e : Expr} : ExprSupported e → ExprSupported (Expr.neg e)
  | sin {e : Expr} : ExprSupported e → ExprSupported (Expr.sin e)
  | cos {e : Expr} : ExprSupported e → ExprSupported (Expr.cos e)
  | exp {e : Expr} : ExprSupported e → ExprSupported (Expr.exp e)

/-- ExprSupported expressions are also in ExprSupportedCore -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Support/Variantecaef609675b565b92c3ebf846196f93511b11f63562fc3fdc5b6bb70f8047d3.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c0d7c045e1b455d396a934fc15190be5e5b818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
