# tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39924ea24efca36f560256de7420039b6ab064ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36994c97-b571-7c82-834d-5326fefce325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb7393fd-f426-1e64-3432-80684cbd2ec6",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint",
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
  "slug": "tendsto-measure-biunion-ici-zero-of-pairwise-disjoint--b9f73fb90e0f0ac66554b480",
  "source": {
    "blob": "39924ea24efca36f560256de7420039b6ab064ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 190,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f73fb90e0f0ac66554b480e34420e1ce0614afbbc03a32db267b7bec7f4741",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7393fd-f426-1e64-3432-80684cbd2ec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint
    {X : Type*} [MeasurableSpace X] {μ : Measure X} [IsFiniteMeasure μ]
    {Es : ℕ → Set X} (Es_mble : ∀ i, NullMeasurableSet (Es i) μ)
    (Es_disj : Pairwise fun n m ↦ Disjoint (Es n) (Es m)) :
    Tendsto (μ ∘ fun n ↦ ⋃ i ≥ n, Es i) atTop (𝓝 0) := by
  have decr : Antitone fun n ↦ ⋃ i ≥ n, Es i :=
    fun n m hnm ↦ biUnion_mono (fun _ hi ↦ le_trans hnm hi) (fun _ _ ↦ subset_rfl)
  have nothing : ⋂ n, ⋃ i ≥ n, Es i = ∅ := by
    apply subset_antisymm _ (empty_subset _)
    intro x hx
    simp only [mem_iInter, mem_iUnion, exists_prop] at hx
    obtain ⟨j, _, x_in_Es_j⟩ := hx 0
    obtain ⟨k, k_gt_j, x_in_Es_k⟩ := hx (j + 1)
    have oops := (Es_disj (Nat.ne_of_lt k_gt_j)).ne_of_mem x_in_Es_j x_in_Es_k
    contradiction
  have key := tendsto_measure_iInter_atTop (μ := μ) (fun n ↦ by measurability)
    decr ⟨0, measure_ne_top _ _⟩
  simp only [nothing, measure_empty] at key
  convert! key

open scoped symmDiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39924ea24efca36f560256de7420039b6ab064ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
