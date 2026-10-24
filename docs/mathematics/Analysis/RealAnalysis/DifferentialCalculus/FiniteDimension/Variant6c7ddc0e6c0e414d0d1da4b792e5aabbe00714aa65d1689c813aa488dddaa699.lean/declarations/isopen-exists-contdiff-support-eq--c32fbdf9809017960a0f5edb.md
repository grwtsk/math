# IsOpen.exists_contDiff_support_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f861fe2e-5956-33e5-1c22-99435f34354d",
  "kind": "theorem",
  "lexical_name": "IsOpen.exists_contDiff_support_eq",
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
  "slug": "isopen-exists-contdiff-support-eq--c32fbdf9809017960a0f5edb",
  "source": {
    "blob": "84943de0407cf170a3b2f8d3006845709048b006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c32fbdf9809017960a0f5edb6f94701701a5f54443947a8f250923643bb7a177",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f861fe2e-5956-33e5-1c22-99435f34354d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.exists_contDiff_support_eq {n : ℕ∞} {s : Set E} (hs : IsOpen s) :
    ∃ f : E → ℝ, f.support = s ∧ ContDiff ℝ n f ∧ Set.range f ⊆ Set.Icc 0 1 := by
  /- For any given point `x` in `s`, one can construct a smooth function with support in `s` and
    nonzero at `x`. By second-countability, it follows that we may cover `s` with the supports of
    countably many such functions, say `g i`.
    Then `∑ i, r i • g i` will be the desired function if `r i` is a sequence of positive numbers
    tending quickly enough to zero. Indeed, this ensures that, for any `k ≤ i`, the `k`-th
    derivative of `r i • g i` is bounded by a prescribed (summable) sequence `u i`. From this, the
    summability of the series and of its successive derivatives follows. -/
  rcases eq_empty_or_nonempty s with (rfl | h's)
  · exact
      ⟨fun _ => 0, Function.support_zero, contDiff_const, by
        simp only [range_const, singleton_subset_iff, left_mem_Icc, zero_le_one]⟩
  let ι := { f : E → ℝ // f.support ⊆ s ∧ HasCompactSupport f ∧ ContDiff ℝ ∞ f ∧ range f ⊆ Icc 0 1 }
  obtain ⟨T, T_count, hT⟩ : ∃ T : Set ι, T.Countable ∧ ⋃ f ∈ T, support (f : E → ℝ) = s := by
    have : ⋃ f : ι, (f : E → ℝ).support = s := by
      refine Subset.antisymm (iUnion_subset fun f => f.2.1) ?_
      intro x hx
      rcases exists_contDiff_tsupport_subset (hs.mem_nhds hx) with ⟨f, hf⟩
      let g : ι := ⟨f, (subset_tsupport f).trans hf.1, hf.2.1, hf.2.2.1, hf.2.2.2.1⟩
      have : x ∈ support (g : E → ℝ) := by
        simp only [g, hf.2.2.2.2, mem_support, Ne, one_ne_zero, not_false_iff]
      exact mem_iUnion_of_mem _ this
    simp_rw [← this]
    apply isOpen_iUnion_countable
    rintro ⟨f, hf⟩
    exact hf.2.2.1.continuous.isOpen_support
  obtain ⟨g0, hg⟩ : ∃ g0 : ℕ → ι, T = range g0 := by
    apply Countable.exists_eq_range T_count
    rcases eq_empty_or_nonempty T with (rfl | hT)
    · simp only [← hT, mem_empty_iff_false, iUnion_of_empty, iUnion_empty, Set.not_nonempty_empty]
        at h's
    · exact hT
  let g : ℕ → E → ℝ := fun n => (g0 n).1
  have g_s : ∀ n, support (g n) ⊆ s := fun n => (g0 n).2.1
  have s_g : ∀ x ∈ s, ∃ n, x ∈ support (g n) := fun x hx ↦ by
    rw [← hT] at hx
    obtain ⟨i, iT, hi⟩ : ∃ i ∈ T, x ∈ support (i : E → ℝ) := by
      simpa only [mem_iUnion, exists_prop] using! hx
    #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
    (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal
    without the `obtain` on the next line. It is not yet clear whether this is due to defeq
    abuse in Mathlib or a problem in the new canonicalizer; a minimization would help. -/
    obtain ⟨n, hn⟩ := hg ▸ iT
    grind
  have g_smooth : ∀ n, ContDiff ℝ ∞ (g n) := fun n => (g0 n).2.2.2.1
  have g_comp_supp : ∀ n, HasCompactSupport (g n) := fun n => (g0 n).2.2.1
  have g_nonneg : ∀ n x, 0 ≤ g n x := fun n x => ((g0 n).2.2.2.2 (mem_range_self x)).1
  obtain ⟨δ, δpos, c, δc, c_lt⟩ :
      ∃ δ : ℕ → ℝ≥0, (∀ i : ℕ, 0 < δ i) ∧ ∃ c : NNReal, HasSum δ c ∧ c < 1 :=
    NNReal.exists_pos_sum_of_countable one_ne_zero ℕ
  have : ∀ n : ℕ, ∃ r : ℝ, 0 < r ∧ ∀ i ≤ n, ∀ x, ‖iteratedFDeriv ℝ i (r • g n) x‖ ≤ δ n := by
    intro n
    have : ∀ i, ∃ R, ∀ x, ‖iteratedFDeriv ℝ i (fun x => g n x) x‖ ≤ R := by
      intro i
      have : BddAbove (range fun x => ‖iteratedFDeriv ℝ i (fun x : E => g n x) x‖) := by
        apply ((g_smooth n).continuous_iteratedFDeriv
          (mod_cast le_top)).norm.bddAbove_range_of_hasCompactSupport
        apply HasCompactSupport.comp_left _ norm_zero
        apply (g_comp_supp n).iteratedFDeriv
      rcases this with ⟨R, hR⟩
      exact ⟨R, fun x => hR (mem_range_self _)⟩
    choose R hR using this
    let M := max (((Finset.range (n + 1)).image R).max' (by simp)) 1
    have δnpos : 0 < δ n := δpos n
    have IR : ∀ i ≤ n, R i ≤ M := by
      intro i hi
      refine le_trans ?_ (le_max_left _ _)
      apply Finset.le_max'
      apply Finset.mem_image_of_mem
      simp only [Finset.mem_range]
      lia
    refine ⟨M⁻¹ * δ n, by positivity, fun i hi x => ?_⟩
    calc
      ‖iteratedFDeriv ℝ i ((M⁻¹ * δ n) • g n) x‖ = ‖(M⁻¹ * δ n) • iteratedFDeriv ℝ i (g n) x‖ := by
        rw [iteratedFDeriv_const_smul_apply]
        exact (g_smooth n).contDiffAt.of_le (mod_cast le_top)
      _ = M⁻¹ * δ n * ‖iteratedFDeriv ℝ i (g n) x‖ := by
        rw [norm_smul _ (iteratedFDeriv ℝ i (g n) x), Real.norm_of_nonneg]; positivity
      _ ≤ M⁻¹ * δ n * M := by gcongr; exact (hR i x).trans (IR i hi)
      _ = δ n := by simp [field]
  choose r rpos hr using this
  have S : ∀ x, Summable fun n => (r n • g n) x := fun x ↦ by
    refine .of_nnnorm_bounded δc.summable fun n => ?_
    rw [← NNReal.coe_le_coe, coe_nnnorm]
    simpa only [norm_iteratedFDeriv_zero] using! hr n 0 zero_le x
  refine ⟨fun x => ∑' n, (r n • g n) x, ?_, ?_, ?_⟩
  · apply Subset.antisymm
    · intro x hx
      simp only [Pi.smul_apply, smul_eq_mul, mem_support, Ne] at hx
      contrapose hx
      have : ∀ n, g n x = 0 := by
        intro n
        contrapose! hx
        exact g_s n hx
      simp only [this, mul_zero, tsum_zero]
    · intro x hx
      obtain ⟨n, hn⟩ : ∃ n, x ∈ support (g n) := s_g x hx
      have I : 0 < r n * g n x := mul_pos (rpos n) (lt_of_le_of_ne (g_nonneg n x) (Ne.symm hn))
      exact ne_of_gt ((S x).tsum_pos (fun i => mul_nonneg (rpos i).le (g_nonneg i x)) n I)
  · apply ContDiff.of_le _ (show n ≤ ∞ from mod_cast le_top)
    refine
      contDiff_tsum_of_eventually (fun k => (g_smooth k).const_smul (r k))
        (fun k _ => (NNReal.hasSum_coe.2 δc).summable) ?_
    intro i _
    simp only [Nat.cofinite_eq_atTop, Filter.eventually_atTop]
    exact ⟨i, fun n hn x => hr _ _ hn _⟩
  · rintro - ⟨y, rfl⟩
    refine ⟨tsum_nonneg fun n => mul_nonneg (rpos n).le (g_nonneg n y), le_trans ?_ c_lt.le⟩
    have A : HasSum (fun n => (δ n : ℝ)) c := NNReal.hasSum_coe.2 δc
    simp only [Pi.smul_apply, smul_eq_mul, NNReal.val_eq_coe, ← A.tsum_eq]
    apply Summable.tsum_le_tsum _ (S y) A.summable
    intro n
    apply (le_abs_self _).trans
    simpa only [norm_iteratedFDeriv_zero] using! hr n 0 zero_le y

end

section

namespace ExistsContDiffBumpBase

/-- An auxiliary function to construct partitions of unity on finite-dimensional real vector spaces.
It is the characteristic function of the closed unit ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84943de0407cf170a3b2f8d3006845709048b006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
