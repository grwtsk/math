# TaggedPartitionFilter_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 826,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ad709c3-1da4-0c69-3105-9a3278f114c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:156f9cfa-a680-1793-5893-2f380379a2be",
  "kind": "lemma",
  "lexical_name": "TaggedPartitionFilter_neBot",
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
  "slug": "taggedpartitionfilter-nebot--8434502515fb8fcb841e1fcc",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 826,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8434502515fb8fcb841e1fcce64793db2db5e289b2eeb3a53d10a597a91a057b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156f9cfa-a680-1793-5893-2f380379a2be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TaggedPartitionFilter_neBot {a b : ℝ} (hab : a < b) : Filter.NeBot (TaggedPartitionFilter a b) := by
  refine' Filter.neBot_iff.mpr _;
  rw [ Ne.eq_def, Filter.ext_iff ];
  simp +zetaDelta at *;
  use ∅;
  intro h;
  obtain ⟨ U, hU₁, hU₂ ⟩ := Filter.mem_comap.mp h;
  simp_all +decide [ Set.subset_def ];
  contrapose! hU₂;
  rcases Metric.mem_nhds_iff.mp hU₁ with ⟨ ε, εpos, hε ⟩;
  -- Choose $n$ such that $(b - a) / (n + 1) < \epsilon$.
  obtain ⟨ n, hn ⟩ : ∃ n : ℕ, (b - a) / (n + 1) < ε := by
    exact ⟨ ⌊ ( b - a ) / ε⌋₊, by rw [ div_lt_iff₀ ] <;> nlinarith [ Nat.lt_floor_add_one ( ( b - a ) / ε ), mul_div_cancel₀ ( b - a ) εpos.ne' ] ⟩;
  refine' ⟨ taggedUniformPartition n hab, hε _ ⟩;
  simp +zetaDelta at *;
  rw [ abs_of_nonneg ( IPart.mesh_nonneg _ ) ];
  convert hn using 1;
  convert IPart.mesh_uniformPartition n hab using 1

/-
A tagged partition where the tags are the left endpoints of the intervals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
