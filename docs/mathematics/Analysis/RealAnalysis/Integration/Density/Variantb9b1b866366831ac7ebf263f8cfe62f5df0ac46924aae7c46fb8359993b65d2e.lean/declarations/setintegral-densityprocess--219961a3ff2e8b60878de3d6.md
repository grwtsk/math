# setIntegral_densityProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee6d67d1-aa6a-351b-55ee-c9d7771f5bb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c0f7cda-ba08-3ac3-124c-37e11cdf1f14",
  "kind": "lemma",
  "lexical_name": "setIntegral_densityProcess",
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
  "slug": "setintegral-densityprocess--219961a3ff2e8b60878de3d6",
  "source": {
    "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:219961a3ff2e8b60878de3d6d714fc6d02944c3b50475311d7d7f5daaa81514b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0f7cda-ba08-3ac3-124c-37e11cdf1f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_densityProcess (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (n : ℕ) (a : α) {s : Set β} (hs : MeasurableSet s) {A : Set γ}
    (hA : MeasurableSet[countableFiltration γ n] A) :
    ∫ x in A, densityProcess κ ν n a x s ∂(ν a) = (κ a).real (A ×ˢ s) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  obtain ⟨S, hS_subset, rfl⟩ := (measurableSet_generateFrom_countablePartition_iff _ _).mp hA
  simp_rw [sUnion_eq_iUnion]
  have h_disj : Pairwise (Disjoint on fun i : S ↦ (i : Set γ)) := by
    intro u v huv
    simp only [Function.onFun]
    refine disjoint_countablePartition (hS_subset (by simp)) (hS_subset (by simp)) ?_
    rwa [ne_eq, ← Subtype.ext_iff]
  rw [integral_iUnion, iUnion_prod_const, measureReal_def, measure_iUnion,
      tsum_toReal_eq (fun _ ↦ measure_ne_top _ _)]
  · congr with u
    rw [setIntegral_densityProcess_of_mem hκν _ _ hs (hS_subset (by simp))]
    rfl
  · intro u v huv
    simp only [Finset.coe_sort_coe, Set.disjoint_prod, disjoint_self]
    exact Or.inl (h_disj huv)
  · exact fun _ ↦ (measurableSet_countablePartition n (hS_subset (by simp))).prod hs
  · exact fun _ ↦ measurableSet_countablePartition n (hS_subset (by simp))
  · exact h_disj
  · exact (integrable_densityProcess hκν _ _ hs).integrableOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c54d2a81aa55cbf10c367d7a98e79f17b509a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
