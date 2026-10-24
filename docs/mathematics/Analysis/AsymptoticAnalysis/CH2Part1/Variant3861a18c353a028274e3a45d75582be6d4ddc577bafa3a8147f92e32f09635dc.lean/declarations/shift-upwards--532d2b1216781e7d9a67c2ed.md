# shift_upwards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbbf68da-ad9f-3e94-8cdd-4dbe8d3092b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f13ade60-734b-8cc2-2923-2b2a2d95adaf",
  "kind": "theorem",
  "lexical_name": "shift_upwards",
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
  "slug": "shift-upwards--532d2b1216781e7d9a67c2ed",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3312,
    "line": 3171,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:532d2b1216781e7d9a67c2ed765cc07ad0931ab1c8b5d638e1c874ade56f8b20",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f13ade60-734b-8cc2-2923-2b2a2d95adaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3171–3312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_upwards (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x < 0) :
    Filter.atTop.Tendsto
      (fun T : ℝ ↦
        (I * ∫ t in Set.Icc 0 T,
          (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
        - (I * ∫ t in Set.Icc 0 T,
          (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
        + (2 * I * ∫ t in Set.Icc 0 T,
          Phi_star ν ε (I * t) * E (-(I * t) * x)))
      (nhds (𝓕 (ϕ_pm ν ε) x)) := by
  have hlam : ν ≠ 0 := by linarith
  set A : ℂ :=
    ∫ t in Set.Icc (-1 : ℝ) 0, (Phi_circ ν ε t - Phi_star ν ε t) * E (-t * x)
  set B : ℂ :=
    ∫ t in Set.Icc 0 (1 : ℝ), (Phi_circ ν ε t + Phi_star ν ε t) * E (-t * x)
  have hfourier : 𝓕 (ϕ_pm ν ε) x = A + B := by
    simpa [A, B] using varphi_fourier_ident ν ε hlam x
  have h_exp_decay (T : ℝ) (t : ℝ) : ‖E (-(t + I * T) * x)‖ = Real.exp (2 * π * x * T) := by
    dsimp [E]
    rw [Complex.norm_exp]
    simp; ring_nf
  have hAshift :
      Filter.atTop.Tendsto
        (fun T : ℝ ↦
          (I * ∫ t in Set.Icc 0 T,
            (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
          - (I * ∫ t in Set.Icc 0 T,
            (Phi_circ ν ε (I * t) - Phi_star ν ε (I * t)) * E (-(I * t) * x)))
        (nhds A) := by
    let f : ℂ → ℂ := fun z ↦ (Phi_circ ν ε z - Phi_star ν ε z) * E (-z * x)
    have h_anal (U : ℝ) (hU : 0 ≤ U) : HolomorphicOn f (Rectangle (↑(-1:ℝ)) (↑(0:ℝ) + I * U)) := by
      intro z hz; have hi : 0 ≤ z.im := by
        have hz_im : z.im ∈ Set.uIcc 0 U := by simpa [Rectangle] using hz.2
        rw [Set.uIcc_of_le hU] at hz_im
        exact hz_im.1
      exact (AnalyticAt.sub (Phi_circ.analyticAt_of_im_nonneg ν ε z hν hi) (Phi_star.analyticAt_of_im_nonneg ν ε z hν hi)).differentiableAt.mul
        (by dsimp [E]; fun_prop)
        |>.differentiableWithinAt
    have h_shift := tendsto_contour_shift (σ := -1) (σ' := 0) (f := f) h_anal ?_ ?_ ?_
    · have hA_eq : ∫ x in (-1:ℝ)..0, f x = A := by
        dsimp [A]
        rw [intervalIntegral.integral_of_le (by norm_num), MeasureTheory.integral_Icc_eq_integral_Ioc]
      have h_final : (fun (T : ℝ) ↦ (I * ∫ (t : ℝ) in Set.Icc 0 T, f (-1 + I * ↑t)) - (I * ∫ (t : ℝ) in Set.Icc 0 T, f (I * ↑t))) =
          (fun (U : ℝ) ↦ (I * ∫ (t : ℝ) in Set.Icc 0 U, f (↑(-1 : ℝ) + I * ↑t)) - (I * ∫ (t : ℝ) in Set.Icc 0 U, f (↑(0 : ℝ) + I * ↑t))) := by
        ext U
        have h1 : ∫ (t : ℝ) in Set.Icc 0 U, f (-1 + I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 U, f (↑(-1 : ℝ) + I * ↑t) := by congr 1; ext t; simp
        have h2 : ∫ (t : ℝ) in Set.Icc 0 U, f (I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 U, f (↑(0 : ℝ) + I * ↑t) := by congr 1; ext t; simp
        rw [h1, h2]
      rw [hA_eq, ← h_final] at h_shift
      exact h_shift
    · simp_rw [mul_comm _ I]
      apply horizontal_integral_phi_fourier_vanish ν ε x (-1) 0 hν hx (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) f
      · intro T hT; convert (h_anal T (by linarith)).continuousOn using 2
      · intro T hT t ht; dsimp [f]; rw [norm_mul]
        exact mul_le_mul_of_nonneg_right (norm_sub_le _ _) (norm_nonneg _)
    · apply integrable_phi_fourier_ray ν ε (-1) x hν (by norm_num) hx f (Or.inr rfl)
    · apply integrable_phi_fourier_ray ν ε 0 x hν (by norm_num) hx f (Or.inr rfl)
  have hBshift :
      Filter.atTop.Tendsto
        (fun T : ℝ ↦
          (- I * ∫ t in Set.Icc 0 T,
            (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
          + (I * ∫ t in Set.Icc 0 T,
            (Phi_circ ν ε (I * t) + Phi_star ν ε (I * t)) * E (-(I * t) * x)))
        (nhds B) := by
    let f : ℂ → ℂ := fun z ↦ (Phi_circ ν ε z + Phi_star ν ε z) * E (-z * x)
    have h_anal (U : ℝ) (hU : 0 ≤ U) : HolomorphicOn f (Rectangle (↑(0:ℝ)) (↑(1:ℝ) + I * U)) := by
      intro z hz; have hi : 0 ≤ z.im := by
        have hz_im : z.im ∈ Set.uIcc 0 U := by simpa [Rectangle] using hz.2
        rw [Set.uIcc_of_le hU] at hz_im
        exact hz_im.1
      exact (AnalyticAt.add (Phi_circ.analyticAt_of_im_nonneg ν ε z hν hi) (Phi_star.analyticAt_of_im_nonneg ν ε z hν hi)).differentiableAt.mul
        (by dsimp [E]; fun_prop) |>.differentiableWithinAt
    have h_shift := tendsto_contour_shift (σ := 0) (σ' := 1) (f := f) h_anal ?_ ?_ ?_
    · have hB_eq : ∫ x in (0:ℝ)..1, f x = B := by
        dsimp [B]
        rw [intervalIntegral.integral_of_le zero_le_one, MeasureTheory.integral_Icc_eq_integral_Ioc]
      have h_final : (fun (T : ℝ) ↦ (-I * ∫ (t : ℝ) in Set.Icc 0 T, f (1 + I * ↑t)) + (I * ∫ (t : ℝ) in Set.Icc 0 T, f (I * ↑t))) =
          (fun (U : ℝ) ↦ (I * ∫ (t : ℝ) in Set.Icc 0 U, f (↑(0 : ℝ) + I * ↑t)) - (I * ∫ (t : ℝ) in Set.Icc 0 U, f (↑(1 : ℝ) + I * ↑t))) := by
        ext U
        have h1 : ∫ (t : ℝ) in Set.Icc 0 U, f (1 + I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 U, f (↑(1 : ℝ) + I * ↑t) := by congr 1
        have h2 : ∫ (t : ℝ) in Set.Icc 0 U, f (I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 U, f (↑(0 : ℝ) + I * ↑t) := by congr 1; ext t; simp
        rw [h1, h2]; ring
      rw [hB_eq, ← h_final] at h_shift
      exact h_shift
    · simp_rw [mul_comm _ I]
      apply horizontal_integral_phi_fourier_vanish ν ε x 0 1 hν hx (Set.Icc_subset_Icc (by norm_num) (by norm_num)) (by norm_num) f
      · intro T hT; convert (h_anal T (by linarith)).continuousOn using 2
      · intro T hT t ht; dsimp [f]; rw [norm_mul]
        exact mul_le_mul_of_nonneg_right (norm_add_le _ _) (norm_nonneg _)
    · apply integrable_phi_fourier_ray ν ε 0 x hν (by norm_num) hx f (Or.inl rfl)
    · apply integrable_phi_fourier_ray ν ε 1 x hν (by norm_num) hx f (Or.inl rfl)
  have h_integrable_imag
      (T : ℝ)
      (F : ℂ → ℂ)
      (hF : ∀ t ∈ Set.Icc (0 : ℝ) T, ContinuousAt (fun y : ℝ ↦ F (I * ↑y)) t) :
      Integrable (fun t : ℝ ↦ F (I * ↑t) * E (-(I * ↑t) * ↑x))
        (volume.restrict (Set.Icc (0 : ℝ) T)) := by
    apply ContinuousOn.integrableOn_compact isCompact_Icc
    apply continuousOn_of_forall_continuousAt
    intro t ht
    refine ContinuousAt.mul ?_ ?_
    · exact hF t ht
    · dsimp [E]
      fun_prop
  have hcombine (T : ℝ) :
      (I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
      - (I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
      + (2 * I * ∫ t in Set.Icc 0 T, Phi_star ν ε (I * t) * E (-(I * t) * x)) =
      ((I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (-1 + I * t) - Phi_star ν ε (-1 + I * t)) * E (-(-1 + I * t) * x))
        - (I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (I * t) - Phi_star ν ε (I * t)) * E (-(I * t) * x))) +
      ((- I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (1 + I * t) + Phi_star ν ε (1 + I * t)) * E (-(1 + I * t) * x))
        + (I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (I * t) + Phi_star ν ε (I * t)) * E (-(I * t) * x))) := by
    have hsub : ∫ t in Set.Icc 0 T,
        (Phi_circ ν ε (I * ↑t) - Phi_star ν ε (I * ↑t)) * E (-(I * ↑t) * ↑x) =
        (∫ t in Set.Icc 0 T, Phi_circ ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)) -
        (∫ t in Set.Icc 0 T, Phi_star ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)) := by
      simp_rw [sub_mul]
      refine integral_sub ?_ ?_
      · exact h_integrable_imag T (Phi_circ ν ε) (by intro t ht; exact Phi_circ.continuousAt_imag ν ε t ht.1 hν)
      · exact h_integrable_imag T (Phi_star ν ε) (by intro t ht; exact Phi_star.continuousAt_imag ν ε t ht.1 hν)
    have hadd : ∫ t in Set.Icc 0 T,
        (Phi_circ ν ε (I * ↑t) + Phi_star ν ε (I * ↑t)) * E (-(I * ↑t) * ↑x) =
        (∫ t in Set.Icc 0 T, Phi_circ ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)) +
        (∫ t in Set.Icc 0 T, Phi_star ν ε (I * ↑t) * E (-(I * ↑t) * ↑x)) := by
      simp_rw [add_mul]
      refine integral_add ?_ ?_
      · exact h_integrable_imag T (Phi_circ ν ε) (by intro t ht; exact Phi_circ.continuousAt_imag ν ε t ht.1 hν)
      · exact h_integrable_imag T (Phi_star ν ε) (by intro t ht; exact Phi_star.continuousAt_imag ν ε t ht.1 hν)
    linear_combination I * hsub - I * hadd
  have hcontour := (hAshift.add hBshift).congr' (Filter.Eventually.of_forall (fun T ↦ (hcombine T).symm))
  simpa [hfourier] using hcontour

@[blueprint
  "B-affine-periodic"
  (title := "$B^\\pm$ affine periodic")
  (statement := /-- For any integer $m$,
$$ B^\pm(w(z-m)) = B^\pm(w(z) + 2\pi i m) = B^\pm(w(z)) + 2\pi i m\, \Phi^{\pm,\circ}_{\nu}(z). $$
    -/)
  (proof := /-- This follows from the $\pi i$-periodicity of coth. -/)
  (latexEnv := "sublemma")
  (discussion := 1081)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
