# integrableOn_deriv_right_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66c772f3-489f-7dc2-70d7-117f0b4dece1",
  "kind": "theorem",
  "lexical_name": "integrableOn_deriv_right_of_nonneg",
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
  "slug": "integrableon-deriv-right-of-nonneg--9b7058ca4f3df40fece0675f",
  "source": {
    "blob": "7d35e2d370a83108bc2aeea28317fc627be1e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1235,
    "line": 1201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b7058ca4f3df40fece0675f93cbfda2a5a31e53d0136e7cf200b06f770dfc02",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c772f3-489f-7dc2-70d7-117f0b4dece1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1201–1235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_deriv_right_of_nonneg (hcont : ContinuousOn g (Icc a b))
    (hderiv : ∀ x ∈ Ioo a b, HasDerivWithinAt g (g' x) (Ioi x) x)
    (g'pos : ∀ x ∈ Ioo a b, 0 ≤ g' x) : IntegrableOn g' (Ioc a b) := by
  by_cases hab : a < b; swap
  · simp [Ioc_eq_empty hab]
  rw [integrableOn_Ioc_iff_integrableOn_Ioo]
  have meas_g' : AEMeasurable g' (volume.restrict (Ioo a b)) := by
    apply (aemeasurable_derivWithin_Ioi g _).congr
    refine (ae_restrict_mem measurableSet_Ioo).mono fun x hx => ?_
    exact (hderiv x hx).derivWithin (uniqueDiffWithinAt_Ioi _)
  suffices H : (∫⁻ x in Ioo a b, ‖g' x‖₊) ≤ ENNReal.ofReal (g b - g a) from
    ⟨meas_g'.aestronglyMeasurable, H.trans_lt ENNReal.ofReal_lt_top⟩
  by_contra! H
  obtain ⟨f, fle, fint, hf⟩ :
    ∃ f : SimpleFunc ℝ ℝ≥0,
      (∀ x, f x ≤ ‖g' x‖₊) ∧
        (∫⁻ x : ℝ in Ioo a b, f x) < ∞ ∧ ENNReal.ofReal (g b - g a) < ∫⁻ x : ℝ in Ioo a b, f x :=
    exists_lt_lintegral_simpleFunc_of_lt_lintegral H
  let F : ℝ → ℝ := (↑) ∘ f
  have intF : IntegrableOn F (Ioo a b) := by
    refine ⟨f.measurable.coe_nnreal_real.aestronglyMeasurable, ?_⟩
    simpa only [F, hasFiniteIntegral_iff_enorm, comp_apply, NNReal.enorm_eq] using fint
  have A : ∫⁻ x : ℝ in Ioo a b, f x = ENNReal.ofReal (∫ x in Ioo a b, F x) :=
    lintegral_coe_eq_integral _ intF
  rw [A] at hf
  have B : (∫ x : ℝ in Ioo a b, F x) ≤ g b - g a := by
    rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le hab.le]
    refine integral_le_sub_of_hasDeriv_right_of_le hab.le hcont hderiv ?_ fun x hx => ?_
    · rwa [integrableOn_Icc_iff_integrableOn_Ioo]
    · convert NNReal.coe_le_coe.2 (fle x)
      simp only [Real.norm_of_nonneg (g'pos x hx), coe_nnnorm]
  exact lt_irrefl _ (hf.trans_le (ENNReal.ofReal_le_ofReal B))

/-- When the derivative of a function is nonnegative, then it is automatically integrable,
Ioc version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean#L1201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d35e2d370a83108bc2aeea28317fc627be1e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
