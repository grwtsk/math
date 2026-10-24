# exists_closedBall_covering_tsum_measure_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12c7bda3-4a54-73b1-f865-269fe3f02342",
  "kind": "theorem",
  "lexical_name": "exists_closedBall_covering_tsum_measure_le",
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
  "slug": "exists-closedball-covering-tsum-measure-le--3d2b6fff51712adb27ba9506",
  "source": {
    "blob": "48bdc7ff9eda025caa69372f97de9e37a2f46ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1028,
    "line": 865,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d2b6fff51712adb27ba950659cdb50a862aea6f8c8426a035a0a6f2658f64ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c7bda3-4a54-73b1-f865-269fe3f02342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–1028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_closedBall_covering_tsum_measure_le (μ : Measure α) [SFinite μ]
    [Measure.OuterRegular μ] {ε : ℝ≥0∞} (hε : ε ≠ 0) (f : α → Set ℝ) (s : Set α)
    (hf : ∀ x ∈ s, ∀ δ > 0, (f x ∩ Ioo 0 δ).Nonempty) :
    ∃ (t : Set α) (r : α → ℝ), t.Countable ∧ t ⊆ s ∧ (∀ x ∈ t, r x ∈ f x) ∧
      (s ⊆ ⋃ x ∈ t, closedBall x (r x)) ∧ (∑' x : t, μ (closedBall x (r x))) ≤ μ s + ε := by
  /- For the proof, first cover almost all `s` with disjoint balls thanks to the usual Besicovitch
    theorem. Taking the balls included in a well-chosen open neighborhood `u` of `s`, one may
    ensure that their measures add at most to `μ s + ε / 2`. Let `s'` be the remaining set, of
    measure `0`. Applying the other version of Besicovitch, one may cover it with at most `N`
    disjoint subfamilies. Making sure that they are all included in a neighborhood `v` of `s'` of
    measure at most `ε / (2 N)`, the sum of their measures is at most `ε / 2`,
    completing the proof. -/
  classical
  obtain ⟨u, su, u_open, μu⟩ : ∃ U, U ⊇ s ∧ IsOpen U ∧ μ U ≤ μ s + ε / 2 :=
    Set.exists_isOpen_le_add _ _
      (by
        simpa only [or_false, Ne, ENNReal.div_eq_zero_iff, ENNReal.ofNat_ne_top] using hε)
  have : ∀ x ∈ s, ∃ R > 0, ball x R ⊆ u := fun x hx =>
    Metric.mem_nhds_iff.1 (u_open.mem_nhds (su hx))
  choose! R hR using this
  obtain ⟨t0, r0, t0_count, t0s, hr0, μt0, t0_disj⟩ :
    ∃ (t0 : Set α) (r0 : α → ℝ), t0.Countable ∧ t0 ⊆ s ∧
      (∀ x ∈ t0, r0 x ∈ f x ∩ Ioo 0 (R x)) ∧ μ (s \ ⋃ x ∈ t0, closedBall x (r0 x)) = 0 ∧
        t0.PairwiseDisjoint fun x => closedBall x (r0 x) :=
    exists_disjoint_closedBall_covering_ae μ f s hf R fun x hx => (hR x hx).1
  -- we have constructed an almost everywhere covering of `s` by disjoint balls. Let `s'` be the
  -- remaining set.
  let s' := s \ ⋃ x ∈ t0, closedBall x (r0 x)
  have s's : s' ⊆ s := sdiff_subset
  obtain ⟨N, τ, hτ, H⟩ : ∃ N τ, 1 < τ ∧ IsEmpty (Besicovitch.SatelliteConfig α N τ) :=
    HasBesicovitchCovering.no_satelliteConfig
  obtain ⟨v, s'v, v_open, μv⟩ : ∃ v, v ⊇ s' ∧ IsOpen v ∧ μ v ≤ μ s' + ε / 2 / N :=
    Set.exists_isOpen_le_add _ _
      (by simp only [ne_eq, ENNReal.div_eq_zero_iff, hε, ENNReal.ofNat_ne_top, or_self,
          ENNReal.natCast_ne_top, not_false_eq_true])
  have : ∀ x ∈ s', ∃ r1 ∈ f x ∩ Ioo (0 : ℝ) 1, closedBall x r1 ⊆ v := by
    intro x hx
    rcases Metric.mem_nhds_iff.1 (v_open.mem_nhds (s'v hx)) with ⟨r, rpos, hr⟩
    rcases hf x (s's hx) (min r 1) (lt_min rpos zero_lt_one) with ⟨R', hR'⟩
    exact
      ⟨R', ⟨hR'.1, hR'.2.1, hR'.2.2.trans_le (min_le_right _ _)⟩,
        Subset.trans (closedBall_subset_ball (hR'.2.2.trans_le (min_le_left _ _))) hr⟩
  choose! r1 hr1 using this
  let q : BallPackage s' α :=
    { c := fun x => x
      r := fun x => r1 x
      rpos := fun x => (hr1 x.1 x.2).1.2.1
      r_bound := 1
      r_le := fun x => (hr1 x.1 x.2).1.2.2.le }
  -- by Besicovitch, we cover `s'` with at most `N` families of disjoint balls, all included in
  -- a suitable neighborhood `v` of `s'`.
  obtain ⟨S, S_disj, hS⟩ :
    ∃ S : Fin N → Set s',
      (∀ i : Fin N, (S i).PairwiseDisjoint fun j => closedBall (q.c j) (q.r j)) ∧
        range q.c ⊆ ⋃ i : Fin N, ⋃ j ∈ S i, ball (q.c j) (q.r j) :=
    exist_disjoint_covering_families hτ H q
  have S_count : ∀ i, (S i).Countable := by
    intro i
    apply (S_disj i).countable_of_nonempty_interior fun j _ => ?_
    have : (ball (j : α) (r1 j)).Nonempty := nonempty_ball.2 (q.rpos _)
    exact this.mono ball_subset_interior_closedBall
  let r x := if x ∈ s' then r1 x else r0 x
  have r_t0 : ∀ x ∈ t0, r x = r0 x := by
    intro x hx
    have : x ∉ s' := fun hxs' ↦ hxs'.2 <| mem_iUnion₂.2
      ⟨x, hx, mem_closedBall_self (hr0 x hx).2.1.le⟩
    simp [r, this]
  -- the desired covering set is given by the union of the families constructed in the first and
  -- second steps.
  refine ⟨t0 ∪ ⋃ i : Fin N, ((↑) : s' → α) '' S i, r, ?_, ?_, ?_, ?_, ?_⟩
  -- it remains to check that they have the desired properties
  · exact t0_count.union (countable_iUnion fun i => (S_count i).image _)
  · simp only [t0s, true_and, union_subset_iff, image_subset_iff, iUnion_subset_iff]
    intro i x _
    exact s's x.2
  · intro x hx
    cases hx with
    | inl hx =>
      rw [r_t0 x hx]
      exact (hr0 _ hx).1
    | inr hx =>
      have h'x : x ∈ s' := by
        simp only [mem_iUnion, mem_image] at hx
        rcases hx with ⟨i, y, _, rfl⟩
        exact y.2
      simp only [r, ite_eq_left h'x, (hr1 x h'x).1.1]
  · intro x hx
    by_cases h'x : x ∈ s'
    · obtain ⟨i, y, ySi, xy⟩ : ∃ (i : Fin N) (y : ↥s'), y ∈ S i ∧ x ∈ ball (y : α) (r1 y) := by
        have A : x ∈ range q.c := by
          simpa only [q, not_exists, exists_prop, mem_iUnion, mem_closedBall, not_and,
            not_le, mem_ofPred_eq, Subtype.range_coe_subtype, Set.mem_sdiff] using h'x
        simpa only [mem_iUnion, mem_image, bex_def] using hS A
      refine mem_iUnion₂.2 ⟨y, Or.inr ?_, ?_⟩
      · simp only [mem_iUnion, mem_image]
        exact ⟨i, y, ySi, rfl⟩
      · have : (y : α) ∈ s' := y.2
        simp only [r, ite_eq_left this]
        exact ball_subset_closedBall xy
    · obtain ⟨y, yt0, hxy⟩ : ∃ y : α, y ∈ t0 ∧ x ∈ closedBall y (r0 y) := by
        simpa [s', hx, -mem_closedBall] using h'x
      refine mem_iUnion₂.2 ⟨y, Or.inl yt0, ?_⟩
      rwa [r_t0 _ yt0]
  -- the only nontrivial property is the measure control, which we check now
  · -- the sets in the first step have measure at most `μ s + ε / 2`
    have A : (∑' x : t0, μ (closedBall x (r x))) ≤ μ s + ε / 2 :=
      calc
        (∑' x : t0, μ (closedBall x (r x))) = ∑' x : t0, μ (closedBall x (r0 x)) := by
          congr 1; ext x; rw [r_t0 x x.2]
        _ = μ (⋃ x : t0, closedBall x (r0 x)) := by
          have : Encodable t0 := t0_count.toEncodable
          rw [measure_iUnion]
          · exact (pairwise_subtype_iff_pairwise_set _ _).2 t0_disj
          · exact fun i => measurableSet_closedBall
        _ ≤ μ u := by
          apply measure_mono
          simp only [SetCoe.forall, iUnion_subset_iff]
          intro x hx
          apply Subset.trans (closedBall_subset_ball (hr0 x hx).2.2) (hR x (t0s hx)).2
        _ ≤ μ s + ε / 2 := μu
    -- each subfamily in the second step has measure at most `ε / (2 N)`.
    have B : ∀ i : Fin N, (∑' x : ((↑) : s' → α) '' S i, μ (closedBall x (r x))) ≤ ε / 2 / N :=
      fun i =>
      calc
        (∑' x : ((↑) : s' → α) '' S i, μ (closedBall x (r x))) =
            ∑' x : S i, μ (closedBall x (r x)) := by
          have : InjOn ((↑) : s' → α) (S i) := Subtype.val_injective.injOn
          let F : S i ≃ ((↑) : s' → α) '' S i := this.bijOn_image.equiv _
          exact (F.tsum_eq fun x => μ (closedBall x (r x))).symm
        _ = ∑' x : S i, μ (closedBall x (r1 x)) := by
          grind
        _ = μ (⋃ x : S i, closedBall x (r1 x)) := by
          have : Encodable (S i) := (S_count i).toEncodable
          rw [measure_iUnion]
          · exact (pairwise_subtype_iff_pairwise_set _ _).2 (S_disj i)
          · exact fun i => measurableSet_closedBall
        _ ≤ μ v := by
          apply measure_mono
          simp only [SetCoe.forall, iUnion_subset_iff]
          intro x xs' _
          exact (hr1 x xs').2
        _ ≤ ε / 2 / N := by have : μ s' = 0 := μt0; rwa [this, zero_add] at μv
    -- add up all these to prove the desired estimate
    calc
      (∑' x : ↥(t0 ∪ ⋃ i : Fin N, ((↑) : s' → α) '' S i), μ (closedBall x (r x))) ≤
          (∑' x : t0, μ (closedBall x (r x))) +
            ∑' x : ⋃ i : Fin N, ((↑) : s' → α) '' S i, μ (closedBall x (r x)) :=
        ENNReal.tsum_union_le (fun x => μ (closedBall x (r x))) _ _
      _ ≤
          (∑' x : t0, μ (closedBall x (r x))) +
            ∑ i : Fin N, ∑' x : ((↑) : s' → α) '' S i, μ (closedBall x (r x)) :=
        (add_le_add le_rfl (ENNReal.tsum_iUnion_le (fun x => μ (closedBall x (r x))) _))
      _ ≤ μ s + ε / 2 + ∑ i : Fin N, ε / 2 / N := by
        gcongr
        apply B
      _ ≤ μ s + ε / 2 + ε / 2 := by
        gcongr
        simp only [Finset.card_fin, Finset.sum_const, nsmul_eq_mul, ENNReal.mul_div_le]
      _ = μ s + ε := by rw [add_assoc, ENNReal.add_halves]

/-! ### Consequences on differentiation of measures -/

/-- In a space with the Besicovitch covering property, the set of closed balls with positive radius
forms a Vitali family. This is essentially a restatement of the measurable Besicovitch theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant6d1e6ac2ff069c6b100c3b82701bb098746085639d28d7d3f217d443b0e6d6c3.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bdc7ff9eda025caa69372f97de9e37a2f46ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
