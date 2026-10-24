# rpow_sum_le_const_mul_sum_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dc4ff11-88e3-4f4b-d397-005809351020",
  "kind": "theorem",
  "lexical_name": "rpow_sum_le_const_mul_sum_rpow",
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
  "slug": "rpow-sum-le-const-mul-sum-rpow--0b6eea31a09f612161b24b28",
  "source": {
    "blob": "bfb8dec0cd98bcfafac05da9fafea42ae61f1c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1187,
    "line": 1171,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b6eea31a09f612161b24b2807c527e8c2d79dd55de34fe644c54c2cd528ce16",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dc4ff11-88e3-4f4b-d397-005809351020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1171–1187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_sum_le_const_mul_sum_rpow (hp : 1 ≤ p) :
    (∑ i ∈ s, f i) ^ p ≤ (card s : ℝ≥0∞) ^ (p - 1) * ∑ i ∈ s, f i ^ p := by
  rcases eq_or_lt_of_le hp with hp | hp
  · simp [← hp]
  let q : ℝ := p / (p - 1)
  have hpq : p.HolderConjugate q := .conjExponent hp
  have hp₁ : 1 / p * p = 1 := one_div_mul_cancel hpq.ne_zero
  have hq : 1 / q * p = p - 1 := by
    rw [← hpq.div_conj_eq_sub_one]
    ring
  simpa only [ENNReal.mul_rpow_of_nonneg _ _ hpq.nonneg, ← ENNReal.rpow_mul, hp₁, hq, coe_one,
    one_mul, one_rpow, rpow_one, Pi.one_apply, sum_const, Nat.smul_one_eq_cast] using
    ENNReal.rpow_le_rpow (inner_le_Lp_mul_Lq s 1 f hpq.symm) hpq.nonneg

/-- **Minkowski inequality**: the `L_p` seminorm of the sum of two vectors is less than or equal
to the sum of the `L_p`-seminorms of the summands. A version for `ℝ≥0∞`-valued nonnegative
functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean#L1171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8dec0cd98bcfafac05da9fafea42ae61f1c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
