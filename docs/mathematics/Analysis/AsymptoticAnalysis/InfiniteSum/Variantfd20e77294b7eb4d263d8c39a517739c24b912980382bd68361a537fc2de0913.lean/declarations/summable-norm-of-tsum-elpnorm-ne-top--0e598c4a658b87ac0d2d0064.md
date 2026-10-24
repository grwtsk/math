# summable_norm_of_tsum_eLpNorm_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fbb455c-c4ef-c9da-3d58-ba5823174197",
  "kind": "theorem",
  "lexical_name": "summable_norm_of_tsum_eLpNorm_ne_top",
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
  "slug": "summable-norm-of-tsum-elpnorm-ne-top--0e598c4a658b87ac0d2d0064",
  "source": {
    "blob": "bc0e48481bd364de15f2b7c2713a97f24936a5f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 38,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e598c4a658b87ac0d2d0064643125e98e6a5b37dfc2e8caba179c36cbba0ec2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fbb455c-c4ef-c9da-3d58-ba5823174197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_norm_of_tsum_eLpNorm_ne_top {ι : Type*} [Countable ι]
    {p : ℝ≥0∞} (hp : 1 ≤ p) {f : ι → X → E} (h'f : ∑' n, eLpNorm (f n) p μ ≠ ∞) :
    ∀ᵐ a ∂μ, Summable (fun n ↦ ‖f n a‖) := by
  have hf n : AEStronglyMeasurable (f n) μ := by
    contrapose! h'f
    apply top_le_iff.1
    have : eLpNorm (f n) p μ = ∞ := eLpNorm_of_not_aestronglyMeasurable h'f
    rw [← this]
    exact ENNReal.le_tsum (f := fun i ↦ eLpNorm (f i) p μ) _
  suffices H : ∀ᵐ a ∂μ, ∑' n, ‖f n a‖ₑ < ∞ by
    filter_upwards [H] with x hx using tsum_enorm_ne_top_iff_summable_norm.1 hx.ne
  -- the result is straightforward in `L^∞`.
  rcases eq_top_or_lt_top p with rfl | h'p
  · have : ∀ᵐ x ∂μ, ∀ n, ‖f n x‖ₑ ≤ eLpNorm (f n) ∞ μ := ae_all_iff.2 fun n ↦ by
      filter_upwards [ae_le_eLpNormEssSup (f := f n) (μ := μ)] with x hx
      exact hx.trans eLpNormEssSup_le_eLpNorm_top
    filter_upwards [this] with x hx
    apply lt_of_le_of_lt ?_ h'f.lt_top
    gcongr with i
    exact hx i
  /- Let us now consider `p < ∞`. In a measurable set `s` of finite measure, the `L^1` norm is
  controlled by a multiple of the `L^p` norm, so the `L^1` norms are summable, i.e.,
  `∫ x ∈ s, ∑ ‖f n x‖ₑ ∂μ < ∞`. This forces the sum to be finite ae. -/
  have A (s : Set X) (hs : MeasurableSet s) (h's : μ s ≠ ∞) :
      ∀ᵐ x ∂μ, x ∈ s → ∑' n, ‖f n x‖ₑ < ∞ := by
    rw [← ae_restrict_iff' hs]
    apply ae_lt_top' (AEMeasurable.tsum (fun i ↦ (hf i).restrict.enorm))
    rw [lintegral_tsum (fun i ↦ (hf i).restrict.enorm)]
    apply ne_of_lt
    have : ∑' n, eLpNorm (f n) p (μ.restrict s) *
        (μ.restrict s) Set.univ ^ (1 / ENNReal.toReal 1 - 1 / p.toReal) < ∞ := by
      rw [ENNReal.tsum_mul_right]
      apply ENNReal.mul_lt_top ?_ ?_
      · apply lt_of_le_of_lt ?_ h'f.lt_top
        gcongr
        exact Measure.restrict_le_self
      · simp only [MeasurableSet.univ, Measure.restrict_apply, Set.univ_inter, ENNReal.toReal_one,
          ne_eq, one_ne_zero, not_false_eq_true, div_self, one_div]
        apply ENNReal.rpow_lt_top_of_nonneg _ h's
        simp only [sub_nonneg]
        apply inv_le_one_of_one_le₀
        rw [← ENNReal.ofReal_le_iff_le_toReal h'p.ne]
        simpa
    apply lt_of_le_of_lt ?_ this
    gcongr with i
    rw [← eLpNorm_one_eq_lintegral_enorm (hf i).restrict]
    exact eLpNorm_le_eLpNorm_mul_rpow_measure_univ_of_pos hp zero_lt_one
  /- We wish now to reduce to finite measure sets to apply the above. The function `f n` in `L^p`
  has a sigma-finite support, that we denote by `s n`. -/
  have B n : ∃ s, MeasurableSet s ∧ (f n =ᵐ[μ.restrict sᶜ] 0) ∧ SigmaFinite (μ.restrict s) := by
    apply AEFinStronglyMeasurable.exists_set_sigmaFinite
    have : MemLp (f n) p μ := by
      simpa [MemLp, hf] using lt_of_le_of_lt (ENNReal.le_tsum n) h'f.lt_top
    exact this.aefinStronglyMeasurable (zero_lt_one.trans_le hp).ne' h'p.ne
  choose! s s_meas hs h's using B
  /- Covering `s n` by countably many sets of finite measure, we deduce using the above that
  the series of norms is ae finite on `s n`. -/
  have C : ∀ᵐ x ∂μ, ∀ n, x ∈ s n → ∑' n, ‖f n x‖ₑ < ∞ := by
    apply ae_all_iff.2 (fun n ↦ ?_)
    have : ∀ᵐ x ∂μ, ∀ i, x ∈ s n ∩ spanningSets (μ.restrict (s n)) i → ∑' n, ‖f n x‖ₑ < ∞ := by
      apply ae_all_iff.2 (fun i ↦ ?_)
      apply A _ ((s_meas n).inter (measurableSet_spanningSets _ _))
      rw [Set.inter_comm, ← Measure.restrict_apply' (s_meas n)]
      exact (measure_spanningSets_lt_top _ _).ne
    filter_upwards [this] with x hx h'x
    obtain ⟨i, hi⟩ : ∃ i, x ∈ spanningSets (μ.restrict (s n)) i := ⟨_, mem_spanningSetsIndex _ _⟩
    exact hx i ⟨h'x, hi⟩
  /- Finally, we get the result in `⋃ n, s n`. Outside of this set, all the functions are ae
  zero, so the result is trivial there. -/
  have D : ∀ᵐ x ∂μ, ∀ n, x ∉ s n → f n x = 0 :=
    ae_all_iff.2 (fun n ↦ (ae_restrict_iff' (s_meas n).compl).1 (hs n))
  filter_upwards [C, D] with x hx h'x
  by_cases! h : ∃ n, x ∈ s n
  · rcases h with ⟨n, hn⟩
    exact hx n hn
  · have E n : f n x = 0 := h'x n (h n)
    simp [E]

namespace Lp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0e48481bd364de15f2b7c2713a97f24936a5f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
