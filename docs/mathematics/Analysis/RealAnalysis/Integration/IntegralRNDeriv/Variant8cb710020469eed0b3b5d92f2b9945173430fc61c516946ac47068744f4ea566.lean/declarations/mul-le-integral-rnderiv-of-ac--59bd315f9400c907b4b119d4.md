# mul_le_integral_rnDeriv_of_ac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b1de77-5443-9ce4-f5c8-c258276ee2c9",
  "kind": "lemma",
  "lexical_name": "mul_le_integral_rnDeriv_of_ac",
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
  "slug": "mul-le-integral-rnderiv-of-ac--59bd315f9400c907b4b119d4",
  "source": {
    "blob": "7b129e89a411f030194a5730fe605619a74d9887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59bd315f9400c907b4b119d4942c77424df8a5527a56935ea31e0549320e05b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b1de77-5443-9ce4-f5c8-c258276ee2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_le_integral_rnDeriv_of_ac [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont : ContinuousWithinAt f (Ici 0) 0)
    (hf_int : Integrable (fun x ↦ f (μ.rnDeriv ν x).toReal) ν) (hμν : μ ≪ ν) :
    ν.real univ * f (μ.real univ / ν.real univ)
      ≤ ∫ x, f (μ.rnDeriv ν x).toReal ∂ν := by
  by_cases hν : ν = 0
  · simp [hν]
  have : NeZero ν := ⟨hν⟩
  let μ' := (ν univ)⁻¹ • μ
  let ν' := (ν univ)⁻¹ • ν
  have : IsFiniteMeasure μ' := μ.smul_finite (by simp [hν])
  have hμν' : μ' ≪ ν' := hμν.smul _
  have h_rnDeriv_eq : μ'.rnDeriv ν' =ᵐ[ν] μ.rnDeriv ν := by
    have h1' : μ'.rnDeriv ν' =ᵐ[ν'] (ν univ)⁻¹ • μ.rnDeriv ν' :=
      Measure.rnDeriv_smul_left_of_ne_top' (μ := ν') (ν := μ) (by simp [hν])
    have h1 : μ'.rnDeriv ν' =ᵐ[ν] (ν univ)⁻¹ • μ.rnDeriv ν' := by
      rwa [Measure.ae_ennreal_smul_measure_eq] at h1'
      simp
    have h2 : μ.rnDeriv ν' =ᵐ[ν] (ν univ)⁻¹⁻¹ • μ.rnDeriv ν :=
      Measure.rnDeriv_smul_right_of_ne_top' (μ := ν) (ν := μ) (by simp) (by simp [hν])
    filter_upwards [h1, h2] with x h1 h2
    rw [h1, Pi.smul_apply, smul_eq_mul, h2]
    simp only [inv_inv, Pi.smul_apply, smul_eq_mul]
    rw [← mul_assoc, ENNReal.inv_mul_cancel, one_mul]
    · simp [hν]
    · simp
  have h_eq : ∫ x, f (μ'.rnDeriv ν' x).toReal ∂ν'
      = (ν.real univ)⁻¹ * ∫ x, f ((μ.rnDeriv ν x).toReal) ∂ν := by
    rw [integral_smul_measure, smul_eq_mul, ENNReal.toReal_inv]
    congr 1
    refine integral_congr_ae ?_
    filter_upwards [h_rnDeriv_eq] with x hx
    rw [hx]
  have h : f (μ'.real univ) ≤ ∫ x, f (μ'.rnDeriv ν' x).toReal ∂ν' :=
    le_integral_rnDeriv_of_ac hf_cvx hf_cont ?_ hμν'
  swap
  · refine Integrable.smul_measure ?_ (by simp [hν])
    refine (integrable_congr ?_).mpr hf_int
    filter_upwards [h_rnDeriv_eq] with x hx
    rw [hx]
  rw [h_eq, mul_comm, ← div_le_iff₀, div_eq_inv_mul, inv_inv] at h
  · convert! h
    · simp only [div_eq_inv_mul, Measure.smul_apply, smul_eq_mul, ENNReal.toReal_mul,
      ENNReal.toReal_inv, μ', measureReal_def]
  · simp [ENNReal.toReal_pos_iff, hν, measureReal_def]

section Integrable

variable {𝓨 : Type*} {m𝓨 : MeasurableSpace 𝓨} {κ η : Kernel 𝓧 𝓨} {f : ℝ → ℝ}
  [IsFiniteMeasure μ] [IsFiniteMeasure ν]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b129e89a411f030194a5730fe605619a74d9887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
