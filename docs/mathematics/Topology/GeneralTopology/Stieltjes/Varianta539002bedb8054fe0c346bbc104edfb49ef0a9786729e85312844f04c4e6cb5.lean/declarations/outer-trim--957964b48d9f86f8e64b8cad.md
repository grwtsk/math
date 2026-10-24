# outer_trim

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
      "line": 470,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a74a98d-6bb4-5afb-6324-c6d756271d03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bf68fcb-19e5-051f-505e-e392897cfa1c",
  "kind": "theorem",
  "lexical_name": "outer_trim",
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
  "slug": "outer-trim--957964b48d9f86f8e64b8cad",
  "source": {
    "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957964b48d9f86f8e64b8cad7a0ceb84259eb431c080283d1a8da91ed542f44a",
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

Occurrence: `result:4bf68fcb-19e5-051f-505e-e392897cfa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outer_trim [MeasurableSpace R] [BorelSpace R] [DenselyOrdered R] :
    f.outer.trim = f.outer := by
  refine le_antisymm (fun s => ?_) (OuterMeasure.le_trim _)
  rw [OuterMeasure.trim_eq_iInf]
  refine le_iInf fun t => le_iInf fun ht => ENNReal.le_of_forall_pos_le_add fun ε ε0 h => ?_
  rcases ENNReal.exists_pos_sum_of_countable (ENNReal.coe_pos.2 ε0).ne' ℕ with ⟨ε', ε'0, hε⟩
  grw [← hε]
  rw [← ENNReal.tsum_add]
  choose g hg using
    show ∀ i, ∃ s, t i ⊆ s ∧ MeasurableSet s ∧ f.outer s ≤ f.length (t i) + ofReal (ε' i) by
      intro i
      rcases isEmpty_or_nonempty R with hR | hR
      · exact ⟨∅, by simp, MeasurableSet.empty, by simp⟩
      have hl :=
        ENNReal.lt_add_right ((ENNReal.le_tsum i).trans_lt h).ne (ENNReal.coe_pos.2 (ε'0 i)).ne'
      conv at hl =>
        lhs
        rw [length_eq]
      simp only [iInf_lt_iff] at hl
      rcases hl with ⟨a, b, h₁, h₂⟩
      rw [← f.outer_Ioc] at h₂
      rw [sdiff_subset_iff] at h₁
      refine ⟨_, h₁, measurableSet_botSet.union measurableSet_Ioc, le_of_lt ?_⟩
      calc f.outer (botSet ∪ Ioc a b)
      _ ≤ f.outer botSet + f.outer (Ioc a b) := measure_union_le _ _
      _ ≤ f.length botSet + f.outer (Ioc a b) := by gcongr; apply outer_le_length
      _ = 0 + f.outer (Ioc a b) := by
        simp only [← length_sdiff_botSet, sdiff_self, empty_sdiff, outer_Ioc, zero_add]
        simp [empty_sdiff]
      _ = f.outer (Ioc a b) := by simp
      _ < f.length (t i) + ofReal ↑(ε' i) := by simpa using h₂
  simp only [ofReal_coe_nnreal] at hg
  apply iInf_le_of_le (iUnion g) _
  apply iInf_le_of_le (ht.trans <| iUnion_mono fun i => (hg i).1) _
  apply iInf_le_of_le (MeasurableSet.iUnion fun i => (hg i).2.1) _
  exact le_trans (measure_iUnion_le _) (ENNReal.tsum_le_tsum fun i => (hg i).2.2)

omit [CompactIccSpace R] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6297eeab2151062d2cbae140e704e87882f614f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
