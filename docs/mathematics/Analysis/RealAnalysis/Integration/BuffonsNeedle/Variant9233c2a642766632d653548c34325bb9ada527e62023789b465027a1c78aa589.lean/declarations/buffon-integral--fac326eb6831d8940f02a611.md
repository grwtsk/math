# buffon_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c34f96eae356573e49dbabbf491e61e7ce9d976a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:535de1dd-fa37-ea9f-77f2-cf4d8cc45a67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fae0e20a-3291-cd32-195c-85b06127e466",
  "kind": "lemma",
  "lexical_name": "buffon_integral",
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
  "slug": "buffon-integral--fac326eb6831d8940f02a611",
  "source": {
    "blob": "c34f96eae356573e49dbabbf491e61e7ce9d976a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac326eb6831d8940f02a611041f33554b382862ecef4f70278eb1715d80f752",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae0e20a-3291-cd32-195c-85b06127e466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma buffon_integral :
    𝔼[N l B] = (d * π)⁻¹ *
      ∫ (θ : ℝ) in Set.Icc 0 π,
      ∫ (_ : ℝ) in Set.Icc (-d / 2) (d / 2) ∩ Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2), 1 := by
  simp_rw [N, Function.comp_apply]
  rw [← MeasureTheory.integral_map hBₘ.aemeasurable
      (stronglyMeasurable_needleCrossesIndicator l).aestronglyMeasurable,
    hB.map_eq, ProbabilityTheory.cond, MeasureTheory.integral_smul_measure, volume_needleSpace d hd,
    ← ENNReal.ofReal_inv_of_pos (mul_pos hd Real.pi_pos),
    ENNReal.toReal_ofReal (inv_nonneg.mpr (mul_nonneg hd.le Real.pi_pos.le)), smul_eq_mul]
  refine mul_eq_mul_left_iff.mpr (Or.inl ?_)
  have : MeasureTheory.IntegrableOn (needleCrossesIndicator l)
      (Set.Icc (-d / 2) (d / 2) ×ˢ Set.Icc 0 π) := by
    simp_rw [MeasureTheory.IntegrableOn, Measure.volume_eq_prod, ← Measure.prod_restrict,
      integrable_needleCrossesIndicator d l hd]
  rw [Measure.volume_eq_prod, MeasureTheory.setIntegral_prod _ this,
    MeasureTheory.integral_integral_swap ?integrable]
  case integrable => simp_rw [Function.uncurry_def, Prod.mk.eta,
    integrable_needleCrossesIndicator d l hd]
  simp only [needleCrossesIndicator, needleProjX]
  have indicator_eq (x θ : ℝ) :
      Set.indicator (Set.Icc (x - θ.sin * l / 2) (x + θ.sin * l / 2)) 1 0 =
      Set.indicator (Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2)) (1 : ℝ → ℝ) x := by
    simp_rw [Set.indicator, Pi.one_apply, Set.mem_Icc, tsub_le_iff_right, zero_add, neg_mul]
    have :
        x ≤ Real.sin θ * l / 2 ∧ 0 ≤ x + Real.sin θ * l / 2 ↔
        -(Real.sin θ * l) / 2 ≤ x ∧ x ≤ Real.sin θ * l / 2 := by
      rw [neg_div, and_comm, ← tsub_le_iff_right, zero_sub]
    by_cases h : x ≤ Real.sin θ * l / 2 ∧ 0 ≤ x + Real.sin θ * l / 2
    · rw [ite_eq_left h, ite_eq_left (this.mp h)]
    · rw [ite_eq_right h, ite_eq_right (this.not.mp h)]
  simp_rw [indicator_eq, MeasureTheory.setIntegral_indicator measurableSet_Icc, Pi.one_apply]

include hl in
/--
From `buffon_integral`, in both the short and the long case, we have
```lean
𝔼[N l B] = (d * π)⁻¹ *
  ∫ (θ : ℝ) in Set.Icc 0 π,
    ∫ (x : ℝ) in Set.Icc (-d / 2) (d / 2) ∩ Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2), 1
```
With this lemma, in the short case, the inner integral's domain simplifies to
`Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2)`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34f96eae356573e49dbabbf491e61e7ce9d976a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
