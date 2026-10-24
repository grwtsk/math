# exist_finset_disjoint_balls_large_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d4971ecfc5f96a35723ba82e66a6aeb9040edf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac758797-632a-8774-0f6d-26b2c9ffbe6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38ae26c8-6049-651d-70ed-ef106ae0b6a3",
  "kind": "theorem",
  "lexical_name": "exist_finset_disjoint_balls_large_measure",
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
  "slug": "exist-finset-disjoint-balls-large-measure--d2191962c1a0af4106084333",
  "source": {
    "blob": "6d4971ecfc5f96a35723ba82e66a6aeb9040edf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2191962c1a0af410608433319ec34209ec87057afb397f29c3dfdd173cf4ab1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38ae26c8-6049-651d-70ed-ef106ae0b6a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exist_finset_disjoint_balls_large_measure (μ : Measure α) [IsFiniteMeasure μ] {N : ℕ}
    {τ : ℝ} (hτ : 1 < τ) (hN : IsEmpty (SatelliteConfig α N τ)) (s : Set α) (r : α → ℝ)
    (rpos : ∀ x ∈ s, 0 < r x) (rle : ∀ x ∈ s, r x ≤ 1) :
    ∃ t : Finset α, ↑t ⊆ s ∧ μ (s \ ⋃ x ∈ t, closedBall x (r x)) ≤ N / (N + 1) * μ s ∧
      (t : Set α).PairwiseDisjoint fun x => closedBall x (r x) := by
  classical
  -- exclude the trivial case where `μ s = 0`.
  rcases le_or_gt (μ s) 0 with (hμs | hμs)
  · have : μ s = 0 := le_bot_iff.1 hμs
    refine ⟨∅, by simp only [Finset.coe_empty, empty_subset], ?_, ?_⟩
    · simp only [this, Finset.notMem_empty, sdiff_empty, iUnion_false, iUnion_empty,
        nonpos_iff_eq_zero, mul_zero]
    · simp only [Finset.coe_empty, pairwiseDisjoint_empty]
  cases isEmpty_or_nonempty α
  · simp only [eq_empty_of_isEmpty s, measure_empty] at hμs
    exact (lt_irrefl _ hμs).elim
  have Npos : N ≠ 0 := by
    rintro rfl
    inhabit α
    exact not_isEmpty_of_nonempty _ hN
  -- introduce a measurable superset `o` with the same measure, for measure computations
  obtain ⟨o, so, omeas, μo⟩ : ∃ o : Set α, s ⊆ o ∧ MeasurableSet o ∧ μ o = μ s :=
    exists_measurable_superset μ s
  /- We will apply the topological Besicovitch theorem, giving `N` disjoint subfamilies of balls
    covering `s`. Among these, one of them covers a proportion at least `1/N` of `s`. A large
    enough finite subfamily will then cover a proportion at least `1/(N+1)`. -/
  let a : BallPackage s α :=
    { c := fun x => x
      r := fun x => r x
      rpos := fun x => rpos x x.2
      r_bound := 1
      r_le := fun x => rle x x.2 }
  rcases exist_disjoint_covering_families hτ hN a with ⟨u, hu, hu'⟩
  have u_count : ∀ i, (u i).Countable := by
    intro i
    refine (hu i).countable_of_nonempty_interior fun j _ => ?_
    have : (ball (j : α) (r j)).Nonempty := nonempty_ball.2 (a.rpos _)
    exact this.mono ball_subset_interior_closedBall
  let v : Fin N → Set α := fun i => ⋃ (x : s) (_ : x ∈ u i), closedBall x (r x)
  have A : s = ⋃ i : Fin N, s ∩ v i := by
    refine Subset.antisymm ?_ (iUnion_subset fun i => inter_subset_left)
    intro x hx
    obtain ⟨i, y, hxy, h'⟩ :
        ∃ (i : Fin N) (i_1 : ↥s), i_1 ∈ u i ∧ x ∈ ball (↑i_1) (r ↑i_1) := by
      have : x ∈ range a.c := by simpa only [a, Subtype.range_coe_subtype, ofPred_mem_eq]
      simpa only [mem_iUnion, bex_def] using hu' this
    refine mem_iUnion.2 ⟨i, ⟨hx, ?_⟩⟩
    simp only [v, exists_prop, mem_iUnion, SetCoe.exists, exists_and_right]
    exact ⟨y, ⟨y.2, by simpa only [Subtype.coe_eta]⟩, ball_subset_closedBall h'⟩
  have S : ∑ _i : Fin N, μ s / N ≤ ∑ i, μ (s ∩ v i) :=
    calc
      ∑ _i : Fin N, μ s / N = μ s := by
        simp only [Finset.card_fin, Finset.sum_const, nsmul_eq_mul]
        rw [ENNReal.mul_div_cancel]
        · simp only [Npos, Ne, Nat.cast_eq_zero, not_false_iff]
        · finiteness
      _ ≤ ∑ i, μ (s ∩ v i) := by
        conv_lhs => rw [A]
        apply measure_iUnion_fintype_le
  -- choose an index `i` of a subfamily covering at least a proportion `1/N` of `s`.
  obtain ⟨i, -, hi⟩ : ∃ (i : Fin N), i ∈ Finset.univ ∧ μ s / N ≤ μ (s ∩ v i) := by
    apply ENNReal.exists_le_of_sum_le _ S
    exact ⟨⟨0, bot_lt_iff_ne_bot.2 Npos⟩, Finset.mem_univ _⟩
  replace hi : μ s / (N + 1) < μ (s ∩ v i) := by
    grw [← hi, ← _root_.zero_lt_one, add_zero] <;> finiteness
  have B : μ (o ∩ v i) = ∑' x : u i, μ (o ∩ closedBall x (r x)) := by
    have : o ∩ v i = ⋃ (x : s) (_ : x ∈ u i), o ∩ closedBall x (r x) := by
      simp only [v, inter_iUnion]
    rw [this, measure_biUnion (u_count i)]
    · exact (hu i).mono fun k => inter_subset_right
    · exact fun b _ => omeas.inter measurableSet_closedBall
  -- A large enough finite subfamily of `u i` will also cover a proportion `> 1/(N+1)` of `s`.
  -- Since `s` might not be measurable, we express this in terms of the measurable superset `o`.
  obtain ⟨w, hw⟩ :
    ∃ w : Finset (u i), μ s / (N + 1) <
      ∑ x ∈ w, μ (o ∩ closedBall (x : α) (r (x : α))) := by
    have C : HasSum (fun x : u i => μ (o ∩ closedBall x (r x))) (μ (o ∩ v i)) := by
      rw [B]; exact ENNReal.summable.hasSum
    have : μ s / (N + 1) < μ (o ∩ v i) := hi.trans_le (measure_mono (inter_subset_inter_left _ so))
    exact ((tendsto_order.1 C).1 _ this).exists
  -- Bring back the finset `w i` of `↑(u i)` to a finset of `α`, and check that it works by design.
  refine ⟨Finset.image (fun x : u i => x) w, ?_, ?_, ?_⟩
  -- show that the finset is included in `s`.
  · simp only [image_subset_iff, Finset.coe_image]
    intro y _
    simp only [Subtype.coe_prop, mem_preimage]
  -- show that it covers a large enough proportion of `s`. For measure computations, we do not
  -- use `s` (which might not be measurable), but its measurable superset `o`. Since their measures
  -- are the same, this does not spoil the estimates
  · suffices H : μ (o \ ⋃ x ∈ w, closedBall (↑x) (r ↑x)) ≤ N / (N + 1) * μ s by
      rw [Finset.set_biUnion_finset_image]
      exact le_trans (measure_mono (sdiff_subset_sdiff so (Subset.refl _))) H
    rw [← sdiff_inter_self_eq_sdiff,
      measure_sdiff_le_iff_le_add _ inter_subset_right (by finiteness)]
    swap
    · exact .inter
        (w.nullMeasurableSet_biUnion fun _ _ ↦ measurableSet_closedBall.nullMeasurableSet)
        omeas.nullMeasurableSet
    calc
      μ o = 1 / (N + 1) * μ s + N / (N + 1) * μ s := by
        rw [μo, ← add_mul, ENNReal.div_add_div_same, add_comm, ENNReal.div_self, one_mul] <;> simp
      _ ≤ μ ((⋃ x ∈ w, closedBall (↑x) (r ↑x)) ∩ o) + N / (N + 1) * μ s := by
        gcongr
        rw [one_div, mul_comm, ← div_eq_mul_inv]
        apply hw.le.trans (le_of_eq _)
        rw [← Finset.set_biUnion_coe, inter_comm _ o, inter_iUnion₂, Finset.set_biUnion_coe,
          measure_biUnion_finset]
        · have : (w : Set (u i)).PairwiseDisjoint
              fun b : u i => closedBall (b : α) (r (b : α)) := by
            intro k _ l _ hkl; exact hu i k.2 l.2 (Subtype.val_injective.ne hkl)
          exact this.mono fun k => inter_subset_right
        · intro b _
          apply omeas.inter measurableSet_closedBall
  -- show that the balls are disjoint
  · intro k hk l hl hkl
    obtain ⟨k', _, rfl⟩ : ∃ k' : u i, k' ∈ w ∧ ↑k' = k := by
      simpa only [mem_image, Finset.mem_coe, Finset.coe_image] using hk
    obtain ⟨l', _, rfl⟩ : ∃ l' : u i, l' ∈ w ∧ ↑l' = l := by
      simpa only [mem_image, Finset.mem_coe, Finset.coe_image] using hl
    have k'nel' : (k' : s) ≠ l' := by intro h; rw [h] at hkl; exact hkl rfl
    exact hu i k'.2 l'.2 k'nel'

variable [HasBesicovitchCovering α]

/-- The **measurable Besicovitch covering theorem**. Assume that, for any `x` in a set `s`,
one is given a set of admissible closed balls centered at `x`, with arbitrarily small radii.
Then there exists a disjoint covering of almost all `s` by admissible closed balls centered at some
points of `s`.
This version requires that the underlying measure is finite, and that the space has the Besicovitch
covering property (which is satisfied for instance by finite-dimensional normed real vector spaces).
It expresses the conclusion in a slightly awkward form (with a subset of `α × ℝ`) coming from the
proof technique.
For a version assuming that the measure is s-finite,
see `exists_disjoint_closedBall_covering_ae_aux`.
For a version giving the conclusion in a nicer form, see `exists_disjoint_closedBall_covering_ae`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4971ecfc5f96a35723ba82e66a6aeb9040edf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
