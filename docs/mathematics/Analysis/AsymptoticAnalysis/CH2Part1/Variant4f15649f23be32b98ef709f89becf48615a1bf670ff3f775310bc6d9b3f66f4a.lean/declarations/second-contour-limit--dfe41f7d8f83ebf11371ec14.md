# second_contour_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c31863e7-a793-60c7-388f-e52aa9196c4f",
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
  "slug": "second-contour-limit--dfe41f7d8f83ebf11371ec14",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4388,
    "line": 4315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe41f7d8f83ebf11371ec14cef37f5727aee5deb5afa68021b73010c9de1c6a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31863e7-a793-60c7-388f-e52aa9196c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4315–4388.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L4315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
