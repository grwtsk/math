# rpow_abs_le_mul_max_exp_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c2a46ec-2758-d779-f91c-32aab3a7fa65",
  "kind": "lemma",
  "lexical_name": "rpow_abs_le_mul_max_exp_of_pos",
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
  "slug": "rpow-abs-le-mul-max-exp-of-pos--d0f296fd88359bd6cb311e8e",
  "source": {
    "blob": "883c2b712afc8fbc98050e857165c78eb6d6840c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f296fd88359bd6cb311e8ed78d5afef7d65ced7c66d07b3ca2f4ba44d140ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2a46ec-2758-d779-f91c-32aab3a7fa65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_abs_le_mul_max_exp_of_pos (x : ℝ) {t p : ℝ} (hp : 0 ≤ p) (ht : 0 < t) :
    |x| ^ p ≤ (p / t) ^ p * max (exp (t * x)) (exp (- t * x)) := by
  by_cases hp_zero : p = 0
  · simp only [hp_zero, rpow_zero, zero_div, neg_mul, one_mul, le_sup_iff, one_le_exp_iff,
      Left.nonneg_neg_iff]
    exact le_total 0 (t * x)
  have h_x_le c (hc : 0 < c) : x ≤ c⁻¹ * exp (c * x) := le_inv_mul_exp x hc
  have h_neg_x_le c (hc : 0 < c) : -x ≤ c⁻¹ * exp (- c * x) := by simpa using le_inv_mul_exp (-x) hc
  have h_abs_le c (hc : 0 < c) : |x| ≤ c⁻¹ * max (exp (c * x)) (exp (- c * x)) := by
    refine abs_le.mpr ⟨?_, ?_⟩
    · rw [neg_le]
      refine (h_neg_x_le c hc).trans ?_
      gcongr
      exact le_max_right _ _
    · refine (h_x_le c hc).trans ?_
      gcongr
      exact le_max_left _ _
  calc |x| ^ p
  _ ≤ ((t / p)⁻¹ * max (exp (t / p * x)) (exp (- t / p * x))) ^ p := by
    refine rpow_le_rpow (abs_nonneg _) ?_ hp
    convert h_abs_le (t / p) (div_pos ht (hp.lt_of_ne' hp_zero)) using 5
    rw [neg_div]
  _ = (p / t) ^ p * max (exp (t * x)) (exp (- t * x)) := by
    rw [mul_rpow (by positivity) (by positivity)]
    congr
    · field_simp
    · rw [rpow_max (by positivity) (by positivity) hp, ← exp_mul, ← exp_mul]
      ring_nf
      congr <;> rw [mul_assoc, mul_inv_cancel₀ hp_zero, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883c2b712afc8fbc98050e857165c78eb6d6840c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
