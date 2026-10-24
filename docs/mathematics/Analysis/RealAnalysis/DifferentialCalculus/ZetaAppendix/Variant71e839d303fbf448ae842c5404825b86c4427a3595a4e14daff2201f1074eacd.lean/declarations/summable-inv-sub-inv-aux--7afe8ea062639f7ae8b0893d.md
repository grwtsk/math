# summable_inv_sub_inv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4c0a93d-28b4-fe70-25bd-547a567edcbc",
  "kind": "lemma",
  "lexical_name": "summable_inv_sub_inv_aux",
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
  "slug": "summable-inv-sub-inv-aux--7afe8ea062639f7ae8b0893d",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2505,
    "line": 2457,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afe8ea062639f7ae8b0893d48d46185297638b2d013fbbfeaa9c69221069ba7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4c0a93d-28b4-fe70-25bd-547a567edcbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2457–2505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_inv_sub_inv_aux {z w : ℂ} (hz : z ∈ integerComplement) (hw : w ∈ integerComplement) :
    Summable (fun n : ℤ ↦ 1 / (w - n) - 1 / (z - n)) := by
  have h_bound : (fun n : ℤ ↦ 1 / (w - n) - 1 / (z - n)) =O[Filter.cofinite] (fun n : ℤ ↦ (1 : ℝ) / (n : ℝ)^2) := by
    have h_eq : ∀ᶠ (n : ℤ) in Filter.cofinite, 1 / (w - n) - 1 / (z - n) = (z - w) / ((w - n) * (z - n)) := by
      filter_upwards [Filter.eventually_cofinite_ne (0 : ℤ)] with n hn
      rw [div_sub_div]
      · ring
      · exact sub_ne_zero.mpr (fun h ↦ hw ⟨n, by simp [h]⟩)
      · exact sub_ne_zero.mpr (fun h ↦ hz ⟨n, by simp [h]⟩)
    refine (Asymptotics.isBigO_congr h_eq (Eventually.of_forall fun _ ↦ rfl)).mpr ?_
    apply Asymptotics.IsBigO.trans (g := fun n : ℤ ↦ (1 : ℝ) / |n|^2)
    · apply Asymptotics.IsBigO.of_bound (4 * ‖z - w‖)
      filter_upwards [tendsto_norm_cocompact_atTop.comp Int.tendsto_coe_cofinite |>.eventually (eventually_ge_atTop (max (2 * ‖w‖) (2 * ‖z‖)))] with n hn
      simp only [norm_div, norm_mul, norm_pow]
      rw [Real.norm_of_nonneg (by positivity)]
      have hw' : ‖w‖ ≤ |(n : ℝ)| / 2 := by
        have : (max (2 * ‖w‖) (2 * ‖z‖) : ℝ) ≤ |(n : ℝ)| := hn
        linarith [le_max_left (2 * ‖w‖) (2 * ‖z‖)]
      have hz' : ‖z‖ ≤ |(n : ℝ)| / 2 := by
        have : (max (2 * ‖w‖) (2 * ‖z‖) : ℝ) ≤ |(n : ℝ)| := hn
        linarith [le_max_right (2 * ‖w‖) (2 * ‖z‖)]
      have hwn : ‖w - n‖ ≥ |(n : ℝ)| / 2 := by
        rw [norm_sub_rev]
        calc
          ‖(n : ℂ) - w‖ ≥ ‖(n : ℂ)‖ - ‖w‖ := norm_sub_norm_le ..
          _ = |(n : ℝ)| - ‖w‖ := by rw [norm_intCast]
          _ ≥ |(n : ℝ)| - |(n : ℝ)| / 2 := by linarith
          _ = |(n : ℝ)| / 2 := by ring
      have hzn : ‖z - n‖ ≥ |(n : ℝ)| / 2 := by
        rw [norm_sub_rev]
        calc
          ‖(n : ℂ) - z‖ ≥ ‖(n : ℂ)‖ - ‖z‖ := norm_sub_norm_le ..
          _ = |(n : ℝ)| - ‖z‖ := by rw [norm_intCast]
          _ ≥ |(n : ℝ)| - |(n : ℝ)| / 2 := by linarith
          _ = |(n : ℝ)| / 2 := by ring
      calc
        ‖z - w‖ / (‖w - n‖ * ‖z - n‖)
          ≤ ‖z - w‖ / (|(n : ℝ)| / 2 * (|(n : ℝ)| / 2)) := by
            have h_n_pos : 0 < |(n : ℝ)| / 2 := by
              have h_z_pos : 0 < ‖z‖ := norm_pos_iff.mpr (fun h ↦ hz ⟨0, by simp [h.symm]⟩)
              have : 2 * ‖z‖ ≤ |(n : ℝ)| := (le_max_right _ _).trans hn
              linarith
            gcongr
        _ = 4 * ‖z - w‖ * (1 / |(n : ℝ)| ^ 2) := by ring
        _ = 4 * ‖z - w‖ * (1 / ‖(↑|n| : ℝ)‖ ^ 2) := by
          simp [abs_abs, Int.cast_abs, Real.norm_eq_abs]
    · exact (Asymptotics.isBigO_refl _ _).congr_left (fun n ↦ by simp)
  exact summable_of_isBigO (summable_one_div_int_pow.mpr one_lt_two) h_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L2457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
