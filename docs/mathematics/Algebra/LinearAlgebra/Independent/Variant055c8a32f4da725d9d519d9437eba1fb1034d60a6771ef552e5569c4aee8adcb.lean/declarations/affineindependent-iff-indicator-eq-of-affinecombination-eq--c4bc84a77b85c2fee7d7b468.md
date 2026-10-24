# affineIndependent_iff_indicator_eq_of_affineCombination_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86e4fec0-6474-22b1-86ad-47f93f4649e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cecbf4b-1814-85fe-2208-43e7b90f73c6",
  "kind": "theorem",
  "lexical_name": "affineIndependent_iff_indicator_eq_of_affineCombination_eq",
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
  "slug": "affineindependent-iff-indicator-eq-of-affinecombination-eq--c4bc84a77b85c2fee7d7b468",
  "source": {
    "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4bc84a77b85c2fee7d7b468008736a25455ec6cbc5cacb582fc2dd337dd82d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cecbf4b-1814-85fe-2208-43e7b90f73c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineIndependent_iff_indicator_eq_of_affineCombination_eq (p : ι → P) :
    AffineIndependent k p ↔
      ∀ (s1 s2 : Finset ι) (w1 w2 : ι → k),
        ∑ i ∈ s1, w1 i = 1 →
          ∑ i ∈ s2, w2 i = 1 →
            s1.affineCombination k p w1 = s2.affineCombination k p w2 →
              Set.indicator (↑s1) w1 = Set.indicator (↑s2) w2 := by
  classical
    constructor
    · intro ha s1 s2 w1 w2 hw1 hw2 heq
      ext i
      by_cases hi : i ∈ s1 ∪ s2
      · rw [← sub_eq_zero]
        rw [← Finset.sum_indicator_subset w1 (s1.subset_union_left (s₂ := s2))] at hw1
        rw [← Finset.sum_indicator_subset w2 (s1.subset_union_right)] at hw2
        have hws : (∑ i ∈ s1 ∪ s2, (Set.indicator (↑s1) w1 - Set.indicator (↑s2) w2) i) = 0 := by
          simp [hw1, hw2]
        rw [Finset.affineCombination_indicator_subset w1 p (s1.subset_union_left (s₂ := s2)),
          Finset.affineCombination_indicator_subset w2 p s1.subset_union_right,
          ← @vsub_eq_zero_iff_eq V, Finset.affineCombination_vsub] at heq
        exact ha (s1 ∪ s2) (Set.indicator (↑s1) w1 - Set.indicator (↑s2) w2) hws heq i hi
      · simp_all
    · intro ha s w hw hs i0 hi0
      let w1 : ι → k := Function.update (Function.const ι 0) i0 1
      have hw1 : ∑ i ∈ s, w1 i = 1 := by
        rw [Finset.sum_update_of_mem hi0]
        simp only [Finset.sum_const_zero, add_zero, const_apply]
      have hw1s : s.affineCombination k p w1 = p i0 :=
        s.affineCombination_of_eq_one_of_eq_zero w1 p hi0 (Function.update_self ..)
          fun _ _ hne => Function.update_of_ne hne ..
      let w2 := w + w1
      have hw2 : ∑ i ∈ s, w2 i = 1 := by
        simp_all only [w2, Pi.add_apply, Finset.sum_add_distrib, zero_add]
      have hw2s : s.affineCombination k p w2 = p i0 := by
        simp_all only [w2, ← Finset.weightedVSub_vadd_affineCombination, zero_vadd]
      replace ha := ha s s w2 w1 hw2 hw1 (hw1s.symm ▸ hw2s)
      have hws : w2 i0 - w1 i0 = 0 := by
        rw [← Finset.mem_coe] at hi0
        rw [← Set.indicator_of_mem hi0 w2, ← Set.indicator_of_mem hi0 w1, ha, sub_self]
      simpa [w2] using hws

/-- A finite family is affinely independent if and only if any affine
combinations (with sum of weights 1) that evaluate to the same point are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc19e85671d53a7b2d70c4149305140ab1a40e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
