# prop_2_3_tendsto_exp_damped_integral

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
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98e943b8-1f47-98f2-97e8-2d4c1e32d8e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b8f902d-242e-2d8e-2764-13690fc7184e",
  "kind": "lemma",
  "lexical_name": "prop_2_3_tendsto_exp_damped_integral",
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
  "slug": "prop-2-3-tendsto-exp-damped-integral--139ea2bcc2273d9a59f1259a",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 380,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139ea2bcc2273d9a59f1259a9b51f9df8c12faab0d97e0588a2df792013e04a3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8f902d-242e-2d8e-2764-13690fc7184e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_3_tendsto_exp_damped_integral
    {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    {φ : ℝ → ℂ} (hφ_int : Integrable φ)
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) (hx : 0 < x) :
    Filter.Tendsto
      (fun sig ↦ ∫ u in Set.Ici (-log x),
          Real.exp (-u * (sig - 1)) * 𝓕 (fun t : ℝ ↦ φ (t / T)) (u / (2 * π)))
      (nhdsWithin 1 (Set.Ioi 1))
      (nhds (∫ u in Set.Ici (-log x), 𝓕 (fun t : ℝ ↦ φ (t / T)) (u / (2 * π)))) := by
  let psi := fun t : ℝ ↦ φ (t / T)
  have hpsi_int : Integrable psi := (MeasureTheory.integrable_comp_div_iff φ hT.ne').mpr hφ_int
  have h_int_Fphi : Integrable (𝓕 φ) := fourier_integrable_of_rpow_decay hβ hφ_int hφ_Fourier
  have h_int_Fpsi : Integrable (𝓕 psi) := by
    rw [show 𝓕 psi = fun y ↦ (T : ℂ) * 𝓕 φ (T * y) from funext (fourier_scale_div_noscalar φ T · hT)]
    exact (h_int_Fphi.comp_mul_left' hT.ne').const_mul T
  apply MeasureTheory.tendsto_integral_filter_of_dominated_convergence (bound := fun u ↦ max 1 x * ‖𝓕 psi (u / (2 * π))‖)
  · filter_upwards [self_mem_nhdsWithin] with sig _
    apply AEStronglyMeasurable.mul (by fun_prop)
    refine (Continuous.aestronglyMeasurable ?_).restrict
    exact (VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar (by fun_prop) hpsi_int).comp (continuous_id.div_const _)
  · filter_upwards [self_mem_nhdsWithin, Icc_mem_nhdsGT (one_lt_two)] with sig hsig1 hsig2
    filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Ici] with u hu
    rw [Complex.norm_mul]
    push_cast
    rw [Complex.norm_exp]
    norm_cast
    refine mul_le_mul_of_nonneg_right ?_ (norm_nonneg _)
    have hsig0 : 0 ≤ sig - 1 := sub_nonneg.mpr (Set.mem_Ioi.mp hsig1).le
    have hsig_le : sig - 1 ≤ 1 := by linarith [Set.mem_Icc.mp hsig2]
    by_cases hu0 : 0 ≤ u
    · calc Real.exp (-u * (sig - 1))
        _ ≤ Real.exp 0 := Real.exp_le_exp.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hu0) hsig0)
        _ = 1 := Real.exp_zero
        _ ≤ max 1 x := le_max_left _ _
    · have : -u ≤ log x := by linarith [Set.mem_Ici.mp hu]
      have hx1 : 1 ≤ x := by
        contrapose! hu0
        have : 0 < -log x := neg_pos.mpr (Real.log_neg_iff hx |>.mpr hu0)
        linarith [Set.mem_Ici.mp hu]
      calc Real.exp (-u * (sig - 1))
        _ = Real.exp ((-u) * (sig - 1)) := by ring_nf
        _ ≤ Real.exp (log x * (sig - 1)) := Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right this hsig0)
        _ ≤ Real.exp (log x * 1) := Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hsig_le (Real.log_nonneg hx1))
        _ = x := by rw [mul_one, Real.exp_log hx]
        _ ≤ max 1 x := le_max_right _ _
  · exact (h_int_Fpsi.norm.comp_div (mul_pos zero_lt_two Real.pi_pos).ne').const_mul (max 1 x) |>.mono_measure Measure.restrict_le_self
  · filter_upwards [] with u
    have h_exp_lim : Filter.Tendsto (fun sig ↦ (rexp (-u * (sig - 1)) : ℂ))
        (nhdsWithin 1 (Set.Ioi 1)) (nhds 1) :=
      tendsto_nhdsWithin_of_tendsto_nhds (by
        have : (fun sig ↦ (rexp (-u * (sig - 1)) : ℂ)) 1 = 1 := by simp
        exact this ▸ (by fun_prop : Continuous (fun sig ↦ (rexp (-u * (sig-1)) : ℂ))).continuousAt.tendsto)
    convert h_exp_lim.mul_const (𝓕 psi (u / (2 * π))) using 1
    dsimp [psi]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
