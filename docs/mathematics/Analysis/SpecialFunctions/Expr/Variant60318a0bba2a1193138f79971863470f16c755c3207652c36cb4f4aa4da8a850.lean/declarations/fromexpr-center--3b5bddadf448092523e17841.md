# fromExpr?_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba68113-1049-8c50-efb2-db357ce615c0",
  "kind": "theorem",
  "lexical_name": "fromExpr?_center",
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
  "slug": "fromexpr-center--3b5bddadf448092523e17841",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 382,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b5bddadf448092523e178419ffe3ccd5fadcaade1f5e9210ee3b2f9fd6777cc",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba68113-1049-8c50-efb2-db357ce615c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromExpr?_center (e : Expr) (domain : IntervalRat) (degree : ℕ)
    (tm : TaylorModel) (h : TaylorModel.fromExpr? e domain degree = some tm) :
    tm.center = domain.midpoint := by
  revert tm
  induction e generalizing degree with
  | const q =>
      intro tm h; simp [TaylorModel.fromExpr?] at h; cases h; simp [TaylorModel.const]
  | var idx =>
      intro tm h; simp [TaylorModel.fromExpr?] at h; cases h; simp [TaylorModel.identity]
  | add e1 e2 ih1 ih2 =>
      intro tm h
      cases h1 : TaylorModel.fromExpr? e1 domain degree with
      | none =>
        simp [TaylorModel.fromExpr?, h1] at h
      | some tm1 =>
        cases h2 : TaylorModel.fromExpr? e2 domain degree with
        | none => simp [TaylorModel.fromExpr?, h1, h2] at h
        | some tm2 =>
          simp [TaylorModel.fromExpr?, h1, h2] at h
          cases h
          have hc := ih1 degree tm1 h1
          simp [TaylorModel.add, hc]
  | mul e1 e2 ih1 ih2 =>
      intro tm h
      cases h1 : TaylorModel.fromExpr? e1 domain degree with
      | none => simp [TaylorModel.fromExpr?, h1] at h
      | some tm1 =>
        cases h2 : TaylorModel.fromExpr? e2 domain degree with
        | none => simp [TaylorModel.fromExpr?, h1, h2] at h
        | some tm2 =>
          simp [TaylorModel.fromExpr?, h1, h2] at h
          cases h
          have hc := ih1 degree tm1 h1
          simp [TaylorModel.mul, hc]
  | neg e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.neg, ih degree tm0 h0]
  | inv e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        by_cases hz : IntervalRat.containsZero tm0.bound
        · have hcontra : False := by simp [TaylorModel.fromExpr?, h0, hz] at h
          exact hcontra.elim
        · simp [TaylorModel.fromExpr?, h0, hz] at h; cases h; simp [TaylorModel.inv, ih degree tm0 h0]
  | exp e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.exp, ih degree tm0 h0]
  | sin e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.sin, ih degree tm0 h0]
  | cos e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.cos, ih degree tm0 h0]
  | log e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp only [TaylorModel.fromExpr?, h0, bind, Option.bind_some] at h
        unfold TaylorModel.log? at h
        split at h
        · simp only [Option.some.injEq] at h; subst h; exact ih degree tm0 h0
        · simp_all
  | atan e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.atan? at h
        simp only [Option.some.injEq] at h
        cases h
        exact ih degree tm0 h0
  | arsinh e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.asinh, ih degree tm0 h0]
  | atanh e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp only [TaylorModel.fromExpr?, h0, bind, Option.bind_some] at h
        unfold TaylorModel.atanh? at h
        split at h
        · simp only [Option.some.injEq] at h; subst h; exact ih degree tm0 h0
        · simp_all
  | sinc e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.sinc, ih degree tm0 h0]
  | erf e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.erf? at h
        simp only [Option.some.injEq] at h
        cases h
        exact ih degree tm0 h0
  | sinh e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.sinh, ih degree tm0 h0]
  | cosh e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.cosh, ih degree tm0 h0]
  | tanh e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        cases h
        simp [TaylorModel.tanh, ih degree tm0 h0]
  | sqrt e ih =>
      intro tm h
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.sqrt? at h
        simp only [Option.some.injEq] at h
        cases h
        exact ih degree tm0 h0
  | namedConst _ =>
      intro tm h
      simp [TaylorModel.fromExpr?] at h
      cases h
      rfl

namespace TaylorModel

/-- Composition lemma (addition): if sub-evaluations are in their evalSets, the sum is in
the evalSet of the added TM (centers must match). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
