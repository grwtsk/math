# second_contour_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2565fccb-691a-c15f-2be7-f762a8b0d7d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3ee8de0-1d71-01e8-c2b1-6af1564ec8de",
  "kind": "theorem",
  "lexical_name": "second_contour_limit",
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
  "slug": "second-contour-limit--901b7c3f2fb9048dd2d73183",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4406,
    "line": 4333,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901b7c3f2fb9048dd2d731833ac1665a6e61a49fd4a92d46a5558a664c2481f1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ee8de0-1d71-01e8-c2b1-6af1564ec8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4333–4406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_contour_limit (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x > 0) :
    Filter.atTop.Tendsto (fun T : ℝ ↦
      (-(I * ∫ t in Set.Icc 0 T, ((Phi_star ν ε (-1/2 - I * t)) * E (-(-1/2 - I * ↑t) * x))))
        - (∫ t in Set.Icc (-1/2 : ℝ) 0, (Phi_star ν ε t * E (-t * x)))
        + (I * ∫ t in Set.Icc 0 T, ((Phi_star ν ε (-I * t)) * E (-(-I * ↑t) * x))))
      (nhds 0) := by
  let f : ℂ → ℂ := fun z ↦ Phi_star ν ε z * E (-z * x)
  have h_anal (T : ℝ) (hT : T ≥ 0) : HolomorphicOn f (Rectangle (↑(-1/2 : ℝ)) (↑(0 : ℝ) - I * ↑T)) := by
    simpa only [f] using second_contour_integrand_holomorphicOn ν ε x T hT
  have h_rect_zero (T : ℝ) (hT : T ≥ 0) : RectangleIntegral f (↑(-1/2 : ℝ)) (↑(0 : ℝ) - I * ↑T) = 0 :=
    HolomorphicOn.vanishesOnRectangle (h_anal T hT) subset_rfl
  have h_goal_eq_bottom (T : ℝ) (hT : 0 ≤ T) :
      (-(I * ∫ t in Set.Icc 0 T, f (-1/2 - I * t)))
        - (∫ t in Set.Icc (-1/2 : ℝ) 0, f t)
        + (I * ∫ t in Set.Icc 0 T, f (-I * t)) =
      - ∫ t in (-1/2 : ℝ)..0, f (t - I * T) := by
    have := h_rect_zero T hT
    simp only [RectangleIntegral, HIntegral, VIntegral, smul_eq_mul] at this
    push_cast at this
    simp only [neg_re, neg_im, mul_re, mul_im, I_re, I_im, ofReal_re, ofReal_im,
      ofReal_neg, mul_zero, mul_one, add_zero,
      sub_zero, zero_sub, neg_zero, mul_comm I] at this
    have h1 : ∫ t in Set.Icc (0 : ℝ) T, f (-1 / 2 - I * t) = - ∫ y in 0..-T, f (-1 / 2 + I * y) := by
      rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
      ring_nf
      simp_rw [show ∀ x : ℝ, f (-1/2 - I * ↑x) = f (-1/2 + I * ↑(-x)) from
        fun x => by congr 1; push_cast; ring]
      rw [intervalIntegral.integral_comp_neg (fun y => f (-1/2 + I * ↑y))]
      rw [intervalIntegral.integral_symm, neg_zero]
    have h2 : ∫ t in Set.Icc (0 : ℝ) T, f (- I * t) = - ∫ y in 0..-T, f (I * y) := by
      rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
      simp_rw [show ∀ t : ℝ, f (-I * ↑t) = f (I * ↑(-t)) from
        fun t => by congr 1; push_cast; ring]
      rw [intervalIntegral.integral_comp_neg (fun y => f (I * ↑y)),
          intervalIntegral.integral_symm, neg_zero]
    have h3 : ∫ t in Set.Icc (-1 / 2 : ℝ) (0 : ℝ), f t = ∫ x in (-1 / 2 : ℝ)..0, f x := by
      rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (by norm_num)]
    calc
      (-(I * ∫ t in Set.Icc 0 T, f (-1 / 2 - I * ↑t)) - ∫ (t : ℝ) in Set.Icc (-1 / 2) 0, f ↑t) +
          I * ∫ (t : ℝ) in Set.Icc 0 T, f (-I * ↑t)
        = (I * ∫ y in 0..-T, f (-1 / 2 + I * y)) - (∫ x in -1 / 2..0, f x) - (I * ∫ y in 0..-T, f (I * y)) := by
          rw [h1, h2, h3]; ring
      _ = - ∫ x in -1 / 2..0, f (x - I * T) := by
          simp only [show ((-1 / 2 : ℂ)).re = -1 / 2 from by norm_num,
                    show ((-1 / 2 : ℂ)).im = 0 from by norm_num,
                    zero_mul, add_zero, zero_add, ofReal_zero] at this
          have hI1 : ∫ (y : ℝ) in 0..-T, f ((y : ℂ) * I) =
                    ∫ (y : ℝ) in 0..-T, f (I * (y : ℂ)) := by
            congr 1; ext (y : ℝ); ring_nf
          have hI2 : ∫ (y : ℝ) in 0..-T, f ((-1 / 2 : ℂ) + (y : ℂ) * I) =
                    ∫ (y : ℝ) in 0..-T, f ((-1 / 2 : ℂ) + I * (y : ℂ)) := by
            congr 1; ext (y : ℝ); ring_nf
          have hI3 : ∫ (x : ℝ) in -1 / 2..0, f ((x : ℂ) + -(T : ℂ) * I) =
                    ∫ (x : ℝ) in -1 / 2..0, f ((x : ℂ) - I * (T : ℂ)) := by
            congr 1; ext (x : ℝ); ring_nf
          rw [hI1] at this
          push_cast at this
          rw [hI2, hI3] at this
          linear_combination -this
  have h_bottom : Filter.Tendsto (fun T : ℝ ↦ ∫ t in (-1/2 : ℝ)..0, f (t - I * T))
      Filter.atTop (nhds 0) :=
    horizontal_integral_phi_fourier_vanish_downwards ν ε x (-1/2) 0 hν hx
      (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) f
      (fun T hT ↦ (h_anal T (by linarith)).continuousOn)
      (Filter.Eventually.of_forall fun T t _ ↦ by
        simp only [f]; rw [norm_mul]
        exact mul_le_mul_of_nonneg_right (le_add_of_nonneg_left (norm_nonneg _)) (norm_nonneg _))
  refine Filter.Tendsto.congr'
    (f₁ := fun (T : ℝ) ↦ - ∫ t in (-1/2 : ℝ)..0, f (↑t - I * ↑T)) ?_
    (by simpa using h_bottom.neg)
  filter_upwards [Filter.eventually_ge_atTop 0] with T hT
  simp only [f] at h_goal_eq_bottom ⊢
  exact (h_goal_eq_bottom T hT).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
