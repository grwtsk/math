# mem_nhdsLE_iff_exists_Icc_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bb2599064b24260bbcb9b8119087d7c943c6ebc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed65f2c9-cfcc-12d5-191d-9a36f9d7c7df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:732c7478-9641-6fda-4342-671970f2c72f",
  "kind": "theorem",
  "lexical_name": "mem_nhdsLE_iff_exists_Icc_subset",
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
  "slug": "mem-nhdsle-iff-exists-icc-subset--2ab6f87d565a266deb593bd8",
  "source": {
    "blob": "5bb2599064b24260bbcb9b8119087d7c943c6ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab6f87d565a266deb593bd88d58b8ad09d68f7919489f61e7c1431988b7a98c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:732c7478-9641-6fda-4342-671970f2c72f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_nhdsLE_iff_exists_Icc_subset [NoMinOrder α] [DenselyOrdered α] {a : α}
    {s : Set α} : s ∈ 𝓝[≤] a ↔ ∃ l, l < a ∧ Icc l a ⊆ s :=
  calc s ∈ 𝓝[≤] a ↔ ofDual ⁻¹' s ∈ 𝓝[≥] (toDual a) := Iff.rfl
  _ ↔ ∃ u : α, toDual a < toDual u ∧ Icc (toDual a) (toDual u) ⊆ ofDual ⁻¹' s :=
    mem_nhdsGE_iff_exists_Icc_subset
  _ ↔ ∃ l, l < a ∧ Icc l a ⊆ s := by simp

@[deprecated (since := "2024-12-22")]
alias mem_nhdsWithin_Iic_iff_exists_Icc_subset := mem_nhdsLE_iff_exists_Icc_subset

/-- The filter of left neighborhoods has a basis of closed intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2599064b24260bbcb9b8119087d7c943c6ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
