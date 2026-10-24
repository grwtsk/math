# IndepFun.integral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eda359e-43ab-7deb-0e95-c46594f9575d",
  "kind": "theorem",
  "lexical_name": "IndepFun.integral_mul",
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
  "slug": "indepfun-integral-mul--83c93122763c8c5cefc54c38",
  "source": {
    "blob": "5edd8198d106bc7fd22755b47176bd2b6c14f355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c93122763c8c5cefc54c38c3637ffaf82e8e5af2a625eb4f1db8673b3d6f15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eda359e-43ab-7deb-0e95-c46594f9575d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integral_mul (hXY : IndepFun X Y μ) (hX : AEStronglyMeasurable X μ)
    (hY : AEStronglyMeasurable Y μ) : integral μ (X * Y) = integral μ X * integral μ Y := by
  by_cases h'X : X =ᵐ[μ] 0
  · have h' : X * Y =ᵐ[μ] 0 := by
      filter_upwards [h'X] with ω hω
      simp [hω]
    simp only [integral_congr_ae h'X, integral_congr_ae h', Pi.zero_apply, integral_const,
      Algebra.id.smul_eq_mul, mul_zero, zero_mul]
  by_cases h'Y : Y =ᵐ[μ] 0
  · have h' : X * Y =ᵐ[μ] 0 := by
      filter_upwards [h'Y] with ω hω
      simp [hω]
    simp only [integral_congr_ae h'Y, integral_congr_ae h', Pi.zero_apply, integral_const,
      Algebra.id.smul_eq_mul, mul_zero, zero_mul]
  by_cases h : Integrable (X * Y) μ
  · have HX : Integrable X μ := hXY.integrable_left_of_integrable_mul h hX hY h'Y
    have HY : Integrable Y μ := hXY.integrable_right_of_integrable_mul h hX hY h'X
    exact hXY.integral_mul_of_integrable HX HY
  · rw [integral_undef h]
    have I : ¬(Integrable X μ ∧ Integrable Y μ) := by
      rintro ⟨HX, HY⟩
      exact h (hXY.integrable_mul HX HY)
    rw [not_and_or] at I
    cases' I with I I <;> simp [integral_undef I]
#align probability_theory.indep_fun.integral_mul ProbabilityTheory.IndepFun.integral_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant2ca5074b36cc3404fef73146038cdf20edc660b759ebb0af746b648bd92032c5.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edd8198d106bc7fd22755b47176bd2b6c14f355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
