# integrable_needleCrossesIndicator

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
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:defbeb05-c2f1-3b13-e859-a87efd1c89ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9f8b330-c272-9e07-6c73-3778ef97d0a0",
  "kind": "lemma",
  "lexical_name": "integrable_needleCrossesIndicator",
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
  "slug": "integrable-needlecrossesindicator--8cdef886aec77474504ec8bf",
  "source": {
    "blob": "c34f96eae356573e49dbabbf491e61e7ce9d976a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cdef886aec77474504ec8bf0ee81838b42b650f7c5c3f0e6fc57431a86f257f",
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

Occurrence: `result:a9f8b330-c272-9e07-6c73-3778ef97d0a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma integrable_needleCrossesIndicator :
    MeasureTheory.Integrable (needleCrossesIndicator l)
      (Measure.prod
        (Measure.restrict ℙ (Set.Icc (-d / 2) (d / 2)))
        (Measure.restrict ℙ (Set.Icc 0 π))) := by
  have needleCrossesIndicator_nonneg p : 0 ≤ needleCrossesIndicator l p := by
    apply Set.indicator_apply_nonneg
    simp only [Pi.one_apply, zero_le_one, implies_true]
  have needleCrossesIndicator_le_one p : needleCrossesIndicator l p ≤ 1 := by
    unfold needleCrossesIndicator
    by_cases hp : 0 ∈ needleProjX l p.1 p.2
    · simp_rw [Set.indicator_of_mem hp, Pi.one_apply, le_refl]
    · simp_rw [Set.indicator_of_notMem hp, zero_le_one]
  refine And.intro
    (stronglyMeasurable_needleCrossesIndicator l).aestronglyMeasurable
    ((MeasureTheory.hasFiniteIntegral_iff_norm (needleCrossesIndicator l)).mpr ?_)
  refine lt_of_le_of_lt (MeasureTheory.lintegral_mono (g := 1) ?le_const) ?lt_top
  case le_const =>
    intro p
    simp only [Real.norm_eq_abs, abs_of_nonneg (needleCrossesIndicator_nonneg _),
      ENNReal.ofReal_le_one, Pi.one_apply]
    exact needleCrossesIndicator_le_one p
  case lt_top =>
    simp_rw [Pi.one_apply, MeasureTheory.lintegral_const, one_mul, Measure.prod_restrict,
      Measure.restrict_apply MeasurableSet.univ, Set.univ_inter, Measure.prod_prod, Real.volume_Icc,
      neg_div, sub_neg_eq_add, add_halves, sub_zero, ← ENNReal.ofReal_mul hd.le,
      ENNReal.ofReal_lt_top]

include hd hB hBₘ in
/--
This is a common step in both the short and the long case to simplify the expectation of the
needle crossing a line to a double integral.
```lean
∫ (θ : ℝ) in Set.Icc 0 π,
  ∫ (x : ℝ) in Set.Icc (-d / 2) (d / 2) ∩ Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2), 1
```
The domain of the inner integral is simpler in the short case, where the intersection is
equal to `Set.Icc (-θ.sin * l / 2) (θ.sin * l / 2)` by `short_needle_inter_eq`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34f96eae356573e49dbabbf491e61e7ce9d976a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
