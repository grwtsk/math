# exists_disjoint_covering_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31ff0eb700101d92296f25a6ffdbbf33cb617375",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9f574a1-d85a-fdb6-720a-69cb8c825ba8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a15df816-0852-4905-62be-6c6920bea9a5",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_covering_ae",
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
  "slug": "exists-disjoint-covering-ae--1b49368ac688417cd8b26bf5",
  "source": {
    "blob": "31ff0eb700101d92296f25a6ffdbbf33cb617375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 203,
    "path": "GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b49368ac688417cd8b26bf56bc03139a48635ba0e9f2c95d713ac6e9fa82bbd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15df816-0852-4905-62be-6c6920bea9a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_covering_ae [MetricSpace α] [MeasurableSpace α] [OpensMeasurableSpace α]
    [SecondCountableTopology α] (μ : Measure α) [IsLocallyFiniteMeasure μ] (s : Set α) (t : Set ι)
    (C : ℝ≥0) (r : ι → ℝ) (c : ι → α) (B : ι → Set α) (hB : ∀ a ∈ t, B a ⊆ closedBall (c a) (r a))
    (μB : ∀ a ∈ t, μ (closedBall (c a) (3 * r a)) ≤ C * μ (B a))
    (ht : ∀ a ∈ t, (interior (B a)).Nonempty) (h't : ∀ a ∈ t, IsClosed (B a))
    (hf : ∀ x ∈ s, ∀ ε > (0 : ℝ), ∃ a ∈ t, r a ≤ ε ∧ c a = x) :
    ∃ (u : _) (_ : u ⊆ t), u.Countable ∧ u.PairwiseDisjoint B ∧ μ (s \ ⋃ a ∈ u, B a) = 0 := by
  /- The idea of the proof is the following. Assume for simplicity that `μ` is finite. Applying the
  abstract Vitali covering theorem with `δ = r` given by `hf`, one obtains a disjoint subfamily `u`,
  such that any element of `t` intersects an element of `u` with comparable radius. Fix `ε > 0`.
  Since the elements of `u` have summable measure, one can remove finitely elements `w_1, ..., w_n`.
  so that the measure of the remaining elements is `< ε`. Consider now a point `z` not
  in the `w_i`. There is a small ball around `z` not intersecting the `w_i` (as they are closed),
  an element `a ∈ t` contained in this small ball (as the family `t` is fine at `z`) and an element
  `b ∈ u` intersecting `a`, with comparable radius (by definition of `u`). Then `z` belongs to the
  enlargement of `b`. This shows that `s \ (w_1 ∪ ... ∪ w_n)` is contained in
  `⋃ (b ∈ u \ {w_1, ... w_n}) (enlargement of b)`. The measure of the latter set is bounded by
  `∑ (b ∈ u \ {w_1, ... w_n}) C * μ b` (by the doubling property of the measure), which is at most
  `C ε`. Letting `ε` tend to `0` shows that `s` is almost everywhere covered by the family `u`.

  For the real argument, the measure is only locally finite. Therefore, we implement the same
  strategy, but locally restricted to balls on which the measure is finite. For this, we do not
  use the whole family `t`, but a subfamily `t'` supported on small balls (which is possible since
  the family is assumed to be fine at every point of `s`).
  -/
  -- choose around each `x` a small ball on which the measure is finite
  have : ∀ x, ∃ R, 0 < R ∧ R ≤ 1 ∧ μ (closedBall x (20 * R)) < ∞ := by
    intro x
    obtain ⟨R, Rpos, μR⟩ : ∃ R, 0 < R ∧ μ (closedBall x R) < ∞ :=
      (μ.finiteAt_nhds x).exists_mem_basis nhds_basis_closedBall
    refine' ⟨min 1 (R / 20), _, min_le_left _ _, _⟩
    · simp only [true_and_iff, lt_min_iff, zero_lt_one]
      linarith
    · apply lt_of_le_of_lt (measure_mono _) μR
      apply closedBall_subset_closedBall
      calc
        20 * min 1 (R / 20) ≤ 20 * (R / 20) :=
          mul_le_mul_of_nonneg_left (min_le_right _ _) (by norm_num)
        _ = R := by ring
  choose R hR0 hR1 hRμ using this
  -- we restrict to a subfamily `t'` of `t`, made of elements small enough to ensure that
  -- they only see a finite part of the measure, and with a doubling property
  let t' := { a ∈ t | r a ≤ R (c a) }
  -- extract a disjoint subfamily `u` of `t'` thanks to the abstract Vitali covering theorem.
  obtain ⟨u, ut', u_disj, hu⟩ : ∃ (u : _) (_ : u ⊆ t'),
      u.PairwiseDisjoint B ∧ ∀ a ∈ t', ∃ b ∈ u, (B a ∩ B b).Nonempty ∧ r a ≤ 2 * r b := by
    have A : ∀ a ∈ t', r a ≤ 1 := by
      intro a ha
      apply ha.2.trans (hR1 (c a))
    have A' : ∀ a ∈ t', (B a).Nonempty :=
      fun a hat' => Set.Nonempty.mono interior_subset (ht a hat'.1)
    refine' exists_disjoint_subfamily_covering_enlargment B t' r 2 one_lt_two (fun a ha => _) 1 A A'
    exact nonempty_closedBall.1 ((A' a ha).mono (hB a ha.1))
  have ut : u ⊆ t := fun a hau => (ut' hau).1
  -- As the space is second countable, the family is countable since all its sets have nonempty
  -- interior.
  have u_count : u.Countable := u_disj.countable_of_nonempty_interior fun a ha => ht a (ut ha)
  -- the family `u` will be the desired family
  refine' ⟨u, fun a hat' => (ut' hat').1, u_count, u_disj, _⟩
  -- it suffices to show that it covers almost all `s` locally around each point `x`.
  refine' null_of_locally_null _ fun x _ => _
  -- let `v` be the subfamily of `u` made of those sets intersecting the small ball `ball x (r x)`
  let v := { a ∈ u | (B a ∩ ball x (R x)).Nonempty }
  have vu : v ⊆ u := fun a ha => ha.1
  -- they are all contained in a fixed ball of finite measure, thanks to our choice of `t'`
  obtain ⟨K, μK, hK⟩ : ∃ K, μ (closedBall x K) < ∞ ∧
      ∀ a ∈ u, (B a ∩ ball x (R x)).Nonempty → B a ⊆ closedBall x K := by
    have Idist_v : ∀ a ∈ v, dist (c a) x ≤ r a + R x := by
      intro a hav
      apply dist_le_add_of_nonempty_closedBall_inter_closedBall
      refine' hav.2.mono _
      apply inter_subset_inter _ ball_subset_closedBall
      exact hB a (ut (vu hav))
    set R0 := sSup (r '' v) with R0_def
    have R0_bdd : BddAbove (r '' v) := by
      refine' ⟨1, fun r' hr' => _⟩
      rcases (mem_image _ _ _).1 hr' with ⟨b, hb, rfl⟩
      exact le_trans (ut' (vu hb)).2 (hR1 (c b))
    rcases le_total R0 (R x) with (H | H)
    · refine' ⟨20 * R x, hRμ x, fun a au hax => _⟩
      refine' (hB a (ut au)).trans _
      apply closedBall_subset_closedBall'
      have : r a ≤ R0 := le_csSup R0_bdd (mem_image_of_mem _ ⟨au, hax⟩)
      linarith [Idist_v a ⟨au, hax⟩, hR0 x]
    · have R0pos : 0 < R0 := (hR0 x).trans_le H
      have vnonempty : v.Nonempty := by
        by_contra h
        rw [nonempty_iff_ne_empty, Classical.not_not] at h
        rw [h, image_empty, Real.sSup_empty] at R0_def
        exact lt_irrefl _ (R0pos.trans_le (le_of_eq R0_def))
      obtain ⟨a, hav, R0a⟩ : ∃ a ∈ v, R0 / 2 < r a := by
        obtain ⟨r', r'mem, hr'⟩ : ∃ r' ∈ r '' v, R0 / 2 < r' :=
          exists_lt_of_lt_csSup (nonempty_image_iff.2 vnonempty) (half_lt_self R0pos)
        rcases (mem_image _ _ _).1 r'mem with ⟨a, hav, rfl⟩
        exact ⟨a, hav, hr'⟩
      refine' ⟨8 * R0, _, _⟩
      · apply lt_of_le_of_lt (measure_mono _) (hRμ (c a))
        apply closedBall_subset_closedBall'
        rw [dist_comm]
        linarith [Idist_v a hav, (ut' (vu hav)).2]
      · intro b bu hbx
        refine' (hB b (ut bu)).trans _
        apply closedBall_subset_closedBall'
        have : r b ≤ R0 := le_csSup R0_bdd (mem_image_of_mem _ ⟨bu, hbx⟩)
        linarith [Idist_v b ⟨bu, hbx⟩]
  -- we will show that, in `ball x (R x)`, almost all `s` is covered by the family `u`.
  refine' ⟨_ ∩ ball x (R x), inter_mem_nhdsWithin _ (ball_mem_nhds _ (hR0 _)),
    nonpos_iff_eq_zero.mp (le_of_forall_le_of_dense fun ε εpos => _)⟩
  -- the elements of `v` are disjoint and all contained in a finite volume ball, hence the sum
  -- of their measures is finite.
  have I : (∑' a : v, μ (B a)) < ∞ := by
    calc
      (∑' a : v, μ (B a)) = μ (⋃ a ∈ v, B a) := by
        rw [measure_biUnion (u_count.mono vu) _ fun a ha => (h't _ (vu.trans ut ha)).measurableSet]
        exact u_disj.subset vu
      _ ≤ μ (closedBall x K) := (measure_mono (iUnion₂_subset fun a ha => hK a (vu ha) ha.2))
      _ < ∞ := μK
  -- we can obtain a finite subfamily of `v`, such that the measures of the remaining elements
  -- add up to an arbitrarily small number, say `ε / C`.
  obtain ⟨w, hw⟩ : ∃ w : Finset v, (∑' a : { a // a ∉ w }, μ (B a)) < ε / C :=
    haveI : 0 < ε / C := by
      simp only [ENNReal.div_pos_iff, εpos.ne', ENNReal.coe_ne_top, Ne.def, not_false_iff,
        and_self_iff]
    ((tendsto_order.1 (ENNReal.tendsto_tsum_compl_atTop_zero I.ne)).2 _ this).exists
  -- main property: the points `z` of `s` which are not covered by `u` are contained in the
  -- enlargements of the elements not in `w`.
  have M : (s \ ⋃ a ∈ u, B a) ∩
      ball x (R x) ⊆ ⋃ a : { a // a ∉ w }, closedBall (c a) (3 * r a) := by
    intro z hz
    set k := ⋃ (a : v) (_ : a ∈ w), B a
    have k_closed : IsClosed k := isClosed_biUnion w.finite_toSet fun i _ => h't _ (ut (vu i.2))
    have z_notmem_k : z ∉ k := by
      simp only [not_exists, exists_prop, mem_iUnion, mem_sep_iff, forall_exists_index,
        SetCoe.exists, not_and, exists_and_right, Subtype.coe_mk]
      intro b hbv _ h'z
      have : z ∈ (s \ ⋃ a ∈ u, B a) ∩ ⋃ a ∈ u, B a :=
        mem_inter (mem_of_mem_inter_left hz) (mem_biUnion (vu hbv) h'z)
      simpa only [diff_inter_self]
    -- since the elements of `w` are closed and finitely many, one can find a small ball around `z`
    -- not intersecting them
    have : ball x (R x) \ k ∈ 𝓝 z := by
      apply IsOpen.mem_nhds (isOpen_ball.sdiff k_closed) _
      exact (mem_diff _).2 ⟨mem_of_mem_inter_right hz, z_notmem_k⟩
    obtain ⟨d, dpos, hd⟩ : ∃ d, 0 < d ∧ closedBall z d ⊆ ball x (R x) \ k :=
      nhds_basis_closedBall.mem_iff.1 this
    -- choose an element `a` of the family `t` contained in this small ball
    obtain ⟨a, hat, ad, rfl⟩ : ∃ a ∈ t, r a ≤ min d (R z) ∧ c a = z
    exact hf z ((mem_diff _).1 (mem_of_mem_inter_left hz)).1 (min d (R z)) (lt_min dpos (hR0 z))
    have ax : B a ⊆ ball x (R x) := by
      refine' (hB a hat).trans _
      refine' Subset.trans _ (hd.trans (diff_subset (ball x (R x)) k))
      exact closedBall_subset_closedBall (ad.trans (min_le_left _ _))
    -- it intersects an element `b` of `u` with comparable diameter, by definition of `u`
    obtain ⟨b, bu, ab, bdiam⟩ : ∃ b ∈ u, (B a ∩ B b).Nonempty ∧ r a ≤ 2 * r b
    exact hu a ⟨hat, ad.trans (min_le_right _ _)⟩
    have bv : b ∈ v := by
      refine' ⟨bu, ab.mono _⟩
      rw [inter_comm]
      exact inter_subset_inter_right _ ax
    let b' : v := ⟨b, bv⟩
    -- `b` cannot belong to `w`, as the elements of `w` do not intersect `closedBall z d`,
    -- contrary to `b`
    have b'_notmem_w : b' ∉ w := by
      intro b'w
      have b'k : B b' ⊆ k := @Finset.subset_set_biUnion_of_mem _ _ _ (fun y : v => B y) _ b'w
      have : (ball x (R x) \ k ∩ k).Nonempty := by
        apply ab.mono (inter_subset_inter _ b'k)
        refine' ((hB _ hat).trans _).trans hd
        exact closedBall_subset_closedBall (ad.trans (min_le_left _ _))
      simpa only [diff_inter_self, Set.not_nonempty_empty]
    let b'' : { a // a ∉ w } := ⟨b', b'_notmem_w⟩
    -- since `a` and `b` have comparable diameters, it follows that `z` belongs to the
    -- enlargement of `b`
    have zb : c a ∈ closedBall (c b) (3 * r b) := by
      rcases ab with ⟨e, ⟨ea, eb⟩⟩
      have A : dist (c a) e ≤ r a := mem_closedBall'.1 (hB a hat ea)
      have B : dist e (c b) ≤ r b := mem_closedBall.1 (hB b (ut bu) eb)
      simp only [mem_closedBall]
      linarith only [dist_triangle (c a) e (c b), A, B, bdiam]
    suffices H : closedBall (c b'') (3 * r b'') ⊆ ⋃ a : { a // a ∉ w }, closedBall (c a) (3 * r a)
    exact H zb
    exact subset_iUnion (fun a : { a // a ∉ w } => closedBall (c a) (3 * r a)) b''
  -- now that we have proved our main inclusion, we can use it to estimate the measure of the points
  -- in `ball x (r x)` not covered by `u`.
  haveI : Encodable v := (u_count.mono vu).toEncodable
  calc
    μ ((s \ ⋃ a ∈ u, B a) ∩ ball x (R x)) ≤ μ (⋃ a : { a // a ∉ w }, closedBall (c a) (3 * r a)) :=
      measure_mono M
    _ ≤ ∑' a : { a // a ∉ w }, μ (closedBall (c a) (3 * r a)) := (measure_iUnion_le _)
    _ ≤ ∑' a : { a // a ∉ w }, C * μ (B a) := (ENNReal.tsum_le_tsum fun a => μB a (ut (vu a.1.2)))
    _ = C * ∑' a : { a // a ∉ w }, μ (B a) := ENNReal.tsum_mul_left
    _ ≤ C * (ε / C) := (mul_le_mul_left' hw.le _)
    _ ≤ ε := ENNReal.mul_div_le
#align vitali.exists_disjoint_covering_ae Vitali.exists_disjoint_covering_ae

/-- Assume that around every point there are arbitrarily small scales at which the measure is
doubling. Then the set of closed sets `a` with nonempty interior contained in `closedBall x r` and
covering a fixed proportion `1/C` of the ball `closedBall x (3 * r)` forms a Vitali family.
This is essentially a restatement of the measurable Vitali theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Vitali/Variant8c43bdbba14cea4dd0ad446358833805dbae6e462b5b904d573c46010c2acee1.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ff0eb700101d92296f25a6ffdbbf33cb617375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
