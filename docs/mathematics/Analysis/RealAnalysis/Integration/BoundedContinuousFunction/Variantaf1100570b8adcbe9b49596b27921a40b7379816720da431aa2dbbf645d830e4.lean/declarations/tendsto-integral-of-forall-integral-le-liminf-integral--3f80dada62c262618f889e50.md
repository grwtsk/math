# tendsto_integral_of_forall_integral_le_liminf_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cb4f2d4-159e-9503-91f5-6cea66f197f2",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_of_forall_integral_le_liminf_integral",
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
  "slug": "tendsto-integral-of-forall-integral-le-liminf-integral--3f80dada62c262618f889e50",
  "source": {
    "blob": "655d7ab26a4767598d83986b3cae299c44d91bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f80dada62c262618f889e5052867bc34ddf0633f3c186d3537872ee1b1fec13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb4f2d4-159e-9503-91f5-6cea66f197f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_of_forall_integral_le_liminf_integral {ι : Type*} {L : Filter ι}
    {μ : Measure X} [IsProbabilityMeasure μ] {μs : ι → Measure X} [∀ i, IsProbabilityMeasure (μs i)]
    (h : ∀ f : X →ᵇ ℝ, 0 ≤ f → ∫ x, f x ∂μ ≤ L.liminf (fun i ↦ ∫ x, f x ∂ (μs i)))
    (f : X →ᵇ ℝ) :
    Tendsto (fun i ↦ ∫ x, f x ∂ (μs i)) L (𝓝 (∫ x, f x ∂μ)) := by
  rcases eq_or_neBot L with rfl|hL
  · simp only [tendsto_bot]
  have obs := BoundedContinuousFunction.isBounded_range_integral μs f
  have bdd_above := BddAbove.isBoundedUnder L.univ_mem (by simpa using obs.bddAbove)
  have bdd_below := BddBelow.isBoundedUnder L.univ_mem (by simpa using obs.bddBelow)
  apply @tendsto_of_le_liminf_of_limsup_le ℝ ι _ _ _ L (fun i ↦ ∫ x, f x ∂ (μs i)) (∫ x, f x ∂μ)
  · have key := h _ (f.add_norm_nonneg)
    simp_rw [f.integral_add_const ‖f‖] at key
    simp only [measureReal_univ_eq_one, smul_eq_mul, one_mul] at key
    have := liminf_add_const L (fun i ↦ ∫ x, f x ∂ (μs i)) ‖f‖ bdd_above.isCobounded_ge bdd_below
    rwa [this, add_le_add_iff_right] at key
  · have key := h _ (f.norm_sub_nonneg)
    simp_rw [f.integral_const_sub ‖f‖] at key
    simp only [measureReal_univ_eq_one, smul_eq_mul, one_mul] at key
    have := liminf_const_sub L (fun i ↦ ∫ x, f x ∂ (μs i)) ‖f‖ bdd_above bdd_below.isCobounded_le
    rwa [this, sub_le_sub_iff_left] at key
  · exact bdd_above
  · exact bdd_below

end tendsto_integral --section

end BoundedContinuousFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundedContinuousFunction/Variantaf1100570b8adcbe9b49596b27921a40b7379816720da431aa2dbbf645d830e4.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655d7ab26a4767598d83986b3cae299c44d91bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
