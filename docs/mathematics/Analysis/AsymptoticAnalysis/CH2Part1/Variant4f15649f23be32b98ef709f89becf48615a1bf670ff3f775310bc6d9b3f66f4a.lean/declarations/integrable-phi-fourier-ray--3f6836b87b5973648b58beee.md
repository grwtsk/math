# integrable_phi_fourier_ray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ec4fdc-ccf0-7583-8a4e-58740f4e956b",
  "kind": "theorem",
  "lexical_name": "integrable_phi_fourier_ray",
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
  "slug": "integrable-phi-fourier-ray--3f6836b87b5973648b58beee",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3093,
    "line": 3039,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6836b87b5973648b58beee25260e5edcb8b385abc50111146c92bfd68ae103",
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

Occurrence: `result:a0ec4fdc-ccf0-7583-8a4e-58740f4e956b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3039–3093.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_phi_fourier_ray (ν ε σ x : ℝ) (hν : ν > 0) (hsigma : σ ∈ Set.Icc (-1 : ℝ) 1) (hx : x < 0)
    (f : ℂ → ℂ)
    (hf_formula : f = (fun z ↦ (Phi_circ ν ε z + Phi_star ν ε z) * E (-z * x)) ∨
                  f = (fun z ↦ (Phi_circ ν ε z - Phi_star ν ε z) * E (-z * x))) :
    IntegrableOn (fun (y : ℝ) ↦ f (σ + y * I)) (Set.Ici (0 : ℝ)) := by
  have h_cont : ContinuousOn (fun (y : ℝ) ↦ f (σ + y * I)) (Set.Ici (0 : ℝ)) := fun y hy ↦ by
    let z := ↑σ + ↑y * I
    have hy_im : 0 ≤ z.im := by dsimp [z]; simpa using hy
    have h_anal_at_z : AnalyticAt ℂ f z := by
      have hE : AnalyticAt ℂ (fun z : ℂ ↦ E (-z * x)) z := by
        simpa [E] using analyticAt_cexp.comp
          (by fun_prop : AnalyticAt ℂ (fun z : ℂ ↦ 2 * π * I * (-z * x)) z)
      rcases hf_formula with h_eq | h_eq <;> rw [h_eq]
      · exact ((Phi_circ.analyticAt_of_im_nonneg ν ε z hν hy_im).add (Phi_star.analyticAt_of_im_nonneg ν ε z hν hy_im)).mul hE
      · exact ((Phi_circ.analyticAt_of_im_nonneg ν ε z hν hy_im).sub (Phi_star.analyticAt_of_im_nonneg ν ε z hν hy_im)).mul hE
    have h_ray : ContinuousAt (fun (y' : ℝ) => ↑σ + ↑y' * I) y :=
      continuousAt_const.add (Complex.continuous_ofReal.continuousAt.mul continuousAt_const)
    exact ContinuousAt.comp_of_eq h_anal_at_z.continuousAt h_ray rfl |>.continuousWithinAt
  obtain ⟨C, hC⟩ : ∃ C, ∀ y : ℝ, y ≥ 1 → ‖f (σ + y * I)‖ ≤ C * (y + 1) * rexp (2 * π * x * y) := by
    apply phi_fourier_ray_bound ν ε σ x hν hsigma
    intro z
    rcases hf_formula with rfl | rfl <;> simp only [norm_mul]
    · exact mul_le_mul_of_nonneg_right (norm_add_le _ _) (norm_nonneg _)
    · exact mul_le_mul_of_nonneg_right (norm_sub_le _ _) (norm_nonneg _)
  let g (y : ℝ) := if y < 1 then (if y < 0 then 0 else ‖f (σ + y * I)‖) else C * (y + 1) * rexp (2 * π * x * y)
  have h_int_decay : IntegrableOn (fun y ↦ (y + 1) * rexp (2 * π * x * y)) (Set.Ici 1) := by
    have htlam : 2 * π * x < 0 := by nlinarith [hx, Real.pi_pos]
    have h1 : IntegrableOn (fun (y : ℝ) ↦ rexp (2 * π * x * y)) (Set.Ici 1) := by
      rw [integrableOn_Ici_iff_integrableOn_Ioi]
      exact integrableOn_exp_mul_Ioi htlam 1
    have h2 : IntegrableOn (fun y ↦ y * rexp (2 * π * x * y)) (Set.Ici 1) := by
      have hb : 0 < -(2 * π * x) := by nlinarith [hx, Real.pi_pos]
      have h_int := integrableOn_rpow_mul_exp_neg_mul_rpow (s := 1) (p := 1) (by norm_num) (by norm_num) hb
      refine IntegrableOn.congr_fun (f := fun (y : ℝ) ↦ y ^ (1 : ℝ) * rexp (- -(2 * π * x) * y ^ (1 : ℝ))) ?_ ?_ measurableSet_Ici
      · apply h_int.mono_set
        intro y hy; exact Set.mem_Ioi.mpr (by linarith [Set.mem_Ici.mp hy])
      · intro y _; dsimp; simp only [Real.rpow_one, neg_neg]
    simpa [add_mul] using h2.add h1
  have hg : IntegrableOn g (Set.Ici 0) := by
    rw [show Set.Ici (0 : ℝ) = Set.Ico 0 1 ∪ Set.Ici 1 from
      (Set.Ico_union_Ici_eq_Ici zero_le_one).symm]
    refine IntegrableOn.union ?_ ?_
    · have h_int_Icc : IntegrableOn (fun y : ℝ ↦ ‖f (↑σ + ↑y * I)‖) (Set.Icc 0 1) := by
        apply ContinuousOn.integrableOn_compact isCompact_Icc
        exact h_cont.norm.mono Set.Icc_subset_Ici_self
      exact IntegrableOn.congr_fun (h_int_Icc.mono_set Set.Ico_subset_Icc_self)
        (fun y hy ↦ by simp [g, hy.2, not_lt.mpr hy.1]) measurableSet_Ico
    · exact IntegrableOn.congr_fun (h_int_decay.const_mul C)
        (fun y hy ↦ by simp [g, not_lt.mpr (Set.mem_Ici.mp hy)]; ring)
        measurableSet_Ici
  refine hg.mono' (h_cont.aestronglyMeasurable measurableSet_Ici) <| (ae_restrict_iff' measurableSet_Ici).mpr <| ae_of_all _ (fun y hy ↦ ?_)
  by_cases h : y < 1
  · simp [g, h, not_lt.mpr (Set.mem_Ici.mp hy)]
  · simpa [g, h] using hC y (not_lt.mp h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L3039).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
