# HasFPowerSeriesAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4665617df85c93782d95a058754fdcdb8334583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 749,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f672a96-dac5-766b-569a-33c107244ce0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8099e4cd-bb09-f32b-68fb-4908636f5e3c",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesAt.comp",
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
  "slug": "hasfpowerseriesat-comp--0a4eafc04f07886f3afde175",
  "source": {
    "blob": "a4665617df85c93782d95a058754fdcdb8334583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 749,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a4eafc04f07886f3afde17568dc8ad9e67752dfb05a975585fd4c61848d02ce",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8099e4cd-bb09-f32b-68fb-4908636f5e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesAt.comp {g : F → G} {f : E → F} {q : FormalMultilinearSeries 𝕜 F G}
    {p : FormalMultilinearSeries 𝕜 E F} {x : E} (hg : HasFPowerSeriesAt g q (f x))
    (hf : HasFPowerSeriesAt f p x) : HasFPowerSeriesAt (g ∘ f) (q.comp p) x := by
  /- Consider `rf` and `rg` such that `f` and `g` have power series expansion on the disks
    of radius `rf` and `rg`. -/
  rcases hg with ⟨rg, Hg⟩
  rcases hf with ⟨rf, Hf⟩
  -- The terms defining `q.comp p` are geometrically summable in a disk of some radius `r`.
  rcases q.comp_summable_nnreal p Hg.radius_pos Hf.radius_pos with ⟨r, r_pos : 0 < r, hr⟩
  /- We will consider `y` which is smaller than `r` and `rf`, and also small enough that
    `f (x + y)` is close enough to `f x` to be in the disk where `g` is well behaved. Let
    `min (r, rf, δ)` be this new radius.-/
  obtain ⟨δ, δpos, hδ⟩ :
    ∃ (δ : ℝ≥0∞) (_H : 0 < δ), ∀ {z : E}, z ∈ EMetric.ball x δ → f z ∈ EMetric.ball (f x) rg := by
    have : EMetric.ball (f x) rg ∈ 𝓝 (f x) := EMetric.ball_mem_nhds _ Hg.r_pos
    rcases EMetric.mem_nhds_iff.1 (Hf.analyticAt.continuousAt this) with ⟨δ, δpos, Hδ⟩
    exact ⟨δ, δpos, fun hz => Hδ hz⟩
  let rf' := min rf δ
  have min_pos : 0 < min rf' r := by
    simp only [r_pos, Hf.r_pos, δpos, lt_min_iff, ENNReal.coe_pos, and_self_iff]
  /- We will show that `g ∘ f` admits the power series `q.comp p` in the disk of
    radius `min (r, rf', δ)`. -/
  refine' ⟨min rf' r, _⟩
  refine'
    ⟨le_trans (min_le_right rf' r) (FormalMultilinearSeries.le_comp_radius_of_summable q p r hr),
      min_pos, @fun y hy => _⟩
  /- Let `y` satisfy `‖y‖ < min (r, rf', δ)`. We want to show that `g (f (x + y))` is the sum of
    `q.comp p` applied to `y`. -/
  -- First, check that `y` is small enough so that estimates for `f` and `g` apply.
  have y_mem : y ∈ EMetric.ball (0 : E) rf :=
    (EMetric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_left _ _))) hy
  have fy_mem : f (x + y) ∈ EMetric.ball (f x) rg := by
    apply hδ
    have : y ∈ EMetric.ball (0 : E) δ :=
      (EMetric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_right _ _))) hy
    simpa [edist_eq_coe_nnnorm_sub, edist_eq_coe_nnnorm]
  /- Now the proof starts. To show that the sum of `q.comp p` at `y` is `g (f (x + y))`,
    we will write `q.comp p` applied to `y` as a big sum over all compositions.
    Since the sum is summable, to get its convergence it suffices to get
    the convergence along some increasing sequence of sets.
    We will use the sequence of sets `comp_partial_sum_target 0 n n`,
    along which the sum is exactly the composition of the partial sums of `q` and `p`, by design.
    To show that it converges to `g (f (x + y))`, pointwise convergence would not be enough,
    but we have uniform convergence to save the day. -/
  -- First step: the partial sum of `p` converges to `f (x + y)`.
  have A : Tendsto (fun n => ∑ a in Finset.Ico 1 n, p a fun _b => y)
      atTop (𝓝 (f (x + y) - f x)) := by
    have L :
      ∀ᶠ n in atTop, (∑ a in Finset.range n, p a fun _b => y) - f x
        = ∑ a in Finset.Ico 1 n, p a fun _b => y := by
      rw [eventually_atTop]
      refine' ⟨1, fun n hn => _⟩
      symm
      rw [eq_sub_iff_add_eq', Finset.range_eq_Ico, ← Hf.coeff_zero fun _i => y,
        Finset.sum_eq_sum_Ico_succ_bot hn]
    have :
      Tendsto (fun n => (∑ a in Finset.range n, p a fun _b => y) - f x) atTop
        (𝓝 (f (x + y) - f x)) :=
      (Hf.hasSum y_mem).tendsto_sum_nat.sub tendsto_const_nhds
    exact Tendsto.congr' L this
  -- Second step: the composition of the partial sums of `q` and `p` converges to `g (f (x + y))`.
  have B :
    Tendsto (fun n => q.partialSum n (∑ a in Finset.Ico 1 n, p a fun _b => y)) atTop
      (𝓝 (g (f (x + y)))) := by
    -- we use the fact that the partial sums of `q` converge locally uniformly to `g`, and that
    -- composition passes to the limit under locally uniform convergence.
    have B₁ : ContinuousAt (fun z : F => g (f x + z)) (f (x + y) - f x) := by
      refine' ContinuousAt.comp _ (continuous_const.add continuous_id).continuousAt
      simp only [add_sub_cancel'_right, id.def]
      exact Hg.continuousOn.continuousAt (IsOpen.mem_nhds EMetric.isOpen_ball fy_mem)
    have B₂ : f (x + y) - f x ∈ EMetric.ball (0 : F) rg := by
      simpa [edist_eq_coe_nnnorm, edist_eq_coe_nnnorm_sub] using fy_mem
    rw [← EMetric.isOpen_ball.nhdsWithin_eq B₂] at A
    convert Hg.tendstoLocallyUniformlyOn.tendsto_comp B₁.continuousWithinAt B₂ A
    simp only [add_sub_cancel'_right]
  -- Third step: the sum over all compositions in `comp_partial_sum_target 0 n n` converges to
  -- `g (f (x + y))`. As this sum is exactly the composition of the partial sum, this is a direct
  -- consequence of the second step
  have C :
    Tendsto
      (fun n => ∑ i in compPartialSumTarget 0 n n, q.compAlongComposition p i.2 fun _j => y)
      atTop (𝓝 (g (f (x + y)))) :=
    by simpa [comp_partialSum] using B
  -- Fourth step: the sum over all compositions is `g (f (x + y))`. This follows from the
  -- convergence along a subsequence proved in the third step, and the fact that the sum is Cauchy
  -- thanks to the summability properties.
  have D :
    HasSum (fun i : Σ n, Composition n => q.compAlongComposition p i.2 fun _j => y)
      (g (f (x + y))) :=
    haveI cau :
      CauchySeq fun s : Finset (Σ n, Composition n) =>
        ∑ i in s, q.compAlongComposition p i.2 fun _j => y := by
      apply cauchySeq_finset_of_norm_bounded _ (NNReal.summable_coe.2 hr) _
      simp only [coe_nnnorm, NNReal.coe_mul, NNReal.coe_pow]
      rintro ⟨n, c⟩
      calc
        ‖(compAlongComposition q p c) fun _j : Fin n => y‖ ≤
            ‖compAlongComposition q p c‖ * ∏ _j : Fin n, ‖y‖ :=
          by apply ContinuousMultilinearMap.le_op_norm
        _ ≤ ‖compAlongComposition q p c‖ * (r : ℝ) ^ n := by
          apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
          rw [Finset.prod_const, Finset.card_fin]
          apply pow_le_pow_of_le_left (norm_nonneg _)
          rw [EMetric.mem_ball, edist_eq_coe_nnnorm] at hy
          have := le_trans (le_of_lt hy) (min_le_right _ _)
          rwa [ENNReal.coe_le_coe, ← NNReal.coe_le_coe, coe_nnnorm] at this
    tendsto_nhds_of_cauchySeq_of_subseq cau compPartialSumTarget_tendsto_atTop C
  -- Fifth step: the sum over `n` of `q.comp p n` can be expressed as a particular resummation of
  -- the sum over all compositions, by grouping together the compositions of the same
  -- integer `n`. The convergence of the whole sum therefore implies the converence of the sum
  -- of `q.comp p n`
  have E : HasSum (fun n => (q.comp p) n fun _j => y) (g (f (x + y))) := by
    apply D.sigma
    intro n
    dsimp [FormalMultilinearSeries.comp]
    convert hasSum_fintype (α := G) (β := Composition n) _
    simp only [ContinuousMultilinearMap.sum_apply]
    rfl
  rw [Function.comp_apply]
  exact E

#align has_fpower_series_at.comp HasFPowerSeriesAt.comp

/-- If two functions `g` and `f` are analytic respectively at `f x` and `x`, then `g ∘ f` is
analytic at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4665617df85c93782d95a058754fdcdb8334583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
