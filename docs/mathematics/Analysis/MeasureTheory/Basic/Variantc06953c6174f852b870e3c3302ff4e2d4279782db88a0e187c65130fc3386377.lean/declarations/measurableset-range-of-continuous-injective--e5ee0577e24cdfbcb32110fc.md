# measurableSet_range_of_continuous_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9111cc2ee3a579ec232cef8995c9d1c614c23ec4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 644,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2c3271e-45cd-8ce5-d9c7-f22c5293974e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b9ba4a7-6cf5-8441-fa45-c3bbeb569ca2",
  "kind": "theorem",
  "lexical_name": "measurableSet_range_of_continuous_injective",
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
  "slug": "measurableset-range-of-continuous-injective--e5ee0577e24cdfbcb32110fc",
  "source": {
    "blob": "9111cc2ee3a579ec232cef8995c9d1c614c23ec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 644,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ee0577e24cdfbcb32110fcd93a8a35cb9bcc070db31ba0a4954a1d7c6e960d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b9ba4a7-6cf5-8441-fa45-c3bbeb569ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_range_of_continuous_injective {β : Type*} [TopologicalSpace γ]
    [PolishSpace γ] [TopologicalSpace β] [T2Space β] [MeasurableSpace β] [OpensMeasurableSpace β]
    {f : γ → β} (f_cont : Continuous f) (f_inj : Injective f) :
    MeasurableSet (range f) := by
  /- We follow [Fremlin, *Measure Theory* (volume 4, 423I)][fremlin_vol4].
    Let `b = {s i}` be a countable basis for `α`. When `s i` and `s j` are disjoint, their images
    are disjoint analytic sets, hence by the separation theorem one can find a Borel-measurable set
    `q i j` separating them.
    Let `E i = closure (f '' s i) ∩ ⋂ j, q i j \ q j i`. It contains `f '' (s i)` and it is
    measurable. Let `F n = ⋃ E i`, where the union is taken over those `i` for which `diam (s i)`
    is bounded by some number `u n` tending to `0` with `n`.
    We claim that `range f = ⋂ F n`, from which the measurability is obvious. The inclusion `⊆` is
    straightforward. To show `⊇`, consider a point `x` in the intersection. For each `n`, it belongs
    to some `E i` with `diam (s i) ≤ u n`. Pick a point `y i ∈ s i`. We claim that for such `i`
    and `j`, the intersection `s i ∩ s j` is nonempty: if it were empty, then thanks to the
    separating set `q i j` in the definition of `E i` one could not have `x ∈ E i ∩ E j`.
    Since these two sets have small diameter, it follows that `y i` and `y j` are close.
    Thus, `y` is a Cauchy sequence, converging to a limit `z`. We claim that `f z = x`, completing
    the proof.
    Otherwise, one could find open sets `v` and `w` separating `f z` from `x`. Then, for large `n`,
    the image `f '' (s i)` would be included in `v` by continuity of `f`, so its closure would be
    contained in the closure of `v`, and therefore it would be disjoint from `w`. This is a
    contradiction since `x` belongs both to this closure and to `w`. -/
  letI := TopologicalSpace.upgradeIsCompletelyMetrizable γ
  obtain ⟨b, b_count, b_nonempty, hb⟩ :
    ∃ b : Set (Set γ), b.Countable ∧ ∅ ∉ b ∧ IsTopologicalBasis b := exists_countable_basis γ
  haveI : Encodable b := b_count.toEncodable
  let A := { p : b × b // Disjoint (p.1 : Set γ) p.2 }
  -- for each pair of disjoint sets in the topological basis `b`, consider Borel sets separating
  -- their images, by injectivity of `f` and the Lusin separation theorem.
  have : ∀ p : A, ∃ q : Set β,
      f '' (p.1.1 : Set γ) ⊆ q ∧ Disjoint (f '' (p.1.2 : Set γ)) q ∧ MeasurableSet q := by
    intro p
    apply
      AnalyticSet.measurablySeparable ((hb.isOpen p.1.1.2).analyticSet_image f_cont)
        ((hb.isOpen p.1.2.2).analyticSet_image f_cont)
    exact Disjoint.image p.2 f_inj.injOn (subset_univ _) (subset_univ _)
  choose q hq1 hq2 q_meas using this
  -- define sets `E i` and `F n` as in the proof sketch above
  let E : b → Set β := fun s =>
    closure (f '' s) ∩ ⋂ (t : b) (ht : Disjoint s.1 t.1), q ⟨(s, t), ht⟩ \ q ⟨(t, s), ht.symm⟩
  obtain ⟨u, u_anti, u_pos, u_lim⟩ :
      ∃ u : ℕ → ℝ, StrictAnti u ∧ (∀ n : ℕ, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  let F : ℕ → Set β := fun n => ⋃ (s : b) (_ : IsBounded s.1 ∧ diam s.1 ≤ u n), E s
  -- it is enough to show that `range f = ⋂ F n`, as the latter set is obviously measurable.
  suffices range f = ⋂ n, F n by
    have E_meas : ∀ s : b, MeasurableSet (E s) := by
      intro b
      refine isClosed_closure.measurableSet.inter ?_
      refine MeasurableSet.iInter fun s => ?_
      exact MeasurableSet.iInter fun hs => (q_meas _).diff (q_meas _)
    have F_meas : ∀ n, MeasurableSet (F n) := by
      intro n
      refine MeasurableSet.iUnion fun s => ?_
      exact MeasurableSet.iUnion fun _ => E_meas _
    rw [this]
    exact MeasurableSet.iInter fun n => F_meas n
  -- we check both inclusions.
  apply Subset.antisymm
  -- we start with the easy inclusion `range f ⊆ ⋂ F n`. One just needs to unfold the definitions.
  · rintro x ⟨y, rfl⟩
    refine mem_iInter.2 fun n => ?_
    obtain ⟨s, sb, ys, hs⟩ : ∃ (s : Set γ), s ∈ b ∧ y ∈ s ∧ s ⊆ ball y (u n / 2) := by
      apply hb.mem_nhds_iff.1
      exact ball_mem_nhds _ (half_pos (u_pos n))
    have diam_s : diam s ≤ u n := by
      apply (diam_mono hs isBounded_ball).trans
      convert diam_ball (x := y) (half_pos (u_pos n)).le
      ring
    refine mem_iUnion.2 ⟨⟨s, sb⟩, ?_⟩
    refine mem_iUnion.2 ⟨⟨isBounded_ball.subset hs, diam_s⟩, ?_⟩
    apply mem_inter (subset_closure (mem_image_of_mem _ ys))
    refine mem_iInter.2 fun t => mem_iInter.2 fun ht => ⟨?_, ?_⟩
    · apply hq1
      exact mem_image_of_mem _ ys
    · apply disjoint_left.1 (hq2 ⟨(t, ⟨s, sb⟩), ht.symm⟩)
      exact mem_image_of_mem _ ys
  -- Now, let us prove the harder inclusion `⋂ F n ⊆ range f`.
  · intro x hx
    -- pick for each `n` a good set `s n` of small diameter for which `x ∈ E (s n)`.
    have C1 : ∀ n, ∃ (s : b) (_ : IsBounded s.1 ∧ diam s.1 ≤ u n), x ∈ E s := fun n => by
      simpa only [F, mem_iUnion] using mem_iInter.1 hx n
    choose s hs hxs using C1
    have C2 : ∀ n, (s n).1.Nonempty := by
      intro n
      rw [nonempty_iff_ne_empty]
      intro hn
      have := (s n).2
      rw [hn] at this
      exact b_nonempty this
    -- choose a point `y n ∈ s n`.
    choose y hy using C2
    have I : ∀ m n, ((s m).1 ∩ (s n).1).Nonempty := by
      intro m n
      rw [← not_disjoint_iff_nonempty_inter]
      by_contra! h
      have A : x ∈ q ⟨(s m, s n), h⟩ \ q ⟨(s n, s m), h.symm⟩ :=
        haveI := mem_iInter.1 (hxs m).2 (s n)
        (mem_iInter.1 this h :)
      have B : x ∈ q ⟨(s n, s m), h.symm⟩ \ q ⟨(s m, s n), h⟩ :=
        haveI := mem_iInter.1 (hxs n).2 (s m)
        (mem_iInter.1 this h.symm :)
      exact A.2 B.1
    -- the points `y n` are nearby, and therefore they form a Cauchy sequence.
    have cauchy_y : CauchySeq y := by
      have : Tendsto (fun n => 2 * u n) atTop (𝓝 0) := by
        simpa only [mul_zero] using u_lim.const_mul 2
      refine cauchySeq_of_le_tendsto_0' (fun n => 2 * u n) (fun m n hmn => ?_) this
      rcases I m n with ⟨z, zsm, zsn⟩
      calc
        dist (y m) (y n) ≤ dist (y m) z + dist z (y n) := dist_triangle _ _ _
        _ ≤ u m + u n :=
          (add_le_add ((dist_le_diam_of_mem (hs m).1 (hy m) zsm).trans (hs m).2)
            ((dist_le_diam_of_mem (hs n).1 zsn (hy n)).trans (hs n).2))
        _ ≤ 2 * u m := by linarith [u_anti.antitone hmn]
    haveI : Nonempty γ := ⟨y 0⟩
    -- let `z` be its limit.
    let z := limUnder atTop y
    have y_lim : Tendsto y atTop (𝓝 z) := cauchy_y.tendsto_limUnder
    suffices f z = x by
      rw [← this]
      exact mem_range_self _
    -- assume for a contradiction that `f z ≠ x`.
    by_contra! hne
    -- introduce disjoint open sets `v` and `w` separating `f z` from `x`.
    obtain ⟨v, w, v_open, w_open, fzv, xw, hvw⟩ := t2_separation hne
    obtain ⟨δ, δpos, hδ⟩ : ∃ δ > (0 : ℝ), ball z δ ⊆ f ⁻¹' v := by
      apply Metric.mem_nhds_iff.1
      exact f_cont.continuousAt.preimage_mem_nhds (v_open.mem_nhds fzv)
    obtain ⟨n, hn⟩ : ∃ n, u n + dist (y n) z < δ :=
      haveI : Tendsto (fun n => u n + dist (y n) z) atTop (𝓝 0) := by
        simpa only [add_zero] using u_lim.add (tendsto_iff_dist_tendsto_zero.1 y_lim)
      ((tendsto_order.1 this).2 _ δpos).exists
    -- for large enough `n`, the image of `s n` is contained in `v`, by continuity of `f`.
    have fsnv : f '' s n ⊆ v := by
      rw [image_subset_iff]
      apply Subset.trans _ hδ
      intro a ha
      calc
        dist a z ≤ dist a (y n) + dist (y n) z := dist_triangle _ _ _
        _ ≤ u n + dist (y n) z :=
          (add_le_add_right ((dist_le_diam_of_mem (hs n).1 ha (hy n)).trans (hs n).2) _)
        _ < δ := hn
    -- as `x` belongs to the closure of `f '' (s n)`, it belongs to the closure of `v`.
    have : x ∈ closure v := closure_mono fsnv (hxs n).1
    -- this is a contradiction, as `x` is supposed to belong to `w`, which is disjoint from
    -- the closure of `v`.
    exact disjoint_left.1 (hvw.closure_left w_open) this xw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9111cc2ee3a579ec232cef8995c9d1c614c23ec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
