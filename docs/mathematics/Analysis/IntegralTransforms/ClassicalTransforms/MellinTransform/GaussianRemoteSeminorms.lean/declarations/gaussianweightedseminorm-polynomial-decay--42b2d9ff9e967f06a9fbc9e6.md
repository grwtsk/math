# gaussianWeightedSeminorm_polynomial_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59536adf-10de-b583-38aa-1f46936efc46",
  "kind": "lemma",
  "lexical_name": "gaussianWeightedSeminorm_polynomial_decay",
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
  "slug": "gaussianweightedseminorm-polynomial-decay--42b2d9ff9e967f06a9fbc9e6",
  "source": {
    "blob": "4a0d5b90c1edc9bc39bd500766fe60762c8f61ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 56,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b2d9ff9e967f06a9fbc9e6dfe74b82da3b2f30d8a0cf6f4c37d1aa7da1ff75",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59536adf-10de-b583-38aa-1f46936efc46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianWeightedSeminorm_polynomial_decay (S : Finset (ℕ×ℕ)) (k : ℝ) (N : ℕ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianWeightedSeminorm S k Z hZ j≤
        C/(1+(2:ℝ)^j/Z)^N := by
  obtain ⟨B,hB,hzero⟩ := gaussianWeightedSeminorm_power_bound S k 0
  obtain ⟨C,hC,hdecay⟩ := gaussianWeightedSeminorm_power_bound S k (N:ℝ)
  refine ⟨(B+C)*(2:ℝ)^N,by positivity,?_⟩
  intro Z hZ j
  let r := (2:ℝ)^j/Z
  have hr : 0<r := div_pos (by positivity) hZ
  have hden : 0<(1+r)^N := pow_pos (by linarith) _
  change _≤(B+C)*(2:ℝ)^N/(1+r)^N
  by_cases hr1 : r≤1
  · have hh := hzero Z hZ j
    simp only [neg_zero,Real.rpow_zero,mul_one] at hh
    apply hh.trans
    apply (le_div_iff₀ hden).mpr
    have hp : (1+r)^N≤(2:ℝ)^N := pow_le_pow_left₀ (by linarith) (by linarith) _
    have hb := mul_le_mul_of_nonneg_left hp hB.le
    nlinarith [mul_nonneg hC.le (pow_nonneg (by norm_num : (0:ℝ)≤2) N)]
  · have hh := hdecay Z hZ j
    change _≤C*r^(-(N:ℝ)) at hh
    rw [Real.rpow_neg hr.le,Real.rpow_natCast] at hh
    apply hh.trans
    apply (le_div_iff₀ hden).mpr
    have hp : (1+r)^N≤(2*r)^N := pow_le_pow_left₀ (by linarith) (by linarith) _
    have hi : 0≤C*(r^N)⁻¹ := by positivity
    have hm := mul_le_mul_of_nonneg_left hp hi
    rw [mul_pow] at hm
    have hn : r^N≠0 := ne_of_gt (pow_pos hr _)
    have he : (C*(r^N)⁻¹)*((2:ℝ)^N*r^N)=C*(2:ℝ)^N := by field_simp
    rw [he] at hm
    exact hm.trans (by nlinarith [mul_nonneg hB.le (pow_nonneg (by norm_num : (0:ℝ)≤2) N)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0d5b90c1edc9bc39bd500766fe60762c8f61ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
