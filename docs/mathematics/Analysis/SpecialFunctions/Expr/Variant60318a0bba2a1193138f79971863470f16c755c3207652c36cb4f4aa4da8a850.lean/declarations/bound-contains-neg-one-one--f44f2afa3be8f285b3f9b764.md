# bound_contains_neg_one_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd36486f-e5f9-baee-29a2-c74bf983c87d",
  "kind": "theorem",
  "lexical_name": "bound_contains_neg_one_one",
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
  "slug": "bound-contains-neg-one-one--f44f2afa3be8f285b3f9b764",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 740,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44f2afa3be8f285b3f9b764e1b38d25fe060d8ab4afbda02c708ed9f729cb4f",
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

Occurrence: `result:bd36486f-e5f9-baee-29a2-c74bf983c87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bound_contains_neg_one_one (tm : TaylorModel)
    (y : ℝ) (hlo : -1 ≤ y) (hhi : y ≤ 1)
    (hrem_lo : tm.remainder.lo = -1) (hrem_hi : tm.remainder.hi = 1)
    (hpoly : tm.poly = 0) :
    y ∈ tm.bound := by
  simp only [bound, IntervalRat.mem_def, IntervalRat.add, polyBoundIntervalBernstein]
  have hbern := boundPolyBernstein_zero_poly tm.domain tm.center
  have hlo_bound : (boundPolyBernstein tm.poly tm.domain tm.center).lo ≤ 0 := by
    rw [hpoly]; exact hbern.1
  have hhi_bound : 0 ≤ (boundPolyBernstein tm.poly tm.domain tm.center).hi := by
    rw [hpoly]; exact hbern.2
  constructor
  · simp only [hrem_lo, Rat.cast_add, Rat.cast_neg, Rat.cast_one]
    have : ((boundPolyBernstein tm.poly tm.domain tm.center).lo : ℝ) ≤ 0 := by exact_mod_cast hlo_bound
    linarith
  · simp only [hrem_hi, Rat.cast_add, Rat.cast_one]
    have : (0 : ℝ) ≤ (boundPolyBernstein tm.poly tm.domain tm.center).hi := by exact_mod_cast hhi_bound
    linarith

/-- tanh preserves evalSet membership. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
