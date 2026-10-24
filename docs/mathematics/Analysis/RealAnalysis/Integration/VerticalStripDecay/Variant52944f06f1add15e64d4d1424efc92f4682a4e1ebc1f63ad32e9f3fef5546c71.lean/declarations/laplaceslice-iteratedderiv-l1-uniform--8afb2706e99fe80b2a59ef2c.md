# laplaceSlice_iteratedDeriv_l1_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7128547f-80a4-4e82-b064-5333eb6b6386",
  "kind": "theorem",
  "lexical_name": "laplaceSlice_iteratedDeriv_l1_uniform",
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
  "slug": "laplaceslice-iteratedderiv-l1-uniform--8afb2706e99fe80b2a59ef2c",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8afb2706e99fe80b2a59ef2cf06d3c14aa25b5af2295e2b517c9471853f492b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7128547f-80a4-4e82-b064-5333eb6b6386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem laplaceSlice_iteratedDeriv_l1_uniform
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (_hsigma : sigma₀ ≤ sigma₁) (n : ℕ) :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ sigma ∈ Set.Icc sigma₀ sigma₁,
      ∫ x : ℝ,
        ‖iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ ≤ A := by
  let K : Set (ℝ × ℝ) :=
    Set.Icc sigma₀ sigma₁ ×ˢ
      Set.Icc (-g.supportRadius) g.supportRadius
  have hK : IsCompact K := isCompact_Icc.prod isCompact_Icc
  have hcont :
      Continuous (fun p ↦ ‖laplaceSliceDerivativeFormula g n p‖) :=
    (continuous_laplaceSliceDerivativeFormula g n).norm
  have hbdd :
      BddAbove
        ((fun p ↦ ‖laplaceSliceDerivativeFormula g n p‖) '' K) :=
    hK.bddAbove_image hcont.continuousOn
  rcases bddAbove_def.mp hbdd with ⟨C, hC⟩
  let C₀ : ℝ := max C 0
  let A : ℝ :=
    volume.real (Set.Icc (-g.supportRadius) g.supportRadius) * C₀
  refine ⟨A, mul_nonneg measureReal_nonneg (le_max_right _ _), ?_⟩
  intro sigma hsigmaMem
  have hpoint :
      ∀ x ∈ Set.Icc (-g.supportRadius) g.supportRadius,
        ‖iteratedDeriv n
          (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ ≤ C₀ := by
    intro x hx
    rw [iteratedDeriv_laplaceSliceSchwartz]
    exact
      (hC ‖laplaceSliceDerivativeFormula g n (sigma, x)‖
        ⟨⟨sigma, x⟩, ⟨hsigmaMem, hx⟩, rfl⟩).trans
          (le_max_left _ _)
  have hsupport :=
    support_iteratedDeriv_laplaceSlice_subset g sigma n
  calc
    ∫ x : ℝ,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ =
        ∫ x : ℝ in Set.Icc (-g.supportRadius) g.supportRadius,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ := by
      symm
      apply setIntegral_eq_integral_of_forall_compl_eq_zero
      intro x hx
      rw [norm_eq_zero]
      exact Function.notMem_support.mp
        (fun hmem ↦ hx (hsupport hmem))
    _ ≤ ∫ _x : ℝ in Set.Icc (-g.supportRadius) g.supportRadius, C₀ := by
      have hfInt : IntegrableOn
          (fun x : ℝ ↦
            ‖iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖)
          (Set.Icc (-g.supportRadius) g.supportRadius) volume := by
        have hcontinuous : Continuous
            (fun x : ℝ ↦
              ‖iteratedDeriv n
                (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖) := by
          have hsmooth : ContDiff ℝ ∞
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) :=
            (g.laplaceSliceSchwartz sigma).smooth ⊤
          exact
            (hsmooth.continuous_iteratedDeriv n
              (mod_cast le_top)).norm
        exact hcontinuous.continuousOn.integrableOn_compact isCompact_Icc
      exact setIntegral_mono_on hfInt
        (integrableOn_const measure_Icc_lt_top.ne)
        measurableSet_Icc hpoint
    _ = A := by
      rw [setIntegral_const]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
