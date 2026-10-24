# inner_le_weight_mul_Lp_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 912,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19f3dd0c-ea45-3f7c-39ae-559c4ed2264d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b32c5c6c-00bc-e7fd-ab24-8c88e948965b",
  "kind": "lemma",
  "lexical_name": "inner_le_weight_mul_Lp_of_nonneg",
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
  "slug": "inner-le-weight-mul-lp-of-nonneg--00054510b1e6835a36d852c7",
  "source": {
    "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 912,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00054510b1e6835a36d852c79537648582fec69efbb42d9d6b9e26e5737a5b46",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b32c5c6c-00bc-e7fd-ab24-8c88e948965b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 912–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_le_weight_mul_Lp_of_nonneg (s : Finset ι) {p : ℝ} (hp : 1 ≤ p) (w f : ι → ℝ≥0∞) :
    ∑ i ∈ s, w i * f i ≤ (∑ i ∈ s, w i) ^ (1 - p⁻¹) * (∑ i ∈ s, w i * f i ^ p) ^ p⁻¹ := by
  obtain rfl | hp := hp.eq_or_lt
  · simp
  have hp₀ : 0 < p := by positivity
  have hp₁ : p⁻¹ < 1 := inv_lt_one_of_one_lt₀ hp
  by_cases H : (∑ i ∈ s, w i) ^ (1 - p⁻¹) = 0 ∨ (∑ i ∈ s, w i * f i ^ p) ^ p⁻¹ = 0
  · replace H : (∀ i ∈ s, w i = 0) ∨ ∀ i ∈ s, w i = 0 ∨ f i = 0 := by
      simpa [hp₀, hp₁, hp₀.not_lt, hp₁.not_lt, sum_eq_zero_iff_of_nonneg] using H
    have (i) (hi : i ∈ s) : w i * f i = 0 := by rcases H with H | H <;> simp [H i hi]
    simp [sum_eq_zero this]
  push_neg at H
  by_cases H' : (∑ i ∈ s, w i) ^ (1 - p⁻¹) = ⊤ ∨ (∑ i ∈ s, w i * f i ^ p) ^ p⁻¹ = ⊤
  · rcases H' with H' | H' <;> simp [H', -one_div, -sum_eq_zero_iff, -rpow_eq_zero_iff, H]
  replace H' : (∀ i ∈ s, w i ≠ ⊤) ∧ ∀ i ∈ s, w i * f i ^ p ≠ ⊤ := by
    simpa [rpow_eq_top_iff,hp₀, hp₁, hp₀.not_lt, hp₁.not_lt, sum_eq_top, not_or] using H'
  have := coe_le_coe.2 <| NNReal.inner_le_weight_mul_Lp s hp.le (fun i ↦ ENNReal.toNNReal (w i))
    fun i ↦ ENNReal.toNNReal (f i)
  rw [coe_mul] at this
  simp_rw [coe_rpow_of_nonneg _ <| inv_nonneg.2 hp₀.le, coe_finset_sum, ← ENNReal.toNNReal_rpow,
    ← ENNReal.toNNReal_mul, sum_congr rfl fun i hi ↦ coe_toNNReal (H'.2 i hi)] at this
  simp [ENNReal.coe_rpow_of_nonneg, hp₀.le, hp₁.le] at this
  convert this using 2 with i hi
  · obtain hw | hw := eq_or_ne (w i) 0
    · simp [hw]
    rw [coe_toNNReal (H'.1 _ hi), coe_toNNReal]
    simpa [mul_eq_top, hw, hp₀, hp₀.not_lt, H'.1 _ hi] using H'.2 _ hi
  · convert rfl with i hi
    exact coe_toNNReal (H'.1 _ hi)

/-- For `1 ≤ p`, the `p`-th power of the sum of `f i` is bounded above by a constant times the
sum of the `p`-th powers of `f i`. Version for sums over finite sets, with `ℝ≥0∞`-valued functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean#L912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695b7766d64f0324ce6af502e548a5e3de8e4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
