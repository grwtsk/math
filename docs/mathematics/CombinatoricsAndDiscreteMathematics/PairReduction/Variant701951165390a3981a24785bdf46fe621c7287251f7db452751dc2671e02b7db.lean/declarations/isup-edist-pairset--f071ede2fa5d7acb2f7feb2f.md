# iSup_edist_pairSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e893d97f-ba39-d144-0e34-b6d27aea2629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a44fbd7d-bf3d-ef35-5a1f-a96d3a455456",
  "kind": "lemma",
  "lexical_name": "iSup_edist_pairSet",
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
  "slug": "isup-edist-pairset--f071ede2fa5d7acb2f7feb2f",
  "source": {
    "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 396,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f071ede2fa5d7acb2f7feb2fa5a4f233bd140b47dbce25fa084a9f6ab4a879ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44fbd7d-bf3d-ef35-5a1f-a96d3a455456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_edist_pairSet {E : Type*} [TopologicalSpace E] [WeakPseudoEMetricSpace E] (ha : 1 < a)
    (f : T → E) :
    ⨆ (s : J) (t : { t : J // edist s t ≤ c}), edist (f s) (f t)
        ≤ 2 * ⨆ p : pairSet J a c, edist (f p.1.1) (f p.1.2) := by
  rw [iSup_le_iff]; rintro ⟨s, hs⟩
  rw [iSup_le_iff]; rintro ⟨⟨t, ht⟩, hst⟩
  have hJ : J.Nonempty := ⟨s, hs⟩
  let P (l : ℕ) := s ∈ (logSizeBallSeq J hJ a c l).finset ∧ t ∈ (logSizeBallSeq J hJ a c l).finset
  let l := Nat.findGreatest P (#J - 1)
  obtain ⟨hsV, htV⟩ : P l := by
    apply Nat.findGreatest_spec zero_le
    simpa [P, finset_logSizeBallSeq_zero] using ⟨hs, ht⟩
  wlog h : s ∉ (logSizeBallSeq J hJ a c (l + 1)).finset generalizing s t
  · have h' : t ∉ (logSizeBallSeq J hJ a c (l + 1)).finset := by
      have hl : l < #J - 1 := by
        by_contra hl
        simp only [not_lt, tsub_le_iff_right] at hl
        have hlJ : l + 1 = #J := by
          refine Nat.le_antisymm_iff.mpr ⟨?_, hl⟩
          dsimp [l]
          grw [← Nat.sub_add_cancel <| Order.one_le_iff_pos.mpr (Finset.card_pos.mpr hJ),
            Nat.findGreatest_le]
          rfl
        apply h
        suffices h_emp : (logSizeBallSeq J hJ a c (l + 1)).finset = ∅ from by simp [h_emp]
        rw [← Finset.card_eq_zero, ← Nat.le_zero, ← Nat.sub_self #J, hlJ]
        apply card_finset_logSizeBallSeq_le
      simp only [Decidable.not_not] at h
      have hP := Nat.findGreatest_is_greatest (lt_add_one l) (Nat.add_one_le_of_lt hl)
      simpa [P, h] using hP
    have hts : edist t s ≤ c := by rw [edist_comm]; exact hst
    rw [edist_comm]
    have hP : P = (fun l ↦
      t ∈ (logSizeBallSeq J hJ a c l).finset ∧ s ∈ (logSizeBallSeq J hJ a c l).finset) := by
        ext; simp [P, and_comm]
    simp only [hP, l] at htV hsV h'
    exact this t ht s hs hts htV hsV h'
  simp only [finset_logSizeBallSeq_add_one, logSizeBallStruct.smallBall, Finset.mem_sdiff, hsV,
    Finset.mem_filter, true_and, not_le, not_lt] at h
  have hsB : s ∈ (logSizeBallSeq J hJ a c l).ball c := by
    simp only [logSizeBallStruct.ball, Finset.mem_filter, hsV, true_and]
    grw [h, tsub_le_self]
  have htB : t ∈ (logSizeBallSeq J hJ a c l).ball c := by
    simp only [logSizeBallStruct.ball, Finset.mem_filter, htV, true_and]
    apply le_trans (edist_triangle _ s _)
    apply le_of_le_of_eq (add_le_add h hst)
    nth_rw 3 [← one_mul c]
    rw [← add_mul]
    congr
    rw [ENNReal.sub_add_eq_add_sub _ (ENNReal.one_ne_top),
      ENNReal.add_sub_cancel_right (ENNReal.one_ne_top)]
    rw [← Nat.cast_one]
    gcongr
    exact one_le_radius_logSizeBallSeq hJ ha l
  have hsP : ((logSizeBallSeq J hJ a c l).point, s) ∈ pairSetSeq J a c l := by
    simp [pairSetSeq, hJ, hsB]
  have htP : ((logSizeBallSeq J hJ a c l).point, t) ∈ pairSetSeq J a c l := by
    simp [pairSetSeq, hJ, htB]
  have sup_bound {x y : T} (hxy : (x, y) ∈ pairSetSeq J a c l) :
    edist (f x) (f y) ≤ ⨆ p : pairSet J a c, edist (f p.1.1) (f p.1.2) := by
    simp only [iSup_subtype]
    apply le_iSup_of_le (i := (x, y))
    apply le_iSup_of_le
    · exact le_rfl
    refine Finset.mem_biUnion.mpr ⟨l, ?_, hxy⟩
    refine Finset.mem_range.mpr <| lt_of_le_of_lt (Nat.findGreatest_le (#J - 1)) ?_
    exact Nat.sub_lt (Finset.card_pos.mpr hJ) zero_lt_one
  rw [two_mul]
  apply le_trans (edist_triangle _ (f (logSizeBallSeq J hJ a c l).point) _)
  rw [edist_comm]
  apply add_le_add (sup_bound hsP) (sup_bound htP)

end PairReduction

open PairReduction in
/-- **Pair Reduction**: Given pseudometric spaces `T` and `E`, `c ≥ 0`, and a finite subset `J` of
`T` such that `|J| ≤ aⁿ` for some `a ≥ 0` and `n : ℕ`, `pair_reduction` states that there exists a
set `K ⊆ J²` such that for any function `f : T → E`:
1. `|K| ≤ a|J|`
2. `∀ (s, t) ∈ K, d(s, t) ≤ cn`
3. `sup_{s, t ∈ J : d(s, t) ≤ c} d(f(s), f(t)) ≤ 2 sup_{(s, t) ∈ K} d(f(s), f(t))`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9a0345e8f8bb40ece9f794eeb8fc539879f458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
