# isPiSystem_piiUnionInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8d0174-cbce-923c-6a76-eeae43da4b39",
  "kind": "theorem",
  "lexical_name": "isPiSystem_piiUnionInter",
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
  "slug": "ispisystem-piiunioninter--047fbdf6cb10971da332c00f",
  "source": {
    "blob": "3f58d006d5570e35dfb85d57c9a3424fd85c5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 445,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:047fbdf6cb10971da332c00f9afd0d927135039c24dfb6415554e67be588a166",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8d0174-cbce-923c-6a76-eeae43da4b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPiSystem_piiUnionInter (π : ι → Set (Set α)) (hpi : ∀ x, IsPiSystem (π x)) (S : Set ι) :
    IsPiSystem (piiUnionInter π S) := by
  rintro t1 ⟨p1, hp1S, f1, hf1m, ht1_eq⟩ t2 ⟨p2, hp2S, f2, hf2m, ht2_eq⟩ h_nonempty
  simp_rw [piiUnionInter, Set.mem_setOf_eq]
  let g n := ite (n ∈ p1) (f1 n) Set.univ ∩ ite (n ∈ p2) (f2 n) Set.univ
  have hp_union_ss : ↑(p1 ∪ p2) ⊆ S := by
    simp only [hp1S, hp2S, Finset.coe_union, union_subset_iff, and_self_iff]
  use p1 ∪ p2, hp_union_ss, g
  have h_inter_eq : t1 ∩ t2 = ⋂ i ∈ p1 ∪ p2, g i := by
    rw [ht1_eq, ht2_eq]
    simp_rw [← Set.inf_eq_inter]
    ext1 x
    simp only [inf_eq_inter, mem_inter_iff, mem_iInter, Finset.mem_union]
    refine' ⟨fun h i _ => _, fun h => ⟨fun i hi1 => _, fun i hi2 => _⟩⟩
    · split_ifs with h_1 h_2 h_2
      exacts [⟨h.1 i h_1, h.2 i h_2⟩, ⟨h.1 i h_1, Set.mem_univ _⟩, ⟨Set.mem_univ _, h.2 i h_2⟩,
        ⟨Set.mem_univ _, Set.mem_univ _⟩]
    · specialize h i (Or.inl hi1)
      rw [if_pos hi1] at h
      exact h.1
    · specialize h i (Or.inr hi2)
      rw [if_pos hi2] at h
      exact h.2
  refine' ⟨fun n hn => _, h_inter_eq⟩
  simp only []
  split_ifs with hn1 hn2 h
  · refine' hpi n (f1 n) (hf1m n hn1) (f2 n) (hf2m n hn2) (Set.nonempty_iff_ne_empty.2 fun h => _)
    rw [h_inter_eq] at h_nonempty
    suffices h_empty : ⋂ i ∈ p1 ∪ p2, g i = ∅
    exact (Set.not_nonempty_iff_eq_empty.mpr h_empty) h_nonempty
    refine' le_antisymm (Set.iInter_subset_of_subset n _) (Set.empty_subset _)
    refine' Set.iInter_subset_of_subset hn _
    simp_rw [if_pos hn1, if_pos hn2]
    exact h.subset
  · simp [hf1m n hn1]
  · simp [hf2m n h]
  · exact absurd hn (by simp [hn1, h])
#align is_pi_system_pi_Union_Inter isPiSystem_piiUnionInter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f58d006d5570e35dfb85d57c9a3424fd85c5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
