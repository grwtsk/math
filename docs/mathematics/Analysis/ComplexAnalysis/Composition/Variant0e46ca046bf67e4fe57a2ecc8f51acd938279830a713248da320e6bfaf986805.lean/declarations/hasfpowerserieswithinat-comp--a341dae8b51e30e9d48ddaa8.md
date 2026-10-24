# HasFPowerSeriesWithinAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03439ba4-cbac-01ea-e0b6-05d037f2f107",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinAt.comp",
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
  "slug": "hasfpowerserieswithinat-comp--a341dae8b51e30e9d48ddaa8",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 702,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a341dae8b51e30e9d48ddaa8d3cf2bbb058ee35d33445c8715ea25947446e488",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03439ba4-cbac-01ea-e0b6-05d037f2f107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinAt.comp {g : F → G} {f : E → F} {q : FormalMultilinearSeries 𝕜 F G}
    {p : FormalMultilinearSeries 𝕜 E F} {x : E} {t : Set F} {s : Set E}
    (hg : HasFPowerSeriesWithinAt g q t (f x)) (hf : HasFPowerSeriesWithinAt f p s x)
    (hs : Set.MapsTo f s t) : HasFPowerSeriesWithinAt (g ∘ f) (q.comp p) s x := by
  /- Consider `rf` and `rg` such that `f` and `g` have power series expansion on the disks
    of radius `rf` and `rg`. -/
  rcases hg with ⟨rg, Hg⟩
  rcases hf with ⟨rf, Hf⟩
  -- The terms defining `q.comp p` are geometrically summable in a disk of some radius `r`.
  rcases q.comp_summable_nnreal p Hg.radius_pos Hf.radius_pos with ⟨r, r_pos : 0 < r, hr⟩
  /- We will consider `y` which is smaller than `r` and `rf`, and also small enough that
    `f (x + y)` is close enough to `f x` to be in the disk where `g` is well behaved. Let
    `min (r, rf, δ)` be this new radius. -/
  obtain ⟨δ, δpos, hδ⟩ :
    ∃ δ : ℝ≥0∞, 0 < δ ∧ ∀ {z : E}, z ∈ insert x s ∩ EMetric.ball x δ
      → f z ∈ insert (f x) t ∩ EMetric.ball (f x) rg := by
    have : insert (f x) t ∩ EMetric.ball (f x) rg ∈ 𝓝[insert (f x) t] (f x) := by
      apply inter_mem_nhdsWithin
      exact EMetric.ball_mem_nhds _ Hg.r_pos
    have := Hf.analyticWithinAt.continuousWithinAt_insert.tendsto_nhdsWithin (hs.insert x) this
    rcases EMetric.mem_nhdsWithin_iff.1 this with ⟨δ, δpos, Hδ⟩
    exact ⟨δ, δpos, fun {z} hz => Hδ (by rwa [Set.inter_comm])⟩
  let rf' := min rf δ
  have min_pos : 0 < min rf' r := by
    simp only [rf', r_pos, Hf.r_pos, δpos, lt_min_iff, ENNReal.coe_pos, and_self_iff]
  /- We will show that `g ∘ f` admits the power series `q.comp p` in the disk of
    radius `min (r, rf', δ)`. -/
  refine ⟨min rf' r, ?_⟩
  refine
    ⟨le_trans (min_le_right rf' r) (FormalMultilinearSeries.le_comp_radius_of_summable q p r hr),
      min_pos, fun {y} h'y hy ↦ ?_⟩
  /- Let `y` satisfy `‖y‖ < min (r, rf', δ)`. We want to show that `g (f (x + y))` is the sum of
    `q.comp p` applied to `y`. -/
  -- First, check that `y` is small enough so that estimates for `f` and `g` apply.
  have y_mem : y ∈ EMetric.ball (0 : E) rf :=
    (EMetric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_left _ _))) hy
  have fy_mem : f (x + y) ∈ insert (f x) t ∩ EMetric.ball (f x) rg := by
    apply hδ
    have : y ∈ EMetric.ball (0 : E) δ :=
      (EMetric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_right _ _))) hy
    simpa [-Set.mem_insert_iff, edist_eq_enorm_sub, h'y]
  /- Now the proof starts. To show that the sum of `q.comp p` at `y` is `g (f (x + y))`,
    we will write `q.comp p` applied to `y` as a big sum over all compositions.
    Since the sum is summable, to get its convergence it suffices to get
    the convergence along some increasing sequence of sets.
    We will use the sequence of sets `compPartialSumTarget 0 n n`,
    along which the sum is exactly the composition of the partial sums of `q` and `p`, by design.
    To show that it converges to `g (f (x + y))`, pointwise convergence would not be enough,
    but we have uniform convergence to save the day. -/
  -- First step: the partial sum of `p` converges to `f (x + y)`.
  have A : Tendsto (fun n ↦ (n, ∑ a ∈ Finset.Ico 1 n, p a fun _ ↦ y))
      atTop (atTop ×ˢ 𝓝 (f (x + y) - f x)) := by
    apply Tendsto.prodMk tendsto_id
    have L : ∀ᶠ n in atTop, (∑ a ∈ Finset.range n, p a fun _b ↦ y) - f x
        = ∑ a ∈ Finset.Ico 1 n, p a fun _b ↦ y := by
      rw [eventually_atTop]
      refine ⟨1, fun n hn => ?_⟩
      symm
      rw [eq_sub_iff_add_eq', Finset.range_eq_Ico, ← Hf.coeff_zero fun _i => y,
        Finset.sum_eq_sum_Ico_succ_bot hn]
    have :
      Tendsto (fun n => (∑ a ∈ Finset.range n, p a fun _b => y) - f x) atTop
        (𝓝 (f (x + y) - f x)) :=
      (Hf.hasSum h'y y_mem).tendsto_sum_nat.sub tendsto_const_nhds
    exact Tendsto.congr' L this
  -- Second step: the composition of the partial sums of `q` and `p` converges to `g (f (x + y))`.
  have B : Tendsto (fun n => q.partialSum n (∑ a ∈ Finset.Ico 1 n, p a fun _b ↦ y)) atTop
      (𝓝 (g (f (x + y)))) := by
    -- we use the fact that the partial sums of `q` converge to `g (f (x + y))`, uniformly on a
    -- neighborhood of `f (x + y)`.
    have : Tendsto (fun (z : ℕ × F) ↦ q.partialSum z.1 z.2)
        (atTop ×ˢ 𝓝 (f (x + y) - f x)) (𝓝 (g (f x + (f (x + y) - f x)))) := by
      apply Hg.tendsto_partialSum_prod (y := f (x + y) - f x)
      · simpa [edist_eq_enorm_sub] using fy_mem.2
      · simpa using fy_mem.1
    simpa using this.comp A
  -- Third step: the sum over all compositions in `compPartialSumTarget 0 n n` converges to
  -- `g (f (x + y))`. As this sum is exactly the composition of the partial sum, this is a direct
  -- consequence of the second step
  have C :
    Tendsto
      (fun n => ∑ i ∈ compPartialSumTarget 0 n n, q.compAlongComposition p i.2 fun _j => y)
      atTop (𝓝 (g (f (x + y)))) := by
    simpa [comp_partialSum] using B
  -- Fourth step: the sum over all compositions is `g (f (x + y))`. This follows from the
  -- convergence along a subsequence proved in the third step, and the fact that the sum is Cauchy
  -- thanks to the summability properties.
  have D :
    HasSum (fun i : Σ n, Composition n => q.compAlongComposition p i.2 fun _j => y)
      (g (f (x + y))) :=
    haveI cau :
      CauchySeq fun s : Finset (Σ n, Composition n) =>
        ∑ i ∈ s, q.compAlongComposition p i.2 fun _j => y := by
      apply cauchySeq_finset_of_norm_bounded _ (NNReal.summable_coe.2 hr) _
      simp only [coe_nnnorm, NNReal.coe_mul, NNReal.coe_pow]
      rintro ⟨n, c⟩
      calc
        ‖(compAlongComposition q p c) fun _j : Fin n => y‖ ≤
            ‖compAlongComposition q p c‖ * ∏ _j : Fin n, ‖y‖ := by
          apply ContinuousMultilinearMap.le_opNorm
        _ ≤ ‖compAlongComposition q p c‖ * (r : ℝ) ^ n := by
          rw [Finset.prod_const, Finset.card_fin]
          gcongr
          rw [EMetric.mem_ball, edist_zero_eq_enorm] at hy
          have := le_trans (le_of_lt hy) (min_le_right _ _)
          rwa [enorm_le_coe, ← NNReal.coe_le_coe, coe_nnnorm] at this
    tendsto_nhds_of_cauchySeq_of_subseq cau compPartialSumTarget_tendsto_atTop C
  -- Fifth step: the sum over `n` of `q.comp p n` can be expressed as a particular resummation of
  -- the sum over all compositions, by grouping together the compositions of the same
  -- integer `n`. The convergence of the whole sum therefore implies the converence of the sum
  -- of `q.comp p n`
  have E : HasSum (fun n => (q.comp p) n fun _j => y) (g (f (x + y))) := by
    apply D.sigma
    intro n
    simp only [compAlongComposition_apply, FormalMultilinearSeries.comp,
      ContinuousMultilinearMap.sum_apply]
    exact hasSum_fintype _
  rw [Function.comp_apply]
  exact E

/-- If two functions `g` and `f` have power series `q` and `p` respectively at `f x` and `x`,
then `g ∘ f` admits the power  series `q.comp p` at `x` within `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
