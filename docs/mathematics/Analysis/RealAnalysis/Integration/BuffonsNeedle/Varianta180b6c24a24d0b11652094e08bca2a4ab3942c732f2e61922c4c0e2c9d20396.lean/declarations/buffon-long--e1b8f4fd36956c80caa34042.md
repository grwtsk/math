# buffon_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd2f727e-3e23-634c-2e9a-8b4c915e1ed7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8797df97-6e56-033c-20a5-220cd3569d8b",
  "kind": "theorem",
  "lexical_name": "buffon_long",
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
  "slug": "buffon-long--e1b8f4fd36956c80caa34042",
  "source": {
    "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b8f4fd36956c80caa34042097d6e82d535036498f39df7dad1488c65a1a2e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8797df97-6e56-033c-20a5-220cd3569d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem buffon_long (h : d ≤ l) :
    ℙ[N l B] = (2 * l) / (d * π) - 2 / (d * π) * (√(l^2 - d^2) + d * (d / l).arcsin) + 1 := by
  simp only [
    buffon_integral d l hd B hBₘ hB, MeasureTheory.integral_const, smul_eq_mul, mul_one,
    MeasurableSet.univ, Measure.restrict_apply, Set.univ_inter, Set.Icc_inter_Icc, Real.volume_Icc,
    min_div_div_right zero_le_two d, max_div_div_right zero_le_two (-d),
    div_sub_div_same, neg_mul, max_neg_neg, sub_neg_eq_add, ← mul_two,
    mul_div_cancel_right₀ (min d (Real.sin _ * l)) two_ne_zero, MeasureTheory.measureReal_def
  ]
  have : ∀ᵐ θ, θ ∈ Set.Icc 0 π →
      ENNReal.toReal (ENNReal.ofReal (min d (θ.sin * l))) = min d (θ.sin * l) := by
    have (θ : ℝ) (hθ : θ ∈ Set.Icc 0 π) : 0 ≤ min d (θ.sin * l) := by
      by_cases h : d ≤ θ.sin * l
      · rw [min_eq_left h]; exact hd.le
      · rw [min_eq_right (not_le.mp h).le]; exact mul_nonneg (Real.sin_nonneg_of_mem_Icc hθ) hl.le
    simp_rw [ENNReal.toReal_ofReal_eq_iff, MeasureTheory.ae_of_all _ this]
  rw [MeasureTheory.setIntegral_congr_ae measurableSet_Icc this,
    MeasureTheory.integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le Real.pi_pos.le, integral_min_eq_two_mul,
    ← intervalIntegral.integral_add_adjacent_intervals
      (intervalIntegrable_min_const_sin_mul d l _ _) (intervalIntegrable_min_const_sin_mul d l _ _),
    integral_zero_to_arcsin_min d l hd hl, integral_arcsin_to_pi_div_two_min d l hl h]
  field_simp
  ring_nf

end BuffonsNeedle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4974230b9c84bf9f6826bec42fdbfb15e0a49b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
