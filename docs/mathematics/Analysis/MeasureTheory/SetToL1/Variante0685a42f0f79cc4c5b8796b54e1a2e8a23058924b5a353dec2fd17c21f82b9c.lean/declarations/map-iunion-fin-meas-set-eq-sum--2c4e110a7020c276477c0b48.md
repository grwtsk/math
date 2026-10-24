# map_iUnion_fin_meas_set_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27743c06-5160-dccd-cc25-c21fcf0f1dc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c108c0d-f349-8816-ff4f-f3d5680b2c33",
  "kind": "theorem",
  "lexical_name": "map_iUnion_fin_meas_set_eq_sum",
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
  "slug": "map-iunion-fin-meas-set-eq-sum--2c4e110a7020c276477c0b48",
  "source": {
    "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c4e110a7020c276477c0b489d46f465b872985ca5c69fa7307715947460a3cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c108c0d-f349-8816-ff4f-f3d5680b2c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_iUnion_fin_meas_set_eq_sum (T : Set α → β) (T_empty : T ∅ = 0)
    (h_add : FinMeasAdditive μ T) {ι} (S : ι → Set α) (sι : Finset ι)
    (hS_meas : ∀ i, MeasurableSet (S i)) (hSp : ∀ i ∈ sι, μ (S i) ≠ ∞)
    (h_disj : ∀ᵉ (i ∈ sι) (j ∈ sι), i ≠ j → Disjoint (S i) (S j)) :
    T (⋃ i ∈ sι, S i) = ∑ i in sι, T (S i) := by
  revert hSp h_disj
  refine' Finset.induction_on sι _ _
  · simp only [Finset.not_mem_empty, IsEmpty.forall_iff, iUnion_false, iUnion_empty, sum_empty,
      forall₂_true_iff, imp_true_iff, forall_true_left, not_false_iff, T_empty]
  intro a s has h hps h_disj
  rw [Finset.sum_insert has, ← h]
  swap; · exact fun i hi => hps i (Finset.mem_insert_of_mem hi)
  swap;
  · exact fun i hi j hj hij =>
      h_disj i (Finset.mem_insert_of_mem hi) j (Finset.mem_insert_of_mem hj) hij
  rw [←
    h_add (S a) (⋃ i ∈ s, S i) (hS_meas a) (measurableSet_biUnion _ fun i _ => hS_meas i)
      (hps a (Finset.mem_insert_self a s))]
  · congr; convert Finset.iSup_insert a s S
  · exact
      ((measure_biUnion_finset_le _ _).trans_lt <|
          ENNReal.sum_lt_top fun i hi => hps i <| Finset.mem_insert_of_mem hi).ne
  · simp_rw [Set.inter_iUnion]
    refine' iUnion_eq_empty.mpr fun i => iUnion_eq_empty.mpr fun hi => _
    rw [← Set.disjoint_iff_inter_eq_empty]
    refine' h_disj a (Finset.mem_insert_self a s) i (Finset.mem_insert_of_mem hi) fun hai => _
    rw [← hai] at hi
    exact has hi
#align measure_theory.fin_meas_additive.map_Union_fin_meas_set_eq_sum MeasureTheory.FinMeasAdditive.map_iUnion_fin_meas_set_eq_sum

end FinMeasAdditive

/-- A `FinMeasAdditive` set function whose norm on every set is less than the measure of the
set (up to a multiplicative constant). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7c05bdb9d0e7092b58d232427abb73b2122a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
