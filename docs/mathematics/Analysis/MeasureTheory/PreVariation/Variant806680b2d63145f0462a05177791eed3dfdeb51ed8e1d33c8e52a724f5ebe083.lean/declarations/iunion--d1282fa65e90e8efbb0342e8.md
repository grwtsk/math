# iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c406938-23c7-6560-d64f-a21f5562e109",
  "kind": "lemma",
  "lexical_name": "iUnion",
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
  "slug": "iunion--d1282fa65e90e8efbb0342e8",
  "source": {
    "blob": "8479669aa1447fb1325a3c4acf8d5467818f81db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 214,
    "path": "GRWTSK/Analysis/MeasureTheory/PreVariation/Variant806680b2d63145f0462a05177791eed3dfdeb51ed8e1d33c8e52a724f5ebe083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1282fa65e90e8efbb0342e8ec557476b85b595563e1907a84f7b5cfafdbb55a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PreVariation/Variant806680b2d63145f0462a05177791eed3dfdeb51ed8e1d33c8e52a724f5ebe083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c406938-23c7-6560-d64f-a21f5562e109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iUnion (hf : IsSigmaSubadditiveSetFun f) (hf' : f ∅ = 0) (s : ℕ → Set X)
    (hs : ∀ i, MeasurableSet (s i)) (hs' : Pairwise (Disjoint on s)) :
    HasSum (fun i ↦ preVariationFun f (s i)) (preVariationFun f (⋃ i, s i)) := by
  refine ENNReal.summable.hasSum_iff.mpr (le_antisymm (sum_le_preVariationFun_iUnion f hs hs') ?_)
  refine ENNReal.le_tsum_of_forall_lt_exists_sum fun b hb ↦ ?_
  simp only [preVariationFun, MeasurableSet.iUnion hs, reduceDIte, lt_iSup_iff] at hb
  obtain ⟨Q, hQ⟩ := hb
  let s' (i : ℕ) : Subtype MeasurableSet := ⟨s i, hs i⟩
  let P (i : ℕ) := Q.restrict (b := s' i) (Set.subset_iUnion s i)
  have splitting : ∑ q ∈ Q.parts, f q ≤ ∑' i, ∑ p ∈ (P i).parts, f p := by
    calc ∑ q ∈ Q.parts, f q
      _ ≤ ∑ q ∈ Q.parts, ∑' i, f (q ⊓ s' i) := by
          apply Finset.sum_le_sum fun q hq => ?_
          have hq_eq : q.val = ⋃ i, q.val ∩ s i := by
            rw [← Set.inter_iUnion]; exact (Set.inter_eq_left.mpr (Q.le hq)).symm
          let t (i : ℕ) : Subtype MeasurableSet := ⟨q.val ∩ s i, q.2.inter (hs i)⟩
          have ht_disj : Pairwise (Disjoint on (Subtype.val ∘ t)) :=
            fun i j hij => (hs' hij).mono Set.inter_subset_right Set.inter_subset_right
          calc f q
            _ = f (⋃ i, q.val ∩ s i) := congrArg f hq_eq
            _ = f (⋃ i, (t i).val) := rfl
            _ ≤ ∑' i, f (t i) := hf t ht_disj
            _ = ∑' i, f (q ⊓ s' i) := rfl
      _ = ∑' i, ∑ q ∈ Q.parts, f (q ⊓ s' i) :=
          (Summable.tsum_finsetSum (fun _ _ ↦ ENNReal.summable)).symm
      _ = ∑' i, ∑ p ∈ (P i).parts, f p := by
          congr 1; funext i
          exact (Q.sum_restrict _ (fun p => f p) hf').symm
  obtain ⟨n, hn⟩ := lt_iSup_iff.mp <| ENNReal.tsum_eq_iSup_nat ▸ lt_of_lt_of_le hQ splitting
  have bound (i : ℕ) : ∑ p ∈ (P i).parts, f p ≤ preVariationFun f (s i) := sum_le f (hs i) (P i)
  exact ⟨Finset.range n, lt_of_lt_of_le hn (Finset.sum_le_sum fun i _ => bound i)⟩

end preVariation

/-!
## Construction of measures from σ-subadditive functions
-/

variable (f : Set X → ℝ≥0∞)

/-- The `VectorMeasure X ℝ≥0∞` built from a σ-subadditive function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PreVariation/Variant806680b2d63145f0462a05177791eed3dfdeb51ed8e1d33c8e52a724f5ebe083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PreVariation/Variant806680b2d63145f0462a05177791eed3dfdeb51ed8e1d33c8e52a724f5ebe083.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8479669aa1447fb1325a3c4acf8d5467818f81db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
