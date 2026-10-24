# addHaar_image_le_lintegral_abs_det_fderiv_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0722dfdbd1a9925add31e85ce66111122561c45d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 783,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b53516e-d830-4c89-c4ae-901d6f2ed760",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63f19592-bb76-6a39-c7f6-d631fa72eb3d",
  "kind": "theorem",
  "lexical_name": "addHaar_image_le_lintegral_abs_det_fderiv_aux1",
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
  "slug": "addhaar-image-le-lintegral-abs-det-fderiv-aux1--f104ad3cab16c65ccd569648",
  "source": {
    "blob": "0722dfdbd1a9925add31e85ce66111122561c45d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 861,
    "line": 783,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f104ad3cab16c65ccd569648a5e61e48eeaeb4432f71a8e30b50958bf1f1a5ee",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f19592-bb76-6a39-c7f6-d631fa72eb3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_image_le_lintegral_abs_det_fderiv_aux1 (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) {ε : ℝ≥0} (εpos : 0 < ε) :
    μ (f '' s) ≤ (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) + 2 * ε * μ s := by
  /- To bound `μ (f '' s)`, we cover `s` by sets where `f` is well-approximated by linear maps
    `A n` (and where `f'` is almost everywhere close to `A n`), and then use that `f` expands the
    measure of such a set by at most `(A n).det + ε`. -/
  have :
    ∀ A : E →L[ℝ] E,
      ∃ δ : ℝ≥0,
        0 < δ ∧
          (∀ B : E →L[ℝ] E, ‖B - A‖ ≤ δ → |B.det - A.det| ≤ ε) ∧
            ∀ (t : Set E) (g : E → E), ApproximatesLinearOn g A t δ →
              μ (g '' t) ≤ (ENNReal.ofReal |A.det| + ε) * μ t := by
    intro A
    let m : ℝ≥0 := Real.toNNReal |A.det| + ε
    have I : ENNReal.ofReal |A.det| < m := by
      simp only [m, ENNReal.ofReal, lt_add_iff_pos_right, εpos, ENNReal.coe_lt_coe]
    rcases ((addHaar_image_le_mul_of_det_lt μ A I).and self_mem_nhdsWithin).exists with ⟨δ, h, δpos⟩
    obtain ⟨δ', δ'pos, hδ'⟩ : ∃ (δ' : ℝ), 0 < δ' ∧ ∀ B, dist B A < δ' → dist B.det A.det < ↑ε := by
      refine continuousAt_iff.1 ?_ ε εpos
      exact ContinuousLinearMap.continuous_det.continuousAt
    let δ'' : ℝ≥0 := ⟨δ' / 2, (half_pos δ'pos).le⟩
    refine ⟨min δ δ'', lt_min δpos (half_pos δ'pos), ?_, ?_⟩
    · intro B hB
      rw [← Real.dist_eq]
      apply (hδ' B _).le
      rw [dist_eq_norm]
      calc
        ‖B - A‖ ≤ (min δ δ'' : ℝ≥0) := hB
        _ ≤ δ'' := by simp only [le_refl, NNReal.coe_min, min_le_iff, or_true]
        _ < δ' := half_lt_self δ'pos
    · intro t g htg
      exact h t g (htg.mono_num (min_le_left _ _))
  choose δ hδ using this
  obtain ⟨t, A, t_disj, t_meas, t_cover, ht, -⟩ :
    ∃ (t : ℕ → Set E) (A : ℕ → E →L[ℝ] E),
      Pairwise (Disjoint on t) ∧
        (∀ n : ℕ, MeasurableSet (t n)) ∧
          (s ⊆ ⋃ n : ℕ, t n) ∧
            (∀ n : ℕ, ApproximatesLinearOn f (A n) (s ∩ t n) (δ (A n))) ∧
              (s.Nonempty → ∀ n, ∃ y ∈ s, A n = f' y) :=
    exists_partition_approximatesLinearOn_of_hasFDerivWithinAt f s f' hf' δ fun A => (hδ A).1.ne'
  calc
    μ (f '' s) ≤ μ (⋃ n, f '' (s ∩ t n)) := by
      apply measure_mono
      rw [← image_iUnion, ← inter_iUnion]
      exact image_subset f (subset_inter Subset.rfl t_cover)
    _ ≤ ∑' n, μ (f '' (s ∩ t n)) := measure_iUnion_le _
    _ ≤ ∑' n, (ENNReal.ofReal |(A n).det| + ε) * μ (s ∩ t n) := by
      apply ENNReal.tsum_le_tsum fun n => ?_
      apply (hδ (A n)).2.2
      exact ht n
    _ = ∑' n, ∫⁻ _ in s ∩ t n, ENNReal.ofReal |(A n).det| + ε ∂μ := by
      simp only [lintegral_const, MeasurableSet.univ, Measure.restrict_apply, univ_inter]
    _ ≤ ∑' n, ∫⁻ x in s ∩ t n, ENNReal.ofReal |(f' x).det| + 2 * ε ∂μ := by
      apply ENNReal.tsum_le_tsum fun n => ?_
      apply lintegral_mono_ae
      filter_upwards [(ht n).norm_fderiv_sub_le μ (hs.inter (t_meas n)) f' fun x hx =>
          (hf' x hx.1).mono inter_subset_left]
      intro x hx
      have I : |(A n).det| ≤ |(f' x).det| + ε :=
        calc
          |(A n).det| = |(f' x).det - ((f' x).det - (A n).det)| := by congr 1; abel
          _ ≤ |(f' x).det| + |(f' x).det - (A n).det| := abs_sub _ _
          _ ≤ |(f' x).det| + ε := add_le_add le_rfl ((hδ (A n)).2.1 _ hx)
      calc
        ENNReal.ofReal |(A n).det| + ε ≤ ENNReal.ofReal (|(f' x).det| + ε) + ε := by gcongr
        _ = ENNReal.ofReal |(f' x).det| + 2 * ε := by
          simp only [ENNReal.ofReal_add, abs_nonneg, two_mul, add_assoc, NNReal.zero_le_coe,
            ENNReal.ofReal_coe_nnreal]
    _ = ∫⁻ x in ⋃ n, s ∩ t n, ENNReal.ofReal |(f' x).det| + 2 * ε ∂μ := by
      have M : ∀ n : ℕ, MeasurableSet (s ∩ t n) := fun n => hs.inter (t_meas n)
      rw [lintegral_iUnion M]
      exact pairwise_disjoint_mono t_disj fun n => inter_subset_right
    _ = ∫⁻ x in s, ENNReal.ofReal |(f' x).det| + 2 * ε ∂μ := by
      rw [← inter_iUnion, inter_eq_self_of_subset_left t_cover]
    _ = (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) + 2 * ε * μ s := by
      simp only [lintegral_add_right' _ aemeasurable_const, setLIntegral_const]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0722dfdbd1a9925add31e85ce66111122561c45d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
