# tendsto_densityProcess_fst_atTop_univ_of_monotone

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
      "line": 682,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bfd619b-3c54-f62d-d566-6e34ce9694db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42566957-57e7-1cad-4230-eb7286584cd5",
  "kind": "lemma",
  "lexical_name": "tendsto_densityProcess_fst_atTop_univ_of_monotone",
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
  "slug": "tendsto-densityprocess-fst-attop-univ-of-monotone--e92cf350992ea86a4b3c288e",
  "source": {
    "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 682,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92cf350992ea86a4b3c288e2d56414928b51c22ac77314f6aa6f4fb354f0b4c",
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

Occurrence: `result:42566957-57e7-1cad-4230-eb7286584cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_densityProcess_fst_atTop_univ_of_monotone (κ : Kernel α (γ × β)) (n : ℕ) (a : α)
    (x : γ) (seq : ℕ → Set β) (hseq : Monotone seq) (hseq_iUnion : ⋃ i, seq i = univ) :
    Tendsto (fun m ↦ densityProcess κ (fst κ) n a x (seq m)) atTop
      (𝓝 (densityProcess κ (fst κ) n a x univ)) := by
  simp_rw [densityProcess]
  refine (tendsto_toReal ?_).comp ?_
  · rw [ne_eq, div_eq_top]
    push Not
    simp_rw [fst_apply' _ _ (measurableSet_countablePartitionSet _ _)]
    constructor
    · refine fun h h0 ↦ h (measure_mono_null (fun x ↦ ?_) h0)
      simp only [mem_prod, mem_ofPred_eq, and_imp]
      exact fun h _ ↦ h
    · refine fun h_top ↦ eq_top_mono (measure_mono (fun x ↦ ?_)) h_top
      simp only [mem_prod, mem_ofPred_eq, and_imp]
      exact fun h _ ↦ h
  by_cases h0 : fst κ a (countablePartitionSet n x) = 0
  · rw [fst_apply' _ _ (measurableSet_countablePartitionSet _ _)] at h0 ⊢
    suffices ∀ m, κ a (countablePartitionSet n x ×ˢ seq m) = 0 by
      simp only [this, h0, ENNReal.zero_div, tendsto_const_nhds_iff]
      suffices κ a (countablePartitionSet n x ×ˢ univ) = 0 by
        simp only [this, ENNReal.zero_div]
      convert! h0
      ext x
      simp only [mem_prod, mem_univ, and_true, mem_ofPred_eq]
    refine fun m ↦ measure_mono_null (fun x ↦ ?_) h0
    simp only [mem_prod, mem_ofPred_eq, and_imp]
    exact fun h _ ↦ h
  refine ENNReal.Tendsto.div_const ?_ ?_
  · convert! tendsto_measure_iUnion_atTop (monotone_const.set_prod hseq)
    rw [← prod_iUnion, hseq_iUnion]
  · exact Or.inr h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c54d2a81aa55cbf10c367d7a98e79f17b509a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
