# exists_measurable_supersets_limRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce55ba97-f312-3e10-6326-899584974364",
  "kind": "theorem",
  "lexical_name": "exists_measurable_supersets_limRatio",
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
  "slug": "exists-measurable-supersets-limratio--03f193f12954e9024d0825fe",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 280,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f193f12954e9024d0825fe5cac2cedbd21815c286fbcc6d12d768b901f8f11",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce55ba97-f312-3e10-6326-899584974364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_supersets_limRatio {p q : ℝ≥0} (hpq : p < q) :
    ∃ a b, MeasurableSet a ∧ MeasurableSet b ∧
      {x | v.limRatio ρ x < p} ⊆ a ∧ {x | (q : ℝ≥0∞) < v.limRatio ρ x} ⊆ b ∧ μ (a ∩ b) = 0 := by
  /- Here is a rough sketch, assuming that the measure is finite and the limit is well defined
    everywhere. Let `u := {x | v.limRatio ρ x < p}` and `w := {x | q < v.limRatio ρ x}`. They
    have measurable supersets `u'` and `w'` of the same measure. We will show that these satisfy
    the conclusion of the theorem, i.e., `μ (u' ∩ w') = 0`. For this, note that
    `ρ (u' ∩ w') = ρ (u ∩ w')` (as `w'` is measurable, see `measure_toMeasurable_add_inter_left`).
    The latter set is included in the set where the limit of the ratios is `< p`, and therefore
    its measure is `≤ p * μ (u ∩ w')`. Using the same trick in the other direction gives that this
    is `p * μ (u' ∩ w')`. We have shown that `ρ (u' ∩ w') ≤ p * μ (u' ∩ w')`. Arguing in the same
    way but using the `w` part gives `q * μ (u' ∩ w') ≤ ρ (u' ∩ w')`. If `μ (u' ∩ w')` were nonzero,
    this would be a contradiction as `p < q`.

    For the rigorous proof, we need to work on a part of the space where the measure is finite
    (provided by `spanningSets (ρ + μ)`) and to restrict to the set where the limit is well defined
    (called `s` below, of full measure). Otherwise, the argument goes through.
    -/
  let s := {x | ∃ c, Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 c)}
  let o : ℕ → Set α := spanningSets (ρ + μ)
  let u n := s ∩ {x | v.limRatio ρ x < p} ∩ o n
  let w n := s ∩ {x | (q : ℝ≥0∞) < v.limRatio ρ x} ∩ o n
  -- the supersets are obtained by restricting to the set `s` where the limit is well defined, to
  -- a finite measure part `o n`, taking a measurable superset here, and then taking the union over
  -- `n`.
  refine
    ⟨toMeasurable μ sᶜ ∪ ⋃ n, toMeasurable (ρ + μ) (u n),
      toMeasurable μ sᶜ ∪ ⋃ n, toMeasurable (ρ + μ) (w n), ?_, ?_, ?_, ?_, ?_⟩
  -- check that these sets are measurable supersets as required
  · exact
      (measurableSet_toMeasurable _ _).union
        (MeasurableSet.iUnion fun n => measurableSet_toMeasurable _ _)
  · exact
      (measurableSet_toMeasurable _ _).union
        (MeasurableSet.iUnion fun n => measurableSet_toMeasurable _ _)
  · intro x hx
    by_cases h : x ∈ s
    · refine Or.inr (mem_iUnion.2 ⟨spanningSetsIndex (ρ + μ) x, ?_⟩)
      exact subset_toMeasurable _ _ ⟨⟨h, hx⟩, mem_spanningSetsIndex _ _⟩
    · exact Or.inl (subset_toMeasurable μ sᶜ h)
  · intro x hx
    by_cases h : x ∈ s
    · refine Or.inr (mem_iUnion.2 ⟨spanningSetsIndex (ρ + μ) x, ?_⟩)
      exact subset_toMeasurable _ _ ⟨⟨h, hx⟩, mem_spanningSetsIndex _ _⟩
    · exact Or.inl (subset_toMeasurable μ sᶜ h)
  -- it remains to check the nontrivial part that these sets have zero measure intersection.
  -- it suffices to do it for fixed `m` and `n`, as one is taking countable unions.
  suffices H : ∀ m n : ℕ, μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) = 0 by
    have A :
      (toMeasurable μ sᶜ ∪ ⋃ n, toMeasurable (ρ + μ) (u n)) ∩
          (toMeasurable μ sᶜ ∪ ⋃ n, toMeasurable (ρ + μ) (w n)) ⊆
        toMeasurable μ sᶜ ∪
          ⋃ (m) (n), toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n) := by
      simp only [inter_union_distrib_left, union_inter_distrib_right, true_and,
        subset_union_left, union_subset_iff, inter_self]
      refine ⟨?_, ?_, ?_⟩
      · exact inter_subset_right.trans subset_union_left
      · exact inter_subset_left.trans subset_union_left
      · simp_rw [iUnion_inter, inter_iUnion]; exact subset_union_right
    refine le_antisymm ((measure_mono A).trans ?_) bot_le
    calc
      μ (toMeasurable μ sᶜ ∪
        ⋃ (m) (n), toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) ≤
          μ (toMeasurable μ sᶜ) +
            μ (⋃ (m) (n), toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) :=
        measure_union_le _ _
      _ = μ (⋃ (m) (n), toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) := by
        have : μ sᶜ = 0 := v.ae_tendsto_div hρ; rw [measure_toMeasurable, this, zero_add]
      _ ≤ ∑' (m) (n), μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) :=
        ((measure_iUnion_le _).trans (ENNReal.tsum_le_tsum fun m => measure_iUnion_le _))
      _ = 0 := by simp only [H, tsum_zero]
  -- now starts the nontrivial part of the argument. We fix `m` and `n`, and show that the
  -- measurable supersets of `u m` and `w n` have zero measure intersection by using the lemmas
  -- `measure_toMeasurable_add_inter_left` (to reduce to `u m` or `w n` instead of the measurable
  -- superset) and `measure_le_of_frequently_le` to compare their measures for `ρ` and `μ`.
  intro m n
  have I : (ρ + μ) (u m) ≠ ∞ := by
    apply (lt_of_le_of_lt (measure_mono _) (measure_spanningSets_lt_top (ρ + μ) m)).ne
    exact inter_subset_right
  have J : (ρ + μ) (w n) ≠ ∞ := by
    apply (lt_of_le_of_lt (measure_mono _) (measure_spanningSets_lt_top (ρ + μ) n)).ne
    exact inter_subset_right
  have A :
    ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) ≤
      p * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) :=
    calc
      ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) =
          ρ (u m ∩ toMeasurable (ρ + μ) (w n)) :=
        measure_toMeasurable_add_inter_left (measurableSet_toMeasurable _ _) I
      _ ≤ (p • μ) (u m ∩ toMeasurable (ρ + μ) (w n)) := by
        refine v.measure_le_of_frequently_le (p • μ) hρ _ fun x hx => ?_
        have L : Tendsto (fun a : Set α => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatio ρ x)) :=
          tendsto_nhds_limUnder hx.1.1.1
        have I : ∀ᶠ b : Set α in v.filterAt x, ρ b / μ b < p := (tendsto_order.1 L).2 _ hx.1.1.2
        apply I.frequently.mono fun a ha => ?_
        rw [coe_nnreal_smul_apply]
        refine (ENNReal.div_le_iff_le_mul ?_ (Or.inr (bot_le.trans_lt ha).ne')).1 ha.le
        simp only [ENNReal.coe_ne_top, Ne, or_true, not_false_iff]
      _ = p * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) := by
        simp only [coe_nnreal_smul_apply,
          measure_toMeasurable_add_inter_right (measurableSet_toMeasurable _ _) I]
  have B :
    (q : ℝ≥0∞) * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) ≤
      ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) :=
    calc
      (q : ℝ≥0∞) * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) =
          (q : ℝ≥0∞) * μ (toMeasurable (ρ + μ) (u m) ∩ w n) := by
        conv_rhs => rw [inter_comm]
        rw [inter_comm, measure_toMeasurable_add_inter_right (measurableSet_toMeasurable _ _) J]
      _ ≤ ρ (toMeasurable (ρ + μ) (u m) ∩ w n) := by
        rw [← coe_nnreal_smul_apply]
        refine v.measure_le_of_frequently_le _ (.smul_left .rfl _) _ ?_
        intro x hx
        have L : Tendsto (fun a : Set α => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatio ρ x)) :=
          tendsto_nhds_limUnder hx.2.1.1
        have I : ∀ᶠ b : Set α in v.filterAt x, (q : ℝ≥0∞) < ρ b / μ b :=
          (tendsto_order.1 L).1 _ hx.2.1.2
        apply I.frequently.mono fun a ha => ?_
        rw [coe_nnreal_smul_apply]
        exact ENNReal.mul_le_of_le_div ha.le
      _ = ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) := by
        conv_rhs => rw [inter_comm]
        rw [inter_comm]
        exact (measure_toMeasurable_add_inter_left (measurableSet_toMeasurable _ _) J).symm
  by_contra h
  apply lt_irrefl (ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)))
  calc
    ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) ≤
        p * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) :=
      A
    _ < q * μ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) := by
      gcongr
      suffices H : (ρ + μ) (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) ≠ ∞ by
        simp only [not_or, ENNReal.add_eq_top, Pi.add_apply, Ne, coe_add] at H
        exact H.2
      apply (lt_of_le_of_lt (measure_mono inter_subset_left) _).ne
      rw [measure_toMeasurable]
      apply lt_of_le_of_lt (measure_mono _) (measure_spanningSets_lt_top (ρ + μ) m)
      exact inter_subset_right
    _ ≤ ρ (toMeasurable (ρ + μ) (u m) ∩ toMeasurable (ρ + μ) (w n)) := B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
