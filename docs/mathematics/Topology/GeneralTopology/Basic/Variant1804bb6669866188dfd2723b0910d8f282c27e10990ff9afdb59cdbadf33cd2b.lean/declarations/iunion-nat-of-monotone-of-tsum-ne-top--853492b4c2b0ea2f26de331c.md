# iUnion_nat_of_monotone_of_tsum_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91021573-0f9d-3d12-9a0f-764ae2c2bbcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e959f04-74fe-775f-4804-5f4712a09db1",
  "kind": "theorem",
  "lexical_name": "iUnion_nat_of_monotone_of_tsum_ne_top",
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
  "slug": "iunion-nat-of-monotone-of-tsum-ne-top--853492b4c2b0ea2f26de331c",
  "source": {
    "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:853492b4c2b0ea2f26de331c625e363adfdae60ab2cd29c52f0057b4ff06dec4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e959f04-74fe-775f-4804-5f4712a09db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_nat_of_monotone_of_tsum_ne_top (m : OuterMeasure α) {s : ℕ → Set α}
    (h_mono : ∀ n, s n ⊆ s (n + 1)) (h0 : (∑' k, m (s (k + 1) \ s k)) ≠ ∞) :
    m (⋃ n, s n) = ⨆ n, m (s n) := by
  classical
  refine measure_iUnion_of_tendsto_zero m atTop ?_
  refine tendsto_nhds_bot_mono' (ENNReal.tendsto_sum_nat_add _ h0) fun n => ?_
  grw [← measure_iUnion_le]
  gcongr
  -- Current goal: `(⋃ k, s k) \ s n ⊆ ⋃ k, s (k + n + 1) \ s (k + n)`
  have h' : Monotone s := @monotone_nat_of_le_succ (Set α) _ _ h_mono
  simp only [sdiff_subset_iff, iUnion_subset_iff]
  intro i x hx
  have : ∃ i, x ∈ s i := by exists i
  rcases Nat.findX this with ⟨j, hj, hlt⟩
  clear hx i
  rcases le_or_gt j n with hjn | hnj
  · exact Or.inl (h' hjn hj)
  have : j - (n + 1) + n + 1 = j := by lia
  refine Or.inr (mem_iUnion.2 ⟨j - (n + 1), ?_, hlt _ ?_⟩)
  · rwa [this]
  · rw [← Nat.succ_le_iff, Nat.succ_eq_add_one, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052e7886a36bab9f475112a40ae42a6d1e0a8374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
