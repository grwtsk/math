# addHaar_image_le_mul_of_det_lt

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
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19ddefba-06f4-4653-fc94-a37c885a230c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4123764a-bb41-e6a5-5c33-2733a0578a47",
  "kind": "theorem",
  "lexical_name": "addHaar_image_le_mul_of_det_lt",
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
  "slug": "addhaar-image-le-mul-of-det-lt--5d1e946a7fc78241f244e9b5",
  "source": {
    "blob": "0722dfdbd1a9925add31e85ce66111122561c45d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 281,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d1e946a7fc78241f244e9b581af9ffddf1ec8952683644aa8954a09429b09f7",
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

Occurrence: `result:4123764a-bb41-e6a5-5c33-2733a0578a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_image_le_mul_of_det_lt (A : E →L[ℝ] E) {m : ℝ≥0}
    (hm : ENNReal.ofReal |A.det| < m) :
    ∀ᶠ δ in 𝓝[>] (0 : ℝ≥0),
      ∀ (s : Set E) (f : E → E), ApproximatesLinearOn f A s δ → μ (f '' s) ≤ m * μ s := by
  apply nhdsWithin_le_nhds
  let d := ENNReal.ofReal |A.det|
  -- construct a small neighborhood of `A '' (closedBall 0 1)` with measure comparable to
  -- the determinant of `A`.
  obtain ⟨ε, hε, εpos⟩ :
    ∃ ε : ℝ, μ (closedBall 0 ε + A '' closedBall 0 1) < m * μ (closedBall 0 1) ∧ 0 < ε := by
    have HC : IsCompact (A '' closedBall 0 1) :=
      (ProperSpace.isCompact_closedBall _ _).image A.continuous
    have L0 :
      Tendsto (fun ε => μ (cthickening ε (A '' closedBall 0 1))) (𝓝[>] 0)
        (𝓝 (μ (A '' closedBall 0 1))) := by
      apply Tendsto.mono_left _ nhdsWithin_le_nhds
      exact tendsto_measure_cthickening_of_isCompact HC
    have L1 :
      Tendsto (fun ε => μ (closedBall 0 ε + A '' closedBall 0 1)) (𝓝[>] 0)
        (𝓝 (μ (A '' closedBall 0 1))) := by
      apply L0.congr' _
      filter_upwards [self_mem_nhdsWithin] with r hr
      rw [← HC.add_closedBall_zero (le_of_lt hr), add_comm]
    have L2 :
      Tendsto (fun ε => μ (closedBall 0 ε + A '' closedBall 0 1)) (𝓝[>] 0)
        (𝓝 (d * μ (closedBall 0 1))) := by
      convert L1
      exact (addHaar_image_continuousLinearMap _ _ _).symm
    have I : d * μ (closedBall 0 1) < m * μ (closedBall 0 1) :=
      (ENNReal.mul_lt_mul_right (measure_closedBall_pos μ _ zero_lt_one).ne'
            measure_closedBall_lt_top.ne).2
        hm
    have H :
      ∀ᶠ b : ℝ in 𝓝[>] 0, μ (closedBall 0 b + A '' closedBall 0 1) < m * μ (closedBall 0 1) :=
      (tendsto_order.1 L2).2 _ I
    exact (H.and self_mem_nhdsWithin).exists
  have : Iio (⟨ε, εpos.le⟩ : ℝ≥0) ∈ 𝓝 (0 : ℝ≥0) := by apply Iio_mem_nhds; exact εpos
  filter_upwards [this]
  -- fix a function `f` which is close enough to `A`.
  intro δ hδ s f hf
  simp only [mem_Iio, ← NNReal.coe_lt_coe, NNReal.coe_mk] at hδ
  -- This function expands the volume of any ball by at most `m`
  have I : ∀ x r, x ∈ s → 0 ≤ r → μ (f '' (s ∩ closedBall x r)) ≤ m * μ (closedBall x r) := by
    intro x r xs r0
    have K : f '' (s ∩ closedBall x r) ⊆ A '' closedBall 0 r + closedBall (f x) (ε * r) := by
      rintro y ⟨z, ⟨zs, zr⟩, rfl⟩
      rw [mem_closedBall_iff_norm] at zr
      apply Set.mem_add.2 ⟨A (z - x), _, f z - f x - A (z - x) + f x, _, _⟩
      · apply mem_image_of_mem
        simpa only [dist_eq_norm, mem_closedBall, mem_closedBall_zero_iff, sub_zero] using zr
      · rw [mem_closedBall_iff_norm, add_sub_cancel_right]
        calc
          ‖f z - f x - A (z - x)‖ ≤ δ * ‖z - x‖ := hf _ zs _ xs
          _ ≤ ε * r := by gcongr
      · simp only [map_sub, Pi.sub_apply]
        abel
    have :
      A '' closedBall 0 r + closedBall (f x) (ε * r) =
        {f x} + r • (A '' closedBall 0 1 + closedBall 0 ε) := by
      rw [smul_add, ← add_assoc, add_comm {f x}, add_assoc, smul_closedBall _ _ εpos.le, smul_zero,
        singleton_add_closedBall_zero, ← image_smul_set, _root_.smul_closedBall _ _ zero_le_one,
        smul_zero, Real.norm_eq_abs, abs_of_nonneg r0, mul_one, mul_comm]
    rw [this] at K
    calc
      μ (f '' (s ∩ closedBall x r)) ≤ μ ({f x} + r • (A '' closedBall 0 1 + closedBall 0 ε)) :=
        measure_mono K
      _ = ENNReal.ofReal (r ^ finrank ℝ E) * μ (A '' closedBall 0 1 + closedBall 0 ε) := by
        simp only [abs_of_nonneg r0, addHaar_smul, image_add_left, abs_pow, singleton_add,
          measure_preimage_add]
      _ ≤ ENNReal.ofReal (r ^ finrank ℝ E) * (m * μ (closedBall 0 1)) := by
        rw [add_comm]; gcongr
      _ = m * μ (closedBall x r) := by simp only [addHaar_closedBall' μ _ r0]; ring
  -- covering `s` by closed balls with total measure very close to `μ s`, one deduces that the
  -- measure of `f '' s` is at most `m * (μ s + a)` for any positive `a`.
  have J : ∀ᶠ a in 𝓝[>] (0 : ℝ≥0∞), μ (f '' s) ≤ m * (μ s + a) := by
    filter_upwards [self_mem_nhdsWithin] with a ha
    rw [mem_Ioi] at ha
    obtain ⟨t, r, t_count, ts, rpos, st, μt⟩ :
      ∃ (t : Set E) (r : E → ℝ),
        t.Countable ∧
          t ⊆ s ∧
            (∀ x : E, x ∈ t → 0 < r x) ∧
              (s ⊆ ⋃ x ∈ t, closedBall x (r x)) ∧
                (∑' x : ↥t, μ (closedBall (↑x) (r ↑x))) ≤ μ s + a :=
      Besicovitch.exists_closedBall_covering_tsum_measure_le μ ha.ne' (fun _ => Ioi 0) s
        fun x _ δ δpos => ⟨δ / 2, by simp [half_pos δpos, δpos]⟩
    haveI : Encodable t := t_count.toEncodable
    calc
      μ (f '' s) ≤ μ (⋃ x : t, f '' (s ∩ closedBall x (r x))) := by
        rw [biUnion_eq_iUnion] at st
        apply measure_mono
        rw [← image_iUnion, ← inter_iUnion]
        exact image_subset _ (subset_inter (Subset.refl _) st)
      _ ≤ ∑' x : t, μ (f '' (s ∩ closedBall x (r x))) := measure_iUnion_le _
      _ ≤ ∑' x : t, m * μ (closedBall x (r x)) :=
        (ENNReal.tsum_le_tsum fun x => I x (r x) (ts x.2) (rpos x x.2).le)
      _ ≤ m * (μ s + a) := by rw [ENNReal.tsum_mul_left]; gcongr
  -- taking the limit in `a`, one obtains the conclusion
  have L : Tendsto (fun a => (m : ℝ≥0∞) * (μ s + a)) (𝓝[>] 0) (𝓝 (m * (μ s + 0))) := by
    apply Tendsto.mono_left _ nhdsWithin_le_nhds
    apply ENNReal.Tendsto.const_mul (tendsto_const_nhds.add tendsto_id)
    simp only [ENNReal.coe_ne_top, Ne, or_true, not_false_iff]
  rw [add_zero] at L
  exact ge_of_tendsto L J

/-- Let `f` be a function which is sufficiently close (in the Lipschitz sense) to a given linear
map `A`. Then it expands the volume of any set by at least `m` for any `m < det A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0722dfdbd1a9925add31e85ce66111122561c45d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
