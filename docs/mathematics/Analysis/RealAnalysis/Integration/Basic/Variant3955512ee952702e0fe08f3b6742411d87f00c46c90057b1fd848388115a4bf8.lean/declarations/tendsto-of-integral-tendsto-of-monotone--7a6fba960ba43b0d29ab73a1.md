# tendsto_of_integral_tendsto_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0021d8b8-702c-9ca0-8045-4dbe79327cb0",
  "kind": "lemma",
  "lexical_name": "tendsto_of_integral_tendsto_of_monotone",
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
  "slug": "tendsto-of-integral-tendsto-of-monotone--7a6fba960ba43b0d29ab73a1",
  "source": {
    "blob": "9c1a5aaebbdb15941b2f15ffaa8616528d0f4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 860,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a6fba960ba43b0d29ab73a10c22f9c967856ff29ebf5e285355743f281a2d32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0021d8b8-702c-9ca0-8045-4dbe79327cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_integral_tendsto_of_monotone {μ : Measure α} {f : ℕ → α → ℝ} {F : α → ℝ}
    (hf_int : ∀ n, Integrable (f n) μ) (hF_int : Integrable F μ)
    (hf_tendsto : Tendsto (fun i ↦ ∫ a, f i a ∂μ) atTop (𝓝 (∫ a, F a ∂μ)))
    (hf_mono : ∀ᵐ a ∂μ, Monotone (fun i ↦ f i a))
    (hf_bound : ∀ᵐ a ∂μ, ∀ i, f i a ≤ F a) :
    ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F a)) := by
  -- reduce to the `ℝ≥0∞` case
  let f' : ℕ → α → ℝ≥0∞ := fun n a ↦ ENNReal.ofReal (f n a - f 0 a)
  let F' : α → ℝ≥0∞ := fun a ↦ ENNReal.ofReal (F a - f 0 a)
  have hf'_int_eq : ∀ i, ∫⁻ a, f' i a ∂μ = ENNReal.ofReal (∫ a, f i a ∂μ - ∫ a, f 0 a ∂μ) := by
    intro i
    unfold f'
    rw [← ofReal_integral_eq_lintegral_ofReal, integral_sub (hf_int i) (hf_int 0)]
    · exact (hf_int i).sub (hf_int 0)
    · filter_upwards [hf_mono] with a h_mono
      simp [h_mono zero_le]
  have hF'_int_eq : ∫⁻ a, F' a ∂μ = ENNReal.ofReal (∫ a, F a ∂μ - ∫ a, f 0 a ∂μ) := by
    unfold F'
    rw [← ofReal_integral_eq_lintegral_ofReal, integral_sub hF_int (hf_int 0)]
    · exact hF_int.sub (hf_int 0)
    · filter_upwards [hf_bound] with a h_bound
      simp [h_bound 0]
  have h_tendsto : Tendsto (fun i ↦ ∫⁻ a, f' i a ∂μ) atTop (𝓝 (∫⁻ a, F' a ∂μ)) := by
    simp_rw [hf'_int_eq, hF'_int_eq]
    refine (ENNReal.continuous_ofReal.tendsto _).comp ?_
    rwa [tendsto_sub_const_iff]
  have h_mono : ∀ᵐ a ∂μ, Monotone (fun i ↦ f' i a) := by
    filter_upwards [hf_mono] with a ha_mono i j hij
    refine ENNReal.ofReal_le_ofReal ?_
    simp [ha_mono hij]
  have h_bound : ∀ᵐ a ∂μ, ∀ i, f' i a ≤ F' a := by
    filter_upwards [hf_bound] with a ha_bound i
    refine ENNReal.ofReal_le_ofReal ?_
    simp only [tsub_le_iff_right, sub_add_cancel, ha_bound i]
  -- use the corresponding lemma for `ℝ≥0∞`
  have h := tendsto_of_lintegral_tendsto_of_monotone ?_ h_tendsto h_mono h_bound ?_
  rotate_left
  · exact (hF_int.1.aemeasurable.sub (hf_int 0).1.aemeasurable).ennreal_ofReal
  · exact ((lintegral_ofReal_le_lintegral_enorm _).trans_lt (hF_int.sub (hf_int 0)).2).ne
  filter_upwards [h, hf_mono, hf_bound] with a ha ha_mono ha_bound
  have h1 : (fun i ↦ f i a) = fun i ↦ (f' i a).toReal + f 0 a := by
    unfold f'
    ext i
    rw [ENNReal.toReal_ofReal]
    · abel
    · simp [ha_mono zero_le]
  have h2 : F a = (F' a).toReal + f 0 a := by
    unfold F'
    rw [ENNReal.toReal_ofReal]
    · abel
    · simp [ha_bound 0]
  rw [h1, h2]
  refine Filter.Tendsto.add ?_ tendsto_const_nhds
  exact (ENNReal.continuousAt_toReal (by finiteness)).tendsto.comp ha

/-- If an antitone sequence of functions has a lower bound and the sequence of integrals of these
functions tends to the integral of the lower bound, then the sequence of functions converges
almost everywhere to the lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1a5aaebbdb15941b2f15ffaa8616528d0f4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
