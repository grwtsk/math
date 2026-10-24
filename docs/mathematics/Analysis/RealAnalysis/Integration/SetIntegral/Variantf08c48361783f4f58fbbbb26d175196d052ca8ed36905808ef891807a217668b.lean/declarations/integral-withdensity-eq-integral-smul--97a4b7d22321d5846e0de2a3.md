# integral_withDensity_eq_integral_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a35704c-251f-c456-922e-8f54ad86f143",
  "kind": "theorem",
  "lexical_name": "integral_withDensity_eq_integral_smul",
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
  "slug": "integral-withdensity-eq-integral-smul--97a4b7d22321d5846e0de2a3",
  "source": {
    "blob": "38870d9281f38ed1ccfa0ea21d604040e52a66e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1273,
    "line": 1227,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a4b7d22321d5846e0de2a3419a06f5e5dc2173e02fb5d3aa36900d67ad5884",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a35704c-251f-c456-922e-8f54ad86f143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1227–1273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_withDensity_eq_integral_smul {f : α → ℝ≥0} (f_meas : Measurable f) (g : α → E) :
    ∫ a, g a ∂μ.withDensity (fun x => f x) = ∫ a, f a • g a ∂μ := by
  by_cases hg : Integrable g (μ.withDensity fun x => f x); swap
  · rw [integral_undef hg, integral_undef]
    rwa [← integrable_withDensity_iff_integrable_smul f_meas]
  refine' Integrable.induction
    (P := fun g => ∫ a, g a ∂μ.withDensity (fun x => f x) = ∫ a, f a • g a ∂μ) _ _ _ _ hg
  · intro c s s_meas hs
    rw [integral_indicator s_meas]
    simp_rw [← indicator_smul_apply, integral_indicator s_meas]
    simp only [s_meas, integral_const, Measure.restrict_apply', univ_inter, withDensity_apply]
    rw [lintegral_coe_eq_integral, ENNReal.toReal_ofReal, ← integral_smul_const]
    · rfl
    · exact integral_nonneg fun x => NNReal.coe_nonneg _
    · refine' ⟨f_meas.coe_nnreal_real.aemeasurable.aestronglyMeasurable, _⟩
      rw [withDensity_apply _ s_meas] at hs
      rw [HasFiniteIntegral]
      convert hs with x
      simp only [NNReal.nnnorm_eq]
  · intro u u' _ u_int u'_int h h'
    change
      (∫ a : α, u a + u' a ∂μ.withDensity fun x : α => ↑(f x)) = ∫ a : α, f a • (u a + u' a) ∂μ
    simp_rw [smul_add]
    rw [integral_add u_int u'_int, h, h', integral_add]
    · exact (integrable_withDensity_iff_integrable_smul f_meas).1 u_int
    · exact (integrable_withDensity_iff_integrable_smul f_meas).1 u'_int
  · have C1 :
      Continuous fun u : Lp E 1 (μ.withDensity fun x => f x) =>
        ∫ x, u x ∂μ.withDensity fun x => f x :=
      continuous_integral
    have C2 : Continuous fun u : Lp E 1 (μ.withDensity fun x => f x) => ∫ x, f x • u x ∂μ := by
      have : Continuous ((fun u : Lp E 1 μ => ∫ x, u x ∂μ) ∘ withDensitySMulLI (E := E) μ f_meas) :=
        continuous_integral.comp (withDensitySMulLI (E := E) μ f_meas).continuous
      convert this with u
      simp only [Function.comp_apply, withDensitySMulLI_apply]
      exact integral_congr_ae (memℒ1_smul_of_L1_withDensity f_meas u).coeFn_toLp.symm
    exact isClosed_eq C1 C2
  · intro u v huv _ hu
    rw [← integral_congr_ae huv, hu]
    apply integral_congr_ae
    filter_upwards [(ae_withDensity_iff f_meas.coe_nnreal_ennreal).1 huv] with x hx
    rcases eq_or_ne (f x) 0 with (h'x | h'x)
    · simp only [h'x, zero_smul]
    · rw [hx _]
      simpa only [Ne.def, ENNReal.coe_eq_zero] using h'x
#align integral_with_density_eq_integral_smul integral_withDensity_eq_integral_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean#L1227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38870d9281f38ed1ccfa0ea21d604040e52a66e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
