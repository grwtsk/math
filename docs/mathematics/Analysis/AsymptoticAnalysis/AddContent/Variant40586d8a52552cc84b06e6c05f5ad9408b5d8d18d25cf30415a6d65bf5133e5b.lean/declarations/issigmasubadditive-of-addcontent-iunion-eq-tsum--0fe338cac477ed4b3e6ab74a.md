# isSigmaSubadditive_of_addContent_iUnion_eq_tsum

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
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d8962c1-30c9-57e0-defa-7aff68a7d920",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a723b3e-bb2e-19b0-9164-e64958485d68",
  "kind": "theorem",
  "lexical_name": "isSigmaSubadditive_of_addContent_iUnion_eq_tsum",
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
  "slug": "issigmasubadditive-of-addcontent-iunion-eq-tsum--0fe338cac477ed4b3e6ab74a",
  "source": {
    "blob": "3759153c38316094d596b8fdc1357ca9e40373ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 419,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe338cac477ed4b3e6ab74a3027a993a01b5b5c318c7c2790d2f9d8caebd755",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a723b3e-bb2e-19b0-9164-e64958485d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSigmaSubadditive_of_addContent_iUnion_eq_tsum (hC : IsSetRing C)
    (m_iUnion : ∀ (f : ℕ → Set α) (_ : ∀ i, f i ∈ C) (_ : (⋃ i, f i) ∈ C)
      (_hf_disj : Pairwise (Disjoint on f)), m (⋃ i, f i) = ∑' i, m (f i)) :
    m.IsSigmaSubadditive := by
  intro f hf hf_Union
  have h_tendsto : Tendsto (fun n ↦ m (partialSups f n)) atTop (𝓝 (m (⋃ i, f i))) := by
    rw [← iSup_eq_iUnion, ← iSup_partialSups_eq]
    refine tendsto_atTop_addContent_iUnion_of_addContent_iUnion_eq_tsum hC m_iUnion
      (partialSups_monotone f) (hC.partialSups_mem hf) ?_
    rwa [← iSup_eq_iUnion, iSup_partialSups_eq]
  have h_tendsto' : Tendsto (fun n ↦ ∑ i ∈ range (n + 1), m (f i)) atTop (𝓝 (∑' i, m (f i))) := by
    rw [tendsto_add_atTop_iff_nat (f := (fun k ↦ ∑ i ∈ range k, m (f i))) 1]
    exact ENNReal.tendsto_nat_tsum _
  refine le_of_tendsto_of_tendsto' h_tendsto h_tendsto' fun _ ↦ ?_
  rw [partialSups_eq_biUnion_range]
  exact addContent_biUnion_le hC (fun _ _ ↦ hf _)

end IsSetRing

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant40586d8a52552cc84b06e6c05f5ad9408b5d8d18d25cf30415a6d65bf5133e5b.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3759153c38316094d596b8fdc1357ca9e40373ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
