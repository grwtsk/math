# mellin_zetaKernel₁_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b82d8ba-e2b4-aa59-7102-efe7a6951ad6",
  "kind": "theorem",
  "lexical_name": "mellin_zetaKernel₁_eq_tsum",
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
  "slug": "mellin-zetakernel-eq-tsum--86c2ee9c5d7781006c1e45a5",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 518,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c2ee9c5d7781006c1e45a50f35f88e0af90c71845c29e2a5a7710925437ea7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b82d8ba-e2b4-aa59-7102-efe7a6951ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_zetaKernel₁_eq_tsum {s : ℂ} (hs : 1 / 2 < s.re) :
    mellin zetaKernel₁ s = (π : ℂ) ^ (-s) * Gamma s * ∑' n : ℕ, 1 / ((n : ℂ) + 1) ^ (2 * s) := by
  let bd : ℕ → ℝ → ℝ := fun n t => t ^ (s.re - 1) * exp (-π * t * ((n : ℝ) + 1) ^ 2)
  let f : ℕ → ℝ → ℂ := fun n t => (t : ℂ) ^ (s - 1) * exp (-π * t * ((n : ℝ) + 1) ^ 2)
  have hm : MeasurableSet (Ioi (0 : ℝ)) := measurableSet_Ioi
  have h_norm : ∀ (n : ℕ) {t : ℝ} (_ : 0 < t), ‖f n t‖ = bd n t := by
    intro n t ht
    rw [norm_mul, Complex.norm_eq_abs, Complex.norm_eq_abs, Complex.abs_of_nonneg (exp_pos _).le,
      abs_cpow_eq_rpow_re_of_pos ht, sub_re, one_re]
  have hf_meas : ∀ n : ℕ, AEStronglyMeasurable (f n) (volume.restrict <| Ioi 0) := by
    intro n
    refine (ContinuousOn.mul ?_ ?_).aestronglyMeasurable hm
    · exact ContinuousAt.continuousOn fun x hx =>
          continuousAt_ofReal_cpow_const _ _ <| Or.inr <| ne_of_gt hx
    · apply Continuous.continuousOn
      exact continuous_ofReal.comp
          (continuous_exp.comp ((continuous_const.mul continuous_id').mul continuous_const))
  have h_le : ∀ n : ℕ, ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0), ‖f n t‖ ≤ bd n t := fun n =>
    (ae_restrict_iff' hm).mpr (ae_of_all _ fun t ht => le_of_eq (h_norm n ht))
  have h_sum0 : ∀ {t : ℝ} (_ : 0 < t), HasSum (fun n => f n t)
      ((t : ℂ) ^ (s - 1) * zetaKernel₁ t) := by
    intro t ht
    rw [zetaKernel₁]
    convert
      (hasSum_ofReal.mpr (summable_exp_neg_pi_mul_nat_sq ht).hasSum).mul_left ((t : ℂ) ^ (s - 1))
    simp only [neg_mul, ofReal_exp, ofReal_neg, ofReal_mul, ofReal_pow, ofReal_add,
      ofReal_nat_cast, ofReal_one, ofReal_tsum]
  have h_sum' : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0), HasSum (fun n : ℕ => f n t)
      ((t : ℂ) ^ (s - 1) * zetaKernel₁ t) :=
    (ae_restrict_iff' hm).mpr (ae_of_all _ fun t ht => h_sum0 ht)
  have h_sum : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0), Summable fun n : ℕ => bd n t := by
    refine (ae_restrict_iff' hm).mpr (ae_of_all _ fun t ht => ?_)
    simpa only [fun n => h_norm n ht] using summable_norm_iff.mpr (h_sum0 ht).summable
  have h_int : Integrable (fun t : ℝ => ∑' n : ℕ, bd n t) (volume.restrict (Ioi 0)) := by
    refine IntegrableOn.congr_fun
        (mellinConvergent_of_isBigO_rpow_exp pi_pos locally_integrable_zetaKernel₁
            isBigO_atTop_zetaKernel₁ isBigO_zero_zetaKernel₁ hs).norm (fun t ht => ?_) hm
    rw [tsum_mul_left, norm_smul, Complex.norm_eq_abs, abs_cpow_eq_rpow_re_of_pos ht, sub_re,
      one_re, zetaKernel₁, ← ofReal_tsum, Complex.norm_eq_abs, Complex.abs_of_nonneg]
    exact tsum_nonneg fun n => (exp_pos _).le
  rw [← tsum_mul_left]
  simp_rw [← integral_cpow_mul_exp_neg_pi_mul_sq (one_half_pos.trans hs)]
  rw [← (hasSum_integral_of_dominated_convergence bd hf_meas h_le h_sum h_int h_sum').tsum_eq.symm]
  rfl
#align mellin_zeta_kernel₁_eq_tsum mellin_zetaKernel₁_eq_tsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
