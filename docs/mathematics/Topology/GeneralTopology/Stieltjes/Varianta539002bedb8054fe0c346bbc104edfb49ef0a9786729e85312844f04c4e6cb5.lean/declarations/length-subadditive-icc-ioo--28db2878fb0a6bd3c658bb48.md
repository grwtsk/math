# length_subadditive_Icc_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6342afd3-eda2-493d-b693-725fbcc7ca81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab615e58-1eb3-1a05-698e-36cf16f09860",
  "kind": "theorem",
  "lexical_name": "length_subadditive_Icc_Ioo",
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
  "slug": "length-subadditive-icc-ioo--28db2878fb0a6bd3c658bb48",
  "source": {
    "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 336,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28db2878fb0a6bd3c658bb4864da6fd2d0d0ac22ebbabb1c1a1a459adf9a95aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab615e58-1eb3-1a05-698e-36cf16f09860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_subadditive_Icc_Ioo {a b : R} {c d : ℕ → R} (ss : Icc a b ⊆ ⋃ i, Iotop (c i) (d i)) :
    ofReal (f b - f a) ≤ ∑' i, ofReal (f (d i) - f (c i)) := by
  suffices
    ∀ (s : Finset ℕ) (b), Icc a b ⊆ (⋃ i ∈ (s : Set ℕ), Iotop (c i) (d i)) →
      (ofReal (f b - f a) : ℝ≥0∞) ≤ ∑ i ∈ s, ofReal (f (d i) - f (c i)) by
    rcases isCompact_Icc.elim_finite_subcover_image
        (fun (i : ℕ) (_ : i ∈ univ) => @isOpen_Iotop _ _ _ _ (c i) (d i)) (by simpa using ss) with
      ⟨s, _, hf, hs⟩
    have e : ⋃ i ∈ (hf.toFinset : Set ℕ), Iotop (c i) (d i) = ⋃ i ∈ s, Iotop (c i) (d i) := by
      simp only [Finset.set_biUnion_coe,
        Finite.mem_toFinset]
    rw [ENNReal.tsum_eq_iSup_sum]
    refine le_trans ?_ (le_iSup _ hf.toFinset)
    exact this hf.toFinset _ (by simpa only [e])
  clear ss b
  refine fun s => Finset.strongInductionOn s fun s IH b cv => ?_
  rcases le_total b a with ab | ab
  · rw [ENNReal.ofReal_eq_zero.2 (sub_nonpos.2 (f.mono ab))]
    exact zero_le
  obtain ⟨i, is, bcd⟩ : ∃ i ∈ s, b ∈ Iotop (c i) (d i) := by
    simpa only [SetLike.mem_coe, mem_iUnion, exists_prop] using cv ⟨ab, le_rfl⟩
  rw [← Finset.insert_erase is] at cv ⊢
  rw [Finset.coe_insert, biUnion_insert] at cv
  rw [Finset.sum_insert (Finset.notMem_erase _ _)]
  replace bcd : b ∈ Ioc (c i) (d i) := Iotop_subset_Ioc bcd
  grw [← IH _ (Finset.erase_ssubset is) (c i), ← ENNReal.ofReal_add_le]
  · rw [sub_add_sub_cancel]
    grw [bcd.2]
  · rintro x ⟨h₁, h₂⟩
    apply (cv ⟨h₁, le_trans h₂ (le_of_lt bcd.1)⟩).resolve_left (fun h ↦ ?_)
    order [(Iotop_subset_Ioc h).1]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6297eeab2151062d2cbae140e704e87882f614f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
