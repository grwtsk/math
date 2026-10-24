# fromExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:987568d696843dbe50c2cc5dce1391fe9d81b182f298e9fe8d58911c69b3672d",
  "kind": "def",
  "lexical_name": "fromExpr",
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
  "slug": "fromexpr--359ccf4839e16017eabe5b47",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 263,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:359ccf4839e16017eabe5b47ea974af27f787f84c6d900a90e74210395751618",
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

Occurrence: `declaration:987568d696843dbe50c2cc5dce1391fe9d81b182f298e9fe8d58911c69b3672d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromExpr (e : Expr) (domain : IntervalRat) (degree : ℕ) : TaylorModel :=
  match e with
  | Expr.const q => const q domain
  | Expr.var _ => identity domain
  | Expr.add e₁ e₂ => add (fromExpr e₁ domain degree) (fromExpr e₂ domain degree)
  | Expr.mul e₁ e₂ => mul (fromExpr e₁ domain degree) (fromExpr e₂ domain degree) degree
  | Expr.neg e => neg (fromExpr e domain degree)
  | Expr.inv e =>
      let tm := fromExpr e domain degree
      -- Fallback to constant 0 if the bound contains 0 (keeps totality for examples).
      if h : IntervalRat.containsZero tm.bound then
        const 0 domain
      else
        TaylorModel.inv tm h
  | Expr.exp e => exp (fromExpr e domain degree) degree
  | Expr.sin e => sin (fromExpr e domain degree) degree
  | Expr.cos e => cos (fromExpr e domain degree) degree
  | Expr.log e =>
      let tm := fromExpr e domain degree
      match log? tm degree with
      | some logTM => logTM
      | none => const 0 domain  -- Fallback if domain not positive
  | Expr.atan e => atan (fromExpr e domain degree) degree
  | Expr.arsinh e => asinh (fromExpr e domain degree) degree
  | Expr.atanh e => atanh (fromExpr e domain degree) degree
  | Expr.sinc e => sinc (fromExpr e domain degree) degree
  | Expr.erf e => erf (fromExpr e domain degree) degree
  | Expr.sinh e => sinh (fromExpr e domain degree) degree
  | Expr.cosh e => cosh (fromExpr e domain degree) degree
  | Expr.tanh e => tanh (fromExpr e domain degree) degree
  | Expr.sqrt e =>
      -- sqrt? always succeeds, so we can safely extract
      (sqrt? (fromExpr e domain degree)).getD (const 0 domain)
  | Expr.namedConst c =>
      { poly := 0
        remainder := c.interval
        center := domain.lo + (domain.hi - domain.lo) / 2
        domain := domain }

/-- Safe (partial) builder: convert an expression to a Taylor model, returning `none`
    if an inversion would require dividing by an interval that contains 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
