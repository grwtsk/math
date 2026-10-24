# fromExpr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:982b705131fb16e6ad1d7b42f87972743f778e9f096913060714b5caeb1078df",
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
  "slug": "fromexpr--83e3fa2df9e3ca509a163eb0",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 304,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83e3fa2df9e3ca509a163eb05200b7cd8069c3eb0214a80ae2dfaf28b8d744f3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:982b705131fb16e6ad1d7b42f87972743f778e9f096913060714b5caeb1078df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–373.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
