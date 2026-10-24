# addContent_sUnion_le_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeabdc0c-587a-ae82-a424-bd1870de3d88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc61c3da-2195-7c4e-a901-4de64260ffaa",
  "kind": "lemma",
  "lexical_name": "addContent_sUnion_le_sum",
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
  "slug": "addcontent-sunion-le-sum--894ebed6e1e4a84148e49381",
  "source": {
    "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894ebed6e1e4a84148e49381eaa08734c6cc4a8c73561f4096c73f1ae84a87ff",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc61c3da-2195-7c4e-a901-4de64260ffaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addContent_sUnion_le_sum {m : AddContent C} (hC : IsSetSemiring C)
    (J : Finset (Set α)) (h_ss : ↑J ⊆ C) (h_mem : ⋃₀ ↑J ∈ C) :
    m (⋃₀ ↑J) ≤ ∑ u ∈ J, m u := by
  classical
  have h1 : (disjiUnion J (hC.disjointOfUnion h_ss)
      (hC.pairwiseDisjoint_disjointOfUnion h_ss) : Set (Set α)) ⊆ C := by
    simp only [disjiUnion_eq_biUnion, coe_biUnion, mem_coe, iUnion_subset_iff]
    exact fun _ x ↦ hC.disjointOfUnion_subset h_ss x
  have h2 : PairwiseDisjoint (disjiUnion J (hC.disjointOfUnion h_ss)
      ((hC.pairwiseDisjoint_disjointOfUnion h_ss)) : Set (Set α)) id := by
    simp only [disjiUnion_eq_biUnion, coe_biUnion, mem_coe]
    exact hC.pairwiseDisjoint_biUnion_disjointOfUnion h_ss
  have h3 : ⋃₀ J = ⋃₀ ((disjiUnion J (hC.disjointOfUnion h_ss)
      (hC.pairwiseDisjoint_disjointOfUnion h_ss)) : Set (Set α)) := by
    simp only [disjiUnion_eq_biUnion, coe_biUnion, mem_coe]
    exact (Exists.choose_spec (hC.disjointOfUnion_props h_ss)).2.2.2.2.2
  rw [h3, addContent_sUnion h1 h2, sum_disjiUnion]
  · apply sum_le_sum
    intro x hx
    refine sum_addContent_le_of_subset hC (hC.disjointOfUnion_subset h_ss hx)
      (hC.pairwiseDisjoint_disjointOfUnion_of_mem h_ss hx) (h_ss hx)
      (fun _ s ↦ hC.subset_of_mem_disjointOfUnion h_ss hx s)
  · simp only [disjiUnion_eq_biUnion, coe_biUnion, mem_coe] at *
    exact h3.symm ▸ h_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3759153c38316094d596b8fdc1357ca9e40373ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
