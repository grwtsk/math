# ExprContinuousCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765577bb0d3e87382df6d9082b3cece6a9fdcb82a6aa3098db7c9bb605869747",
  "kind": "inductive",
  "lexical_name": "ExprContinuousCore",
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
  "slug": "exprcontinuouscore--e6f42b20eaeb5443a8a7e340",
  "source": {
    "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6f42b20eaeb5443a8a7e340b49db55d07b305cc7aed903f5291232b8189364e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765577bb0d3e87382df6d9082b3cece6a9fdcb82a6aa3098db7c9bb605869747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExprContinuousCore : LExpr → Prop where
  | const (q : ℚ) : ExprContinuousCore (Expr.const q)
  | var (idx : Nat) : ExprContinuousCore (Expr.var idx)
  | add {e₁ e₂ : LExpr} : ExprContinuousCore e₁ → ExprContinuousCore e₂ →
      ExprContinuousCore (Expr.add e₁ e₂)
  | mul {e₁ e₂ : LExpr} : ExprContinuousCore e₁ → ExprContinuousCore e₂ →
      ExprContinuousCore (Expr.mul e₁ e₂)
  | neg {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.neg e)
  | sin {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.sin e)
  | cos {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.cos e)
  | exp {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.exp e)
  | sqrt {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.sqrt e)
  | sinh {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.sinh e)
  | cosh {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.cosh e)
  | tanh {e : LExpr} : ExprContinuousCore e → ExprContinuousCore (Expr.tanh e)

/-- ExprContinuousCore implies ExprSupportedCore -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
