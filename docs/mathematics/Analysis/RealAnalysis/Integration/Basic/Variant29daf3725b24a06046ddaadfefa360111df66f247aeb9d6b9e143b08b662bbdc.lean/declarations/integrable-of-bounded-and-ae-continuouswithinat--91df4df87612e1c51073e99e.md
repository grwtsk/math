# integrable_of_bounded_and_ae_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:420e8478-ebb1-6cbe-f2a4-5542a4712a6d",
  "kind": "theorem",
  "lexical_name": "integrable_of_bounded_and_ae_continuousWithinAt",
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
  "slug": "integrable-of-bounded-and-ae-continuouswithinat--91df4df87612e1c51073e99e",
  "source": {
    "blob": "f0925e524275a3187930041cbdadbf1efd6be99b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 649,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91df4df87612e1c51073e99e295b30a250b33d4e181d9af1dd63eb533cc2d8d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:420e8478-ebb1-6cbe-f2a4-5542a4712a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_bounded_and_ae_continuousWithinAt [CompleteSpace E] {I : Box ι} {f : ℝⁿ → E}
    (hb : ∃ C : ℝ, ∀ x ∈ Box.Icc I, ‖f x‖ ≤ C) (μ : Measure ℝⁿ) [IsLocallyFiniteMeasure μ]
    (hc : ∀ᵐ x ∂(μ.restrict (Box.Icc I)), ContinuousWithinAt f (Box.Icc I) x) :
    Integrable I l f μ.toBoxAdditive.toSMul := by
  /- We prove that f is integrable by proving that we can ensure that the integrals over any
     two tagged prepartitions π₁ and π₂ can be made ε-close by making the partitions
     sufficiently fine.

     Start by defining some constants C, ε₁, ε₂ that will be useful later. -/
  refine integrable_iff_cauchy_basis.2 fun ε ε0 ↦ ?_
  rcases exists_pos_mul_lt ε0 (2 * μ.toBoxAdditive I) with ⟨ε₁, ε₁0, hε₁⟩
  rcases hb with ⟨C, hC⟩
  have C0 : 0 ≤ C := by
    obtain ⟨x, hx⟩ := BoxIntegral.Box.nonempty_coe I
    exact le_trans (norm_nonneg (f x)) <| hC x (I.coe_subset_Icc hx)
  rcases exists_pos_mul_lt ε0 (4 * C) with ⟨ε₂, ε₂0, hε₂⟩
  have ε₂0' : ENNReal.ofReal ε₂ ≠ 0 := ne_of_gt <| ofReal_pos.2 ε₂0
  -- The set of discontinuities of f is contained in an open set U with μ U < ε₂.
  let D := { x ∈ Box.Icc I | ¬ ContinuousWithinAt f (Box.Icc I) x }
  let μ' := μ.restrict (Box.Icc I)
  have μ'D : μ' D = 0 := by
    rcases eventually_iff_exists_mem.1 hc with ⟨V, ae, hV⟩
    exact eq_of_le_of_not_lt (mem_ae_iff.1 ae ▸ (μ'.mono <| fun x h xV ↦ h.2 (hV x xV)))
      _root_.not_lt_zero
  obtain ⟨U, UD, Uopen, hU⟩ := Set.exists_isOpen_lt_add D (show μ' D ≠ ⊤ by simp [μ'D]) ε₂0'
  rw [μ'D, zero_add] at hU
  /- Box.Icc I \ U is compact and avoids discontinuities of f, so there exists r > 0 such that for
     every x ∈ Box.Icc I \ U, the oscillation (within Box.Icc I) of f on the ball of radius r
     centered at x is ≤ ε₁ -/
  have comp : IsCompact (Box.Icc I \ U) :=
    I.isCompact_Icc.of_isClosed_subset (I.isCompact_Icc.isClosed.sdiff Uopen) Set.sdiff_subset
  have : ∀ x ∈ (Box.Icc I \ U), oscillationWithin f (Box.Icc I) x < (ENNReal.ofReal ε₁) := by
    intro x hx
    suffices oscillationWithin f (Box.Icc I) x = 0 by rw [this]; exact ofReal_pos.2 ε₁0
    simpa [OscillationWithin.eq_zero_iff_continuousWithinAt, D, hx.1] using hx.2 ∘ (fun a ↦ UD a)
  rcases comp.uniform_oscillationWithin this with ⟨r, r0, hr⟩
  /- We prove the claim for partitions π₁ and π₂ subordinate to r/2, by writing the difference as
     an integralSum over π₁ ⊓ π₂ and considering separately the boxes of π₁ ⊓ π₂ which are/aren't
     fully contained within U. -/
  refine ⟨fun _ _ ↦ ⟨r / 2, half_pos r0⟩, fun _ _ _ ↦ rfl, fun c₁ c₂ π₁ π₂ h₁ h₁p h₂ h₂p ↦ ?_⟩
  simp only [dist_eq_norm, integralSum_sub_partitions _ _ h₁p h₂p, toSMul_apply, ← smul_sub]
  have μI : μ I < ⊤ := lt_of_le_of_lt (μ.mono I.coe_subset_Icc) I.isCompact_Icc.measure_lt_top
  let t₁ (J : Box ι) : ℝⁿ := (π₁.infPrepartition π₂.toPrepartition).tag J
  let t₂ (J : Box ι) : ℝⁿ := (π₂.infPrepartition π₁.toPrepartition).tag J
  let B := (π₁.toPrepartition ⊓ π₂.toPrepartition).boxes
  classical
  let B' := {J ∈ B | J.toSet ⊆ U}
  have hB' : B' ⊆ B := B.filter_subset (fun J ↦ J.toSet ⊆ U)
  have μJ_ne_top : ∀ J ∈ B, μ J ≠ ⊤ :=
    fun J hJ ↦ lt_top_iff_ne_top.1 <| lt_of_le_of_lt (μ.mono (Prepartition.le_of_mem' _ J hJ)) μI
  have un : ∀ S ⊆ B, ⋃ J ∈ S, J.toSet ⊆ I.toSet :=
    fun S hS ↦ iUnion_subset_iff.2 (fun J ↦ iUnion_subset_iff.2 fun hJ ↦ le_of_mem' _ J (hS hJ))
  rw [← sum_sdiff hB', ← add_halves ε]
  apply le_trans (norm_add_le _ _) (add_le_add ?_ ?_)
  /- If a box J is not contained within U, then the oscillation of f on J is small, which bounds
     the contribution of J to the overall sum. -/
  · have : ∀ J ∈ B \ B', ‖μ.toBoxAdditive J • (f (t₁ J) - f (t₂ J))‖ ≤ μ.toBoxAdditive J * ε₁ := by
      intro J hJ
      rw [Finset.mem_sdiff, B.mem_filter, not_and] at hJ
      rw [norm_smul, μ.toBoxAdditive_apply, Real.norm_of_nonneg measureReal_nonneg]
      gcongr _ * ?_
      obtain ⟨x, xJ, xnU⟩ : ∃ x ∈ J, x ∉ U := Set.not_subset.1 (hJ.2 hJ.1)
      have hx : x ∈ Box.Icc I \ U := ⟨Box.coe_subset_Icc ((le_of_mem' _ J hJ.1) xJ), xnU⟩
      have ineq : edist (f (t₁ J)) (f (t₂ J)) ≤ ediam (f '' (ball x r ∩ (Box.Icc I))) := by
        apply edist_le_ediam_of_mem <;>
          refine Set.mem_image_of_mem f ⟨?_, tag_mem_Icc _ J⟩ <;>
          refine closedBall_subset_ball (div_two_lt_of_pos r0) <| mem_closedBall_comm.1 ?_
        · exact h₁.isSubordinate.infPrepartition π₂.toPrepartition J hJ.1 (Box.coe_subset_Icc xJ)
        · exact h₂.isSubordinate.infPrepartition π₁.toPrepartition J
            ((π₁.mem_infPrepartition_comm).1 hJ.1) (Box.coe_subset_Icc xJ)
      rw [← Metric.eball_ofReal] at ineq
      simpa only [edist_le_ofReal (le_of_lt ε₁0), dist_eq_norm, hJ.1] using ineq.trans (hr x hx)
    refine (norm_sum_le _ _).trans <| (sum_le_sum this).trans ?_
    rw [← sum_mul]
    trans μ.toBoxAdditive I * ε₁; swap
    · linarith
    simp_rw [mul_le_mul_iff_left₀ ε₁0, μ.toBoxAdditive_apply]
    refine le_trans ?_ <| toReal_mono (lt_top_iff_ne_top.1 μI) <| μ.mono <| un (B \ B') sdiff_subset
    simp_rw [measureReal_def]
    rw [← toReal_sum (fun J hJ ↦ μJ_ne_top J (mem_sdiff.1 hJ).1), ← Finset.tsum_subtype]
    refine (toReal_mono <| ne_of_lt <| lt_of_le_of_lt (μ.mono <| un (B \ B') sdiff_subset) μI) ?_
    refine le_of_eq (measure_biUnion (countable_toSet _) ?_ (fun J _ ↦ J.measurableSet_coe)).symm
    exact fun J hJ J' hJ' hJJ' ↦ pairwiseDisjoint _ (mem_sdiff.1 hJ).1 (mem_sdiff.1 hJ').1 hJJ'
  -- The contribution of the boxes contained within U is bounded because f is bounded and μ U < ε₂.
  · have : ∀ J ∈ B', ‖μ.toBoxAdditive J • (f (t₁ J) - f (t₂ J))‖ ≤ μ.toBoxAdditive J * (2 * C) := by
      intro J _
      rw [norm_smul, μ.toBoxAdditive_apply, Real.norm_of_nonneg measureReal_nonneg, two_mul]
      gcongr
      apply norm_sub_le_of_le <;> exact hC _ (TaggedPrepartition.tag_mem_Icc _ J)
    apply (norm_sum_le_of_le B' this).trans
    simp_rw [← sum_mul, μ.toBoxAdditive_apply, measureReal_def,
      ← toReal_sum (fun J hJ ↦ μJ_ne_top J (hB' hJ))]
    suffices (∑ J ∈ B', μ J).toReal ≤ ε₂ by
      linarith [mul_le_mul_of_nonneg_right this <| (mul_nonneg_iff_of_pos_left two_pos).2 C0]
    rw [← toReal_ofReal (le_of_lt ε₂0)]
    refine toReal_mono ofReal_ne_top (le_trans ?_ (le_of_lt hU))
    trans μ' (⋃ J ∈ B', J)
    · simp only [μ', μ.restrict_eq_self <| (un _ hB').trans I.coe_subset_Icc]
      exact le_of_eq <| Eq.symm <| measure_biUnion_finset
        (fun J hJ K hK hJK ↦ pairwiseDisjoint _ (hB' hJ) (hB' hK) hJK) fun J _ ↦ J.measurableSet_coe
    · apply μ'.mono
      simp_rw [iUnion_subset_iff]
      exact fun J hJ ↦ (mem_filter.1 hJ).2

/-- A function that is bounded on a box `I` and a.e. continuous is integrable on `I`.

This is a version of `integrable_of_bounded_and_ae_continuousWithinAt` with a stronger continuity
assumption so that the user does not need to specialize the continuity assumption to each box on
which the theorem is to be applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0925e524275a3187930041cbdadbf1efd6be99b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
