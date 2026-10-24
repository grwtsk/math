# Integrable.integral_eq_integral_meas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b13316bb-54bc-78ea-3fdc-05916e39b164",
  "kind": "theorem",
  "lexical_name": "Integrable.integral_eq_integral_meas_lt",
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
  "slug": "integrable-integral-eq-integral-meas-lt--5e163ae368215f38faa712f2",
  "source": {
    "blob": "18de3077a108c790d2b6c8addb314de87d5fb025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 526,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e163ae368215f38faa712f26e48c1c1cad1e4c111c79e021f6c872fd8c65e6d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b13316bb-54bc-78ea-3fdc-05916e39b164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.integral_eq_integral_meas_lt
    (f_intble : Integrable f μ) (f_nn : 0 ≤ᵐ[μ] f) :
    ∫ ω, f ω ∂μ = ∫ t in Set.Ioi 0, μ.real {a : α | t < f a} := by
  have key := lintegral_eq_lintegral_meas_lt μ f_nn f_intble.aemeasurable
  have lhs_finite : ∫⁻ (ω : α), ENNReal.ofReal (f ω) ∂μ < ∞ := Integrable.lintegral_lt_top f_intble
  have rhs_finite : ∫⁻ (t : ℝ) in Set.Ioi 0, μ {a | t < f a} < ∞ := by simp only [← key, lhs_finite]
  have rhs_integrand_finite : ∀ (t : ℝ), t > 0 → μ {a | t < f a} < ∞ :=
    fun t ht ↦ measure_gt_lt_top f_intble ht
  convert! (ENNReal.toReal_eq_toReal_iff' lhs_finite.ne rhs_finite.ne).mpr key
  · exact integral_eq_lintegral_of_nonneg_ae f_nn f_intble.aestronglyMeasurable
  · have aux := @integral_eq_lintegral_of_nonneg_ae _ _ ((volume : Measure ℝ).restrict (Set.Ioi 0))
      (fun t ↦ μ.real {a : α | t < f a}) ?_ ?_
    · rw [aux]
      congr 1
      apply setLIntegral_congr_fun measurableSet_Ioi
      exact fun t t_pos ↦ ENNReal.ofReal_toReal (rhs_integrand_finite t t_pos).ne
    · exact Eventually.of_forall (fun x ↦ by positivity)
    · apply Measurable.aestronglyMeasurable
      refine Measurable.ennreal_toReal ?_
      exact Antitone.measurable (fun _ _ hst ↦ measure_mono (fun _ h ↦ lt_of_le_of_lt hst h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18de3077a108c790d2b6c8addb314de87d5fb025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
