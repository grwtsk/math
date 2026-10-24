# fromExpr?_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ac34e85-c499-c0b1-7e47-1505b4281beb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abfcbab3-8f14-d28b-fa38-0e8c45857e2d",
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
  "slug": "fromexpr-center--da63b1d92a27aef311e7fbb5",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 374,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da63b1d92a27aef311e7fbb5c87c61e16bfa347c0b63507f19cae4dd76b0f6ae",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abfcbab3-8f14-d28b-fa38-0e8c45857e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–548.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
