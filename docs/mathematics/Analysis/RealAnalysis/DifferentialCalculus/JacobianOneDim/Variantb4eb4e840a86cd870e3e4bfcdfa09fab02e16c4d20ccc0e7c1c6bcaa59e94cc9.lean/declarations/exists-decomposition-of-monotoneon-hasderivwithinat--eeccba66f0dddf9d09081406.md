# exists_decomposition_of_monotoneOn_hasDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd70216dd5680eb95ffea220a9fa82e4a045ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93c00313-04a0-f1cc-c481-a91c03bde32c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40a15097-ebbe-2716-f60a-8b2831d0b97d",
  "kind": "theorem",
  "lexical_name": "exists_decomposition_of_monotoneOn_hasDerivWithinAt",
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
  "slug": "exists-decomposition-of-monotoneon-hasderivwithinat--eeccba66f0dddf9d09081406",
  "source": {
    "blob": "dcd70216dd5680eb95ffea220a9fa82e4a045ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeccba66f0dddf9d090814061f01ec345099d19ce164db29eb4940656d24b2c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40a15097-ebbe-2716-f60a-8b2831d0b97d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_decomposition_of_monotoneOn_hasDerivWithinAt (hs : MeasurableSet s)
    (hf : MonotoneOn f s) (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) :
    ∃ (a b c : Set ℝ), a ∪ (b ∪ c) = s ∧ MeasurableSet a ∧ MeasurableSet b ∧ MeasurableSet c ∧
    Disjoint a (b ∪ c) ∧ Disjoint b c ∧ a.Countable ∧ (f '' b).Countable ∧
    (∀ x ∈ b, f' x = 0) ∧ (∀ x ∈ c, 0 ≤ f' x) ∧ InjOn f c := by
  let a := {x ∈ s | 𝓝[s ∩ Ioi x] x = ⊥} ∪ {x ∈ s | 𝓝[s ∩ Iio x] x = ⊥}
  have a_count : a.Countable :=
    countable_setOfPred_isolated_right_within.union countable_setOfPred_isolated_left_within
  let s₁ := s \ a
  have hs₁ : MeasurableSet s₁ := hs.diff a_count.measurableSet
  let u : Set ℝ := {c | ∃ x y, x ∈ s₁ ∧ y ∈ s₁ ∧ x < y ∧ f x = c ∧ f y = c}
  have hu : Set.Countable u := MonotoneOn.countable_setOfPred_two_preimages (hf.mono sdiff_subset)
  let b := s₁ ∩ f ⁻¹' u
  have hb : MeasurableSet b := by
    have : b = ⋃ z ∈ u, s₁ ∩ f ⁻¹' {z} := by ext; simp [b]
    rw [this]
    apply MeasurableSet.biUnion hu (fun z hz ↦ ?_)
    obtain ⟨v, hv, tv⟩ : ∃ v, OrdConnected v ∧ (s \ a) ∩ f ⁻¹' {z} = (s \ a) ∩ v :=
      ordConnected_singleton.preimage_monotoneOn (hf.mono sdiff_subset)
    exact tv ▸ (hs.diff a_count.measurableSet).inter hv.measurableSet
  let c := s₁ \ b
  have hc : MeasurableSet c := hs₁.diff hb
  refine ⟨a, b, c, ?_, a_count.measurableSet, hb, hc, ?_, ?_, a_count, ?_, ?_, ?_, ?_⟩
  · ext x
    simp only [sdiff_self_inter, inter_union_sdiff, union_sdiff_self, mem_union, mem_ofPred_eq,
      or_iff_right_iff_imp, a, b, s₁, c]
    tauto
  · simpa [b, c, s₁] using disjoint_sdiff_right
  · simpa [c] using disjoint_sdiff_right
  · exact hu.mono (by simp [b])
  · /- We have to show that the derivative is `0` at `x ∈ b`. For that, we use that there is another
    point `p` with `f p = f x`, by definition of `b`. If `p < x`, then `f` is locally constant to
    the left of `x`. As `x` is not isolated to its left (since we are not in the set `a`), it
    follows that `f' x = 0`. The same argument works if `x < p`, using the right neighborhood
    instead. -/
    intro x hx
    obtain ⟨p, ps₁, px, fpx⟩ : ∃ p ∈ s₁, p ≠ x ∧ f p = f x := by
      rcases hx.2 with ⟨p, q, ps₁, qs₁, pq, hp, hq⟩
      rcases eq_or_ne p x with h'p | h'p
      · exact ⟨q, qs₁, (h'p.symm.le.trans_lt pq).ne', hq⟩
      · exact ⟨p, ps₁, h'p, hp⟩
    -- we treat separately the cases `p < x` and `x < p` as we couldn't unify their proofs nicely
    rcases lt_or_gt_of_ne px with px | px
    · have K : HasDerivWithinAt f 0 (s ∩ Ioo p x) x := by
        have E (y) (hy : y ∈ s ∩ Ioo p x) : f y = f x := by
          apply le_antisymm (hf hy.1 hx.1.1 hy.2.2.le)
          rw [← fpx]
          exact hf ps₁.1 hy.1 hy.2.1.le
        have : HasDerivWithinAt (fun y ↦ f x) 0 (s ∩ Ioo p x) x :=
          hasDerivWithinAt_const x (s ∩ Ioo p x) (f x)
        exact this.congr E rfl
      have K' : HasDerivWithinAt f (f' x) (s ∩ Ioo p x) x :=
        (hf' x hx.1.1).mono inter_subset_left
      apply UniqueDiffWithinAt.eq_deriv _ _ K' K
      have J1 : (s ∩ Ioo p x) \ {x} = s ∩ Ioo p x := by simp
      have J2 : 𝓝[s ∩ Ioo p x] x = 𝓝[s ∩ Iio x] x := by
        simp [nhdsWithin_inter, nhdsWithin_Ioo_eq_nhdsLT px]
      rw [uniqueDiffWithinAt_iff_accPt, accPt_principal_iff_nhdsWithin, J1, J2]
      simp only [mem_inter_iff, Set.mem_sdiff, hx.1.1, mem_union, mem_ofPred_eq, true_and, not_or,
        mem_preimage, b, s₁, a] at hx
      exact neBot_iff.2 hx.1.2
    · have K : HasDerivWithinAt f 0 (s ∩ Ioo x p) x := by
        have E (y) (hy : y ∈ s ∩ Ioo x p) : f y = f x := by
          apply le_antisymm _ (hf hx.1.1 hy.1 hy.2.1.le)
          rw [← fpx]
          exact hf hy.1 ps₁.1 hy.2.2.le
        have : HasDerivWithinAt (fun y ↦ f x) 0 (s ∩ Ioo x p) x :=
          hasDerivWithinAt_const x (s ∩ Ioo x p) (f x)
        exact this.congr E rfl
      have K' : HasDerivWithinAt f (f' x) (s ∩ Ioo x p) x :=
        (hf' x hx.1.1).mono inter_subset_left
      apply UniqueDiffWithinAt.eq_deriv _ _ K' K
      have J1 : (s ∩ Ioo x p) \ {x} = (s ∩ Ioo x p) := by simp
      have J2 : 𝓝[s ∩ Ioo x p] x = 𝓝[s ∩ Ioi x] x := by
        simp [nhdsWithin_inter, nhdsWithin_Ioo_eq_nhdsGT px]
      rw [uniqueDiffWithinAt_iff_accPt, accPt_principal_iff_nhdsWithin, J1, J2]
      simp only [mem_inter_iff, Set.mem_sdiff, hx.1.1, mem_union, mem_ofPred_eq, true_and, not_or,
        mem_preimage, b, s₁, a] at hx
      exact neBot_iff.2 hx.1.1
  · /- We have to show that the derivative is nonnegative at points of `c`. As these points are
    not isolated in `s`, this follows from the fact that `f` is monotone on `s`. -/
    intro x hx
    apply (hf' x hx.1.1).nonneg_of_monotoneOn _ hf
    simp only [Set.mem_sdiff, hx.1.1, mem_union, mem_ofPred_eq, true_and, not_or, c, s₁, a, b] at hx
    rw [accPt_principal_iff_nhdsWithin]
    have : (𝓝[s ∩ Iio x] x).NeBot := neBot_iff.2 hx.1.2
    apply this.mono
    apply nhdsWithin_mono
    rintro y ⟨yt, yx : y < x⟩
    exact ⟨yt, by simpa using yx.ne⟩
  · intro x hx y hy hxy
    contrapose! hxy
    wlog H : x < y generalizing x y with h
    · have : y < x := by order
      exact (h hy hx hxy.symm this).symm
    refine fun h ↦ hx.2 ⟨hx.1, ?_⟩
    exact ⟨x, y, hx.1, hy.1, H, rfl, h.symm⟩

/-- Change of variable formula for differentiable functions: if a real function `f` is
monotone and differentiable on a measurable set `s`, then the Lebesgue integral of a function
`u : ℝ → ℝ≥0∞` on `f '' s` coincides with the integral of `(f' x) * u ∘ f` on `s`.
Note that the measurability of `f '' s` is given by `MeasurableSet.image_of_monotoneOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variantb4eb4e840a86cd870e3e4bfcdfa09fab02e16c4d20ccc0e7c1c6bcaa59e94cc9.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd70216dd5680eb95ffea220a9fa82e4a045ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
