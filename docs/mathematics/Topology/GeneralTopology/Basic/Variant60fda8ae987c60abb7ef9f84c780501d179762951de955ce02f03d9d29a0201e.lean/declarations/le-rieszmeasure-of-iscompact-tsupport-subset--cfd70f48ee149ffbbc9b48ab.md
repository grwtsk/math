# le_rieszMeasure_of_isCompact_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66ea08ca3ffd2a8a47c01fe30db1510d29884da9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1b49ae0-07f3-563e-c123-f38e3cb35f16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a8f4a57-cda4-01c5-7d2e-301188d4c7b6",
  "kind": "lemma",
  "lexical_name": "le_rieszMeasure_of_isCompact_tsupport_subset",
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
  "slug": "le-rieszmeasure-of-iscompact-tsupport-subset--cfd70f48ee149ffbbc9b48ab",
  "source": {
    "blob": "66ea08ca3ffd2a8a47c01fe30db1510d29884da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd70f48ee149ffbbc9b48ab92f1928070f62704d6dca5a76d9a3f3bd381b1cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a8f4a57-cda4-01c5-7d2e-301188d4c7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_rieszMeasure_of_isCompact_tsupport_subset {f : C_c(X, ℝ≥0)} (hf : ∀ x, f x ≤ 1)
    {K : Set X} (hK : IsCompact K) (h : tsupport f ⊆ K) : .ofNNReal (Λ f) ≤ rieszMeasure Λ K := by
  rw [← TopologicalSpace.Compacts.coe_mk K hK]
  simp only [rieszMeasure, Content.measure_eq_content_of_regular (rieszContent Λ)
    (contentRegular_rieszContent Λ)]
  simp only [rieszContent, ENNReal.ofReal_coe_nnreal, ENNReal.coe_le_coe, Content.mk_apply]
  apply le_iff_forall_pos_le_add.mpr
  intro ε hε
  obtain ⟨g, hg⟩ := exists_lt_rieszContentAux_add_pos Λ ⟨K, hK⟩ hε
  apply le_trans _ hg.2.le
  apply monotone_of_nnreal Λ
  intro x
  simp only [ContinuousMap.toFun_eq_coe, CompactlySupportedContinuousMap.coe_toContinuousMap]
  by_cases hx : x ∈ tsupport f
  · exact le_trans (hf x) (hg.1 x (Set.mem_of_subset_of_mem h hx))
  · rw [image_eq_zero_of_notMem_tsupport hx]
    exact zero_le (g x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ea08ca3ffd2a8a47c01fe30db1510d29884da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
