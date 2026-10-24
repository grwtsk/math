# fromExpr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9936b452a6a9ba59e576eb12d1af989ff89bc0a33b6c45f88d83ff2f3a20784c",
  "kind": "def",
  "lexical_name": "fromExpr?",
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
  "slug": "fromexpr--5d712ae05acaa53999f8943c",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 312,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d712ae05acaa53999f8943c2e9bd6108655456b200567d66b347fbe70d068c8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9936b452a6a9ba59e576eb12d1af989ff89bc0a33b6c45f88d83ff2f3a20784c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromExpr? (e : Expr) (domain : IntervalRat) (degree : ℕ) :
    Option TaylorModel :=
  match e with
  | Expr.const q => some <| const q domain
  | Expr.var _ => some <| identity domain
  | Expr.add e₁ e₂ => do
      let tm₁ ← fromExpr? e₁ domain degree
      let tm₂ ← fromExpr? e₂ domain degree
      pure <| add tm₁ tm₂
  | Expr.mul e₁ e₂ => do
      let tm₁ ← fromExpr? e₁ domain degree
      let tm₂ ← fromExpr? e₂ domain degree
      pure <| mul tm₁ tm₂ degree
  | Expr.neg e => do
      let tm ← fromExpr? e domain degree
      pure <| neg tm
  | Expr.inv e => do
      let tm ← fromExpr? e domain degree
      if h : IntervalRat.containsZero tm.bound then
        none
      else
        pure <| TaylorModel.inv tm h
  | Expr.exp e => do
      let tm ← fromExpr? e domain degree
      pure <| exp tm degree
  | Expr.sin e => do
      let tm ← fromExpr? e domain degree
      pure <| sin tm degree
  | Expr.cos e => do
      let tm ← fromExpr? e domain degree
      pure <| cos tm degree
  | Expr.log e => do
      let tm ← fromExpr? e domain degree
      log? tm degree
  | Expr.atan e => do
      let tm ← fromExpr? e domain degree
      atan? tm
  | Expr.arsinh e => do
      let tm ← fromExpr? e domain degree
      pure <| asinh tm degree
  | Expr.atanh e => do
      let tm ← fromExpr? e domain degree
      atanh? tm degree
  | Expr.sinc e => do
      let tm ← fromExpr? e domain degree
      pure <| sinc tm degree
  | Expr.erf e => do
      let tm ← fromExpr? e domain degree
      erf? tm
  | Expr.sinh e => do
      let tm ← fromExpr? e domain degree
      pure <| sinh tm degree
  | Expr.cosh e => do
      let tm ← fromExpr? e domain degree
      pure <| cosh tm degree
  | Expr.tanh e => do
      let tm ← fromExpr? e domain degree
      pure <| tanh tm degree
  | Expr.sqrt e => do
      let tm ← fromExpr? e domain degree
      sqrt? tm
  | Expr.namedConst c =>
      some { poly := 0
             remainder := c.interval
             center := domain.midpoint
             domain := domain }

end TaylorModel

/-- Centers produced by `fromExpr?` are always `domain.midpoint`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
