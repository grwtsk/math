# lintegral_comp_eq_lintegral_meas_le_mul_of_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9d012bd-a144-175f-6eba-59059a47e3a1",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_eq_lintegral_meas_le_mul_of_measurable",
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
  "slug": "lintegral-comp-eq-lintegral-meas-le-mul-of-measurable--50b24878d0428ddac61a0bae",
  "source": {
    "blob": "7f7df4ecfb474def3681bb622071838acc047db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b24878d0428ddac61a0bae6537fd0f345b8328d3b843deb5bd82d6d25b5bfc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9d012bd-a144-175f-6eba-59059a47e3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_le_mul_of_measurable (μ : Measure α)
    (f_nn : 0 ≤ f) (f_mble : Measurable f)
    (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t) (g_mble : Measurable g)
    (g_nn : ∀ t > 0, 0 ≤ g t) :
    ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ =
      ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
  /- We will reduce to the sigma-finite case, after excluding two easy cases where the result
  is more or less obvious. -/
  have f_nonneg : ∀ ω, 0 ≤ f ω := fun ω ↦ f_nn ω
  -- trivial case where `g` is ae zero. Then both integrals vanish.
  by_cases H1 : g =ᵐ[volume.restrict (Ioi (0 : ℝ))] 0
  · have A : ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ = 0 := by
      have : ∀ ω, ∫ t in (0)..f ω, g t = ∫ t in (0)..f ω, 0 := by
        intro ω
        simp_rw [intervalIntegral.integral_of_le (f_nonneg ω)]
        apply integral_congr_ae
        exact ae_restrict_of_ae_restrict_of_subset Ioc_subset_Ioi_self H1
      simp [this]
    have B : ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) = 0 := by
      have : (fun t ↦ μ {a : α | t ≤ f a} * ENNReal.ofReal (g t))
        =ᵐ[volume.restrict (Ioi (0 : ℝ))] 0 := by
          filter_upwards [H1] with t ht using by simp [ht]
      simp [lintegral_congr_ae this]
    rw [A, B]
  -- easy case where both sides are obviously infinite: for some `s`, one has
  -- `μ {a : α | s < f a} = ∞` and moreover `g` is not ae zero on `[0, s]`.
  by_cases H2 : ∃ s > 0, 0 < ∫ t in (0)..s, g t ∧ μ {a : α | s < f a} = ∞
  · rcases H2 with ⟨s, s_pos, hs, h's⟩
    rw [intervalIntegral.integral_of_le s_pos.le] at hs
    /- The first integral is infinite, as for `t ∈ [0, s]` one has `μ {a : α | t ≤ f a} = ∞`,
    and moreover the additional integral `g` is not uniformly zero. -/
    have A : ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) = ∞ := by
      rw [eq_top_iff]
      calc
      ∞ = ∫⁻ t in Ioc 0 s, ∞ * ENNReal.ofReal (g t) := by
          have I_pos : ∫⁻ (a : ℝ) in Ioc 0 s, ENNReal.ofReal (g a) ≠ 0 := by
            rw [← ofReal_integral_eq_lintegral_ofReal (g_intble s s_pos).1]
            · simpa only [not_lt, ne_eq, ENNReal.ofReal_eq_zero, not_le] using hs
            · filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht using g_nn _ ht.1
          rw [lintegral_const_mul, ENNReal.top_mul I_pos]
          exact ENNReal.measurable_ofReal.comp g_mble
      _ ≤ ∫⁻ t in Ioc 0 s, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
          apply setLIntegral_mono' measurableSet_Ioc (fun x hx ↦ ?_)
          rw [← h's]
          gcongr
          exact fun a ha ↦ hx.2.trans (le_of_lt ha)
      _ ≤ ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t) :=
          lintegral_mono_set Ioc_subset_Ioi_self
    /- The second integral is infinite, as one integrates among other things on those `ω` where
    `f ω > s`: this is an infinite measure set, and on it the integrand is bounded below
    by `∫ t in 0..s, g t` which is positive. -/
    have B : ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ = ∞ := by
      rw [eq_top_iff]
      calc
      ∞ = ∫⁻ _ in {a | s < f a}, ENNReal.ofReal (∫ t in (0)..s, g t) ∂μ := by
          simp only [lintegral_const, MeasurableSet.univ, Measure.restrict_apply, univ_inter,
            h's, ne_eq, ENNReal.ofReal_eq_zero, not_le]
          rw [ENNReal.mul_top]
          simpa [intervalIntegral.integral_of_le s_pos.le] using hs
      _ ≤ ∫⁻ ω in {a | s < f a}, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ := by
          apply setLIntegral_mono' (measurableSet_lt measurable_const f_mble) (fun a ha ↦ ?_)
          apply ENNReal.ofReal_le_ofReal
          apply intervalIntegral.integral_mono_interval le_rfl s_pos.le (le_of_lt ha)
          · filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht using g_nn _ ht.1
          · exact g_intble _ (s_pos.trans ha)
      _ ≤ ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ := setLIntegral_le_lintegral _ _
    rw [A, B]
  /- It remains to handle the interesting case, where `g` is not zero, but both integrals are
  not obviously infinite. Let `M` be the largest number such that `g = 0` on `[0, M]`. Then we
  may restrict `μ` to the points where `f ω > M` (as the other ones do not contribute to the
  integral). The restricted measure `ν` is sigma-finite, as `μ` gives finite measure to
  `{ω | f ω > a}` for any `a > M` (otherwise, we would be in the easy case above), so that
  one can write (a full measure subset of) the space as the countable union of the finite measure
  sets `{ω | f ω > uₙ}` for `uₙ` a sequence decreasing to `M`. Therefore,
  this case follows from the case where the measure is sigma-finite, applied to `ν`. -/
  push_neg at H2
  have M_bdd : BddAbove {s : ℝ | g =ᵐ[volume.restrict (Ioc (0 : ℝ) s)] 0} := by
    contrapose! H1
    have : ∀ (n : ℕ), g =ᵐ[volume.restrict (Ioc (0 : ℝ) n)] 0 := by
      intro n
      rcases not_bddAbove_iff.1 H1 n with ⟨s, hs, ns⟩
      exact ae_restrict_of_ae_restrict_of_subset (Ioc_subset_Ioc_right ns.le) hs
    have Hg : g =ᵐ[volume.restrict (⋃ (n : ℕ), (Ioc (0 : ℝ) n))] 0 :=
      (ae_restrict_iUnion_iff _ _).2 this
    have : (⋃ (n : ℕ), (Ioc (0 : ℝ) n)) = Ioi 0 :=
      iUnion_Ioc_eq_Ioi_self_iff.2 (fun x _ ↦ exists_nat_ge x)
    rwa [this] at Hg
  -- let `M` be the largest number such that `g` vanishes ae on `(0, M]`.
  let M : ℝ := sSup {s : ℝ | g =ᵐ[volume.restrict (Ioc (0 : ℝ) s)] 0}
  have zero_mem : 0 ∈ {s : ℝ | g =ᵐ[volume.restrict (Ioc (0 : ℝ) s)] 0} := by simpa using trivial
  have M_nonneg : 0 ≤ M := le_csSup M_bdd zero_mem
  -- Then the function `g` indeed vanishes ae on `(0, M]`.
  have hgM : g =ᵐ[volume.restrict (Ioc (0 : ℝ) M)] 0 := by
    rw [← restrict_Ioo_eq_restrict_Ioc]
    obtain ⟨u, -, uM, ulim⟩ : ∃ u, StrictMono u ∧ (∀ (n : ℕ), u n < M) ∧ Tendsto u atTop (𝓝 M) :=
      exists_seq_strictMono_tendsto M
    have I : ∀ n, g =ᵐ[volume.restrict (Ioc (0 : ℝ) (u n))] 0 := by
      intro n
      obtain ⟨s, hs, uns⟩ : ∃ s, g =ᶠ[ae (Measure.restrict volume (Ioc 0 s))] 0 ∧ u n < s :=
        exists_lt_of_lt_csSup (Set.nonempty_of_mem zero_mem) (uM n)
      exact ae_restrict_of_ae_restrict_of_subset (Ioc_subset_Ioc_right uns.le) hs
    have : g =ᵐ[volume.restrict (⋃ n, Ioc (0 : ℝ) (u n))] 0 := (ae_restrict_iUnion_iff _ _).2 I
    apply ae_restrict_of_ae_restrict_of_subset _ this
    rintro x ⟨x_pos, xM⟩
    obtain ⟨n, hn⟩ : ∃ n, x < u n := ((tendsto_order.1 ulim).1 _ xM).exists
    exact mem_iUnion.2 ⟨n, ⟨x_pos, hn.le⟩⟩
  -- Let `ν` be the restriction of `μ` to those points where `f a > M`.
  let ν := μ.restrict {a : α | M < f a}
  -- This measure is sigma-finite (this is the whole point of the argument).
  have : SigmaFinite ν := by
    obtain ⟨u, -, uM, ulim⟩ : ∃ u, StrictAnti u ∧ (∀ (n : ℕ), M < u n) ∧ Tendsto u atTop (𝓝 M) :=
      exists_seq_strictAnti_tendsto M
    let s : ν.FiniteSpanningSetsIn univ :=
    { set := fun n ↦ {a | f a ≤ M} ∪ {a | u n < f a}
      set_mem := fun _ ↦ trivial
      finite := by
        intro n
        have I : ν {a | f a ≤ M} = 0 := by
          rw [Measure.restrict_apply (measurableSet_le f_mble measurable_const)]
          convert measure_empty (μ := μ)
          rw [← disjoint_iff_inter_eq_empty]
          exact disjoint_left.mpr (fun a ha ↦ by simpa using ha)
        have J : μ {a | u n < f a} < ∞ := by
          rw [lt_top_iff_ne_top]
          apply H2 _ (M_nonneg.trans_lt (uM n))
          by_contra H3
          rw [not_lt, intervalIntegral.integral_of_le (M_nonneg.trans (uM n).le)] at H3
          have g_nn_ae : ∀ᵐ t ∂(volume.restrict (Ioc 0 (u n))), 0 ≤ g t := by
            filter_upwards [ae_restrict_mem measurableSet_Ioc] with s hs using g_nn _ hs.1
          have Ig : ∫ (t : ℝ) in Ioc 0 (u n), g t = 0 :=
            le_antisymm H3 (integral_nonneg_of_ae g_nn_ae)
          have J : ∀ᵐ t ∂(volume.restrict (Ioc 0 (u n))), g t = 0 :=
            (integral_eq_zero_iff_of_nonneg_ae g_nn_ae
              (g_intble (u n) (M_nonneg.trans_lt (uM n))).1).1 Ig
          have : u n ≤ M := le_csSup M_bdd J
          exact lt_irrefl _ (this.trans_lt (uM n))
        refine lt_of_le_of_lt (measure_union_le _ _) ?_
        rw [I, zero_add]
        apply lt_of_le_of_lt _ J
        exact restrict_le_self _
      spanning := by
        apply eq_univ_iff_forall.2 (fun a ↦ ?_)
        rcases le_or_lt (f a) M with ha|ha
        · exact mem_iUnion.2 ⟨0, Or.inl ha⟩
        · obtain ⟨n, hn⟩ : ∃ n, u n < f a := ((tendsto_order.1 ulim).2 _ ha).exists
          exact mem_iUnion.2 ⟨n, Or.inr hn⟩ }
    exact ⟨⟨s⟩⟩
  -- the first integrals with respect to `μ` and to `ν` coincide, as points with `f a ≤ M` are
  -- weighted by zero as `g` vanishes there.
  have A : ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂μ
         = ∫⁻ ω, ENNReal.ofReal (∫ t in (0)..f ω, g t) ∂ν := by
    have meas : MeasurableSet {a | M < f a} := measurableSet_lt measurable_const f_mble
    have I : ∫⁻ ω in {a | M < f a}ᶜ, ENNReal.ofReal (∫ t in (0).. f ω, g t) ∂μ
             = ∫⁻ _ in {a | M < f a}ᶜ, 0 ∂μ := by
      apply setLIntegral_congr_fun meas.compl (Eventually.of_forall (fun s hs ↦ ?_))
      have : ∫ (t : ℝ) in (0)..f s, g t = ∫ (t : ℝ) in (0)..f s, 0 := by
        simp_rw [intervalIntegral.integral_of_le (f_nonneg s)]
        apply integral_congr_ae
        apply ae_mono (restrict_mono ?_ le_rfl) hgM
        apply Ioc_subset_Ioc_right
        simpa using hs
      simp [this]
    simp only [lintegral_const, zero_mul] at I
    rw [← lintegral_add_compl _ meas, I, add_zero]
  -- the second integrals with respect to `μ` and to `ν` coincide, as points with `f a ≤ M` do not
  -- contribute to either integral since the weight `g` vanishes.
  have B : ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t)
           = ∫⁻ t in Ioi 0, ν {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
    have B1 : ∫⁻ t in Ioc 0 M, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t)
         = ∫⁻ t in Ioc 0 M, ν {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
      apply lintegral_congr_ae
      filter_upwards [hgM] with t ht
      simp [ht]
    have B2 : ∫⁻ t in Ioi M, μ {a : α | t ≤ f a} * ENNReal.ofReal (g t)
              = ∫⁻ t in Ioi M, ν {a : α | t ≤ f a} * ENNReal.ofReal (g t) := by
      apply setLIntegral_congr_fun measurableSet_Ioi (Eventually.of_forall (fun t ht ↦ ?_))
      rw [Measure.restrict_apply (measurableSet_le measurable_const f_mble)]
      congr 3
      exact (inter_eq_left.2 (fun a ha ↦ (mem_Ioi.1 ht).trans_le ha)).symm
    have I : Ioi (0 : ℝ) = Ioc (0 : ℝ) M ∪ Ioi M := (Ioc_union_Ioi_eq_Ioi M_nonneg).symm
    have J : Disjoint (Ioc 0 M) (Ioi M) := Ioc_disjoint_Ioi le_rfl
    rw [I, lintegral_union measurableSet_Ioi J, lintegral_union measurableSet_Ioi J, B1, B2]
  -- therefore, we may replace the integrals wrt `μ` with integrals wrt `ν`, and apply the
  -- result for sigma-finite measures.
  rw [A, B]
  exact lintegral_comp_eq_lintegral_meas_le_mul_of_measurable_of_sigmaFinite
    ν f_nn f_mble g_intble g_mble g_nn

/-- The layer cake formula / **Cavalieri's principle** / tail probability formula:

Let `f` be a non-negative measurable function on a measure space. Let `G` be an
increasing absolutely continuous function on the positive real line, vanishing at the origin,
with derivative `G' = g`. Then the integral of the composition `G ∘ f` can be written as
the integral over the positive real line of the "tail measures" `μ {ω | f(ω) ≥ t}` of `f`
weighted by `g`.

Roughly speaking, the statement is: `∫⁻ (G ∘ f) ∂μ = ∫⁻ t in 0..∞, g(t) * μ {ω | f(ω) ≥ t}`.

See `MeasureTheory.lintegral_comp_eq_lintegral_meas_lt_mul` for a version with sets of the form
`{ω | f(ω) > t}` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f7df4ecfb474def3681bb622071838acc047db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
