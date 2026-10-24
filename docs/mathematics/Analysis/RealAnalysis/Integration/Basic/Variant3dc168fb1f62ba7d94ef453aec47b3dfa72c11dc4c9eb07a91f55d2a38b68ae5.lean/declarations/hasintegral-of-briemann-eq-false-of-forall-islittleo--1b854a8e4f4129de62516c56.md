# HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5194566651b60ebf8b784cf94b7bd0a24aa47f94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 760,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dc168fb1f62ba7d94ef453aec47b3dfa72c11dc4c9eb07a91f55d2a38b68ae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a18a3ed-ed7f-42ed-43bf-3c33cec95b5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac4b9064-0293-97bc-cd3d-407355c2f2e6",
  "kind": "theorem",
  "lexical_name": "HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO",
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
  "slug": "hasintegral-of-briemann-eq-false-of-forall-islittleo--1b854a8e4f4129de62516c56",
  "source": {
    "blob": "5194566651b60ebf8b784cf94b7bd0a24aa47f94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 760,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3dc168fb1f62ba7d94ef453aec47b3dfa72c11dc4c9eb07a91f55d2a38b68ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b854a8e4f4129de62516c56d3bb04ab5736f8751fe1c5cbee6c7ae7386c6801",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3dc168fb1f62ba7d94ef453aec47b3dfa72c11dc4c9eb07a91f55d2a38b68ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4b9064-0293-97bc-cd3d-407355c2f2e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO (hl : l.bRiemann = false)
    (B : ι →ᵇᵃ[I] ℝ) (hB0 : ∀ J, 0 ≤ B J) (g : ι →ᵇᵃ[I] F) (s : Set ℝⁿ) (hs : s.Countable)
    (hlH : s.Nonempty → l.bHenstock = true)
    (H₁ : ∀ (c : ℝ≥0), ∀ x ∈ Box.Icc I ∩ s, ∀ ε > (0 : ℝ),
      ∃ δ > 0, ∀ J ≤ I, Box.Icc J ⊆ Metric.closedBall x δ → x ∈ Box.Icc J →
        (l.bDistortion → J.distortion ≤ c) → dist (vol J (f x)) (g J) ≤ ε)
    (H₂ : ∀ (c : ℝ≥0), ∀ x ∈ Box.Icc I \ s, ∀ ε > (0 : ℝ),
      ∃ δ > 0, ∀ J ≤ I, Box.Icc J ⊆ Metric.closedBall x δ → (l.bHenstock → x ∈ Box.Icc J) →
        (l.bDistortion → J.distortion ≤ c) → dist (vol J (f x)) (g J) ≤ ε * B J) :
    HasIntegral I l f vol (g I) := by
  /- We choose `r x` differently for `x ∈ s` and `x ∉ s`.

    For `x ∈ s`, we choose `εs` such that `∑' x : s, εs x < ε / 2 / 2 ^ #ι`, then choose `r x` so
    that `dist (vol J (f x)) (g J) ≤ εs x` for `J` in the `r x`-neighborhood of `x`. This guarantees
    that the sum of these distances over boxes `J` such that `π.tag J ∈ s` is less than `ε / 2`. We
    need an additional multiplier `2 ^ #ι` because different boxes can have the same tag.

    For `x ∉ s`, we choose `r x` so that `dist (vol (J (f x))) (g J) ≤ (ε / 2 / B I) * B J` for a
    box `J` in the `δ`-neighborhood of `x`. -/
  refine ((l.hasBasis_toFilteriUnion_top _).tendsto_iff Metric.nhds_basis_closedBall).2 ?_
  intro ε ε0
  simp only [← exists_prop, gt_iff_lt, Subtype.exists'] at H₁ H₂
  choose! δ₁ Hδ₁ using H₁
  choose! δ₂ Hδ₂ using H₂
  have ε0' := half_pos ε0; have H0 : 0 < (2 : ℝ) ^ Fintype.card ι := pow_pos zero_lt_two _
  rcases hs.exists_pos_forall_sum_le (div_pos ε0' H0) with ⟨εs, hεs0, hεs⟩
  simp only [le_div_iff₀' H0, mul_sum] at hεs
  rcases exists_pos_mul_lt ε0' (B I) with ⟨ε', ε'0, hεI⟩
  classical
  set δ : ℝ≥0 → ℝⁿ → Ioi (0 : ℝ) := fun c x => if x ∈ s then δ₁ c x (εs x) else (δ₂ c) x ε'
  refine ⟨δ, fun c => l.rCond_of_bRiemann_eq_false hl, ?_⟩
  simp only [Set.mem_iUnion, mem_inter_iff, mem_setOf_eq]
  rintro π ⟨c, hπδ, hπp⟩
  -- Now we split the sum into two parts based on whether `π.tag J` belongs to `s` or not.
  rw [← g.sum_partition_boxes le_rfl hπp, Metric.mem_closedBall, integralSum,
    ← sum_filter_add_sum_filter_not π.boxes fun J => π.tag J ∈ s,
    ← sum_filter_add_sum_filter_not π.boxes fun J => π.tag J ∈ s, ← add_halves ε]
  refine dist_add_add_le_of_le ?_ ?_
  · rcases s.eq_empty_or_nonempty with (rfl | hsne); · simp [ε0'.le]
    /- For the boxes such that `π.tag J ∈ s`, we use the fact that at most `2 ^ #ι` boxes have the
        same tag. -/
    specialize hlH hsne
    have : ∀ J ∈ {J ∈ π.boxes | π.tag J ∈ s},
        dist (vol J (f <| π.tag J)) (g J) ≤ εs (π.tag J) := fun J hJ ↦ by
      rw [Finset.mem_filter] at hJ; obtain ⟨hJ, hJs⟩ := hJ
      refine Hδ₁ c _ ⟨π.tag_mem_Icc _, hJs⟩ _ (hεs0 _) _ (π.le_of_mem' _ hJ) ?_
        (hπδ.2 hlH J hJ) fun hD => (Finset.le_sup hJ).trans (hπδ.3 hD)
      convert hπδ.1 J hJ using 3; exact (if_pos hJs).symm
    refine (dist_sum_sum_le_of_le _ this).trans ?_
    rw [sum_comp]
    refine (sum_le_sum ?_).trans (hεs _ ?_)
    · rintro b -
      rw [← Nat.cast_two, ← Nat.cast_pow, ← nsmul_eq_mul]
      refine nsmul_le_nsmul_left (hεs0 _).le ?_
      refine (Finset.card_le_card ?_).trans ((hπδ.isHenstock hlH).card_filter_tag_eq_le b)
      exact filter_subset_filter _ (filter_subset _ _)
    · rw [Finset.coe_image, Set.image_subset_iff]
      exact fun J hJ => (Finset.mem_filter.1 hJ).2
  /- Now we deal with boxes such that `π.tag J ∉ s`.
    In this case the estimate is straightforward. -/
  calc
    dist (∑ J ∈ π.boxes with tag π J ∉ s, vol J (f (tag π J)))
      (∑ J ∈ π.boxes with tag π J ∉ s, g J)
      ≤ ∑ J ∈ π.boxes with tag π J ∉ s, ε' * B J := dist_sum_sum_le_of_le _ fun J hJ ↦ by
      rw [Finset.mem_filter] at hJ; obtain ⟨hJ, hJs⟩ := hJ
      refine Hδ₂ c _ ⟨π.tag_mem_Icc _, hJs⟩ _ ε'0 _ (π.le_of_mem' _ hJ) ?_ (fun hH => hπδ.2 hH J hJ)
        fun hD => (Finset.le_sup hJ).trans (hπδ.3 hD)
      convert hπδ.1 J hJ using 3; exact (if_neg hJs).symm
    _ ≤ ∑ J ∈ π.boxes, ε' * B J := sum_le_sum_of_subset_of_nonneg (filter_subset _ _) fun _ _ _ ↦
      mul_nonneg ε'0.le (hB0 _)
    _ = B I * ε' := by rw [← mul_sum, B.sum_partition_boxes le_rfl hπp, mul_comm]
    _ ≤ ε / 2 := hεI.le

/-- A function `f` has Henstock (or `⊥`) integral over `I` is equal to the value of a box-additive
function `g` on `I` provided that `vol J (f x)` is sufficiently close to `g J` for sufficiently
small boxes `J ∋ x`. This lemma is useful to prove, e.g., to prove the Divergence theorem for
integral along `⊥`.

Let `l` be either `BoxIntegral.IntegrationParams.Henstock` or `⊥`. Let `g` a box-additive function
on subboxes of `I`. Suppose that there exists a nonnegative box-additive function `B` and a
countable set `s` with the following property.

For every `c : ℝ≥0`, a point `x ∈ I.Icc`, and a positive `ε` there exists `δ > 0` such that for any
box `J ≤ I` such that

- `x ∈ J.Icc ⊆ Metric.closedBall x δ`;
- if `l.bDistortion` (i.e., `l = ⊥`), then the distortion of `J` is less than or equal to `c`,

the distance between the term `vol J (f x)` of an integral sum corresponding to `J` and `g J` is
less than or equal to `ε` if `x ∈ s` and is less than or equal to `ε * B J` otherwise.

Then `f` is integrable on `I` along `l` with integral `g I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3dc168fb1f62ba7d94ef453aec47b3dfa72c11dc4c9eb07a91f55d2a38b68ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3dc168fb1f62ba7d94ef453aec47b3dfa72c11dc4c9eb07a91f55d2a38b68ae5.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5194566651b60ebf8b784cf94b7bd0a24aa47f94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
