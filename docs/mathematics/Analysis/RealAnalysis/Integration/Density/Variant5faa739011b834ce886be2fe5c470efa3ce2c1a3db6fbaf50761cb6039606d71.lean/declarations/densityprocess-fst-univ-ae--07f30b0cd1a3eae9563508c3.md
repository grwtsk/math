# densityProcess_fst_univ_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14aa4c4c-d903-92ac-1ed8-8113667d4bad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4781dcd-40ec-7861-ea5c-1b1d95607ee9",
  "kind": "lemma",
  "lexical_name": "densityProcess_fst_univ_ae",
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
  "slug": "densityprocess-fst-univ-ae--07f30b0cd1a3eae9563508c3",
  "source": {
    "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 660,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f30b0cd1a3eae9563508c3a0f56924d3350ed2808631c8cd2a658e1375efef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4781dcd-40ec-7861-ea5c-1b1d95607ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma densityProcess_fst_univ_ae (κ : Kernel α (γ × β)) [IsFiniteKernel κ] (n : ℕ) (a : α) :
    ∀ᵐ x ∂(fst κ a), densityProcess κ (fst κ) n a x univ = 1 := by
  rw [ae_iff]
  have : {x | ¬ densityProcess κ (fst κ) n a x univ = 1}
      ⊆ {x | fst κ a (countablePartitionSet n x) = 0} := by
    intro x hx
    simp only [mem_setOf_eq] at hx ⊢
    rw [densityProcess_fst_univ] at hx
    simpa using hx
  refine measure_mono_null this ?_
  have : {x | fst κ a (countablePartitionSet n x) = 0}
      ⊆ ⋃ (u) (_ : u ∈ countablePartition γ n) (_ : fst κ a u = 0), u := by
    intro t ht
    simp only [mem_setOf_eq, mem_iUnion, exists_prop] at ht ⊢
    exact ⟨countablePartitionSet n t, countablePartitionSet_mem _ _, ht,
      mem_countablePartitionSet _ _⟩
  refine measure_mono_null this ?_
  rw [measure_biUnion]
  · simp
  · exact (finite_countablePartition _ _).countable
  · intro s hs t ht hst
    simp only [disjoint_iUnion_right, disjoint_iUnion_left]
    exact fun _ _ ↦ disjoint_countablePartition hs ht hst
  · intro s hs
    by_cases h : fst κ a s = 0
    · simp [h, measurableSet_countablePartition n hs]
    · simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa481c381282b67d7a92dad1fe0e7877af5cd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
