# indepSets_piiUnionInter_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a71e09c-422b-b608-79b1-a5ecf8a787ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfe0068d-9343-6b18-0759-3aba33131192",
  "kind": "theorem",
  "lexical_name": "indepSets_piiUnionInter_of_disjoint",
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
  "slug": "indepsets-piiunioninter-of-disjoint--c922b80b25406dc9720fe6cb",
  "source": {
    "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 400,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c922b80b25406dc9720fe6cb51126fc5d5ea7b4d899f598f465e218fed3762e9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfe0068d-9343-6b18-0759-3aba33131192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indepSets_piiUnionInter_of_disjoint [IsMarkovKernel κ] {s : ι → Set (Set Ω)}
    {S T : Set ι} (h_indep : iIndepSets s κ μ) (hST : Disjoint S T) :
    IndepSets (piiUnionInter s S) (piiUnionInter s T) κ μ := by
  rintro t1 t2 ⟨p1, hp1, f1, ht1_m, ht1_eq⟩ ⟨p2, hp2, f2, ht2_m, ht2_eq⟩
  classical
  let g i := ite (i ∈ p1) (f1 i) Set.univ ∩ ite (i ∈ p2) (f2 i) Set.univ
  have h_P_inter : ∀ᵐ a ∂μ, κ a (t1 ∩ t2) = ∏ n in p1 ∪ p2, κ a (g n) := by
    have hgm : ∀ i ∈ p1 ∪ p2, g i ∈ s i := by
      intro i hi_mem_union
      rw [Finset.mem_union] at hi_mem_union
      cases' hi_mem_union with hi1 hi2
      · have hi2 : i ∉ p2 := fun hip2 => Set.disjoint_left.mp hST (hp1 hi1) (hp2 hip2)
        simp_rw [if_pos hi1, if_neg hi2, Set.inter_univ]
        exact ht1_m i hi1
      · have hi1 : i ∉ p1 := fun hip1 => Set.disjoint_right.mp hST (hp2 hi2) (hp1 hip1)
        simp_rw [if_neg hi1, if_pos hi2, Set.univ_inter]
        exact ht2_m i hi2
    have h_p1_inter_p2 :
      ((⋂ x ∈ p1, f1 x) ∩ ⋂ x ∈ p2, f2 x) =
        ⋂ i ∈ p1 ∪ p2, ite (i ∈ p1) (f1 i) Set.univ ∩ ite (i ∈ p2) (f2 i) Set.univ := by
      ext1 x
      simp only [Set.mem_ite_univ_right, Set.mem_inter_iff, Set.mem_iInter, Finset.mem_union]
      exact
        ⟨fun h i _ => ⟨h.1 i, h.2 i⟩, fun h =>
          ⟨fun i hi => (h i (Or.inl hi)).1 hi, fun i hi => (h i (Or.inr hi)).2 hi⟩⟩
    filter_upwards [h_indep _ hgm] with a ha
    rw [ht1_eq, ht2_eq, h_p1_inter_p2, ← ha]
  filter_upwards [h_P_inter, h_indep p1 ht1_m, h_indep p2 ht2_m] with a h_P_inter ha1 ha2
  have h_μg : ∀ n, κ a (g n) = (ite (n ∈ p1) (κ a (f1 n)) 1) * (ite (n ∈ p2) (κ a (f2 n)) 1) := by
    intro n
    dsimp only
    split_ifs with h1 h2
    · exact absurd rfl (Set.disjoint_iff_forall_ne.mp hST (hp1 h1) (hp2 h2))
    all_goals simp only [measure_univ, one_mul, mul_one, Set.inter_univ, Set.univ_inter]
  simp_rw [h_P_inter, h_μg, Finset.prod_mul_distrib,
    Finset.prod_ite_mem (p1 ∪ p2) p1 (fun x ↦ κ a (f1 x)), Finset.union_inter_cancel_left,
    Finset.prod_ite_mem (p1 ∪ p2) p2 (fun x => κ a (f2 x)), Finset.union_inter_cancel_right, ht1_eq,
      ← ha1, ht2_eq, ← ha2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb720a5629710180fcd3c206acbe3275cdb76d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
