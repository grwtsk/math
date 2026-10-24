# apply_eq_card_small_le_card_eq_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 707,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdbf059d-fcbd-bc1e-72ea-789c93db12d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20477e8c-fb2c-1540-5ca4-438c2a9b8f9f",
  "kind": "lemma",
  "lexical_name": "apply_eq_card_small_le_card_eq_of_small",
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
  "slug": "apply-eq-card-small-le-card-eq-of-small--81a2142f71269d5b906b5667",
  "source": {
    "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 707,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a2142f71269d5b906b5667e516f3f52ba31006f5bf15fc3eb6936310900878",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20477e8c-fb2c-1540-5ca4-438c2a9b8f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_eq_card_small_le_card_eq_of_small {i : ℕ} (hi : N' a N + 1 < i)
    (his : Small a (a i)) :
    a i = #{m ∈ Finset.range (k a + 1) | a (i - 1) ≤ #{j ∈ Finset.range i | a j = m}} := by
  have hib : Big a (a (i - 1)) := hc.apply_sub_one_big_of_apply_small_of_N'_lt his (by lia)
  nth_rw 1 [show i = i - 1 + 1 by lia]
  rw [hc.apply_add_one_eq_card_small_le_card_eq (by lia) hib]
  congr 1
  ext j
  simp only [Finset.mem_filter, Finset.mem_range, and_congr_right_iff]
  intro hj
  convert! Iff.rfl using 2
  congr 1
  ext t
  simp only [Finset.mem_filter, Finset.mem_range]
  refine ⟨fun ⟨hti, rfl⟩ ↦ ⟨?_, rfl⟩, fun ⟨_, rfl⟩ ↦ ⟨by lia, rfl⟩⟩
  by_contra hti1
  have htieq : t = i - 1 := by lia
  subst htieq
  exact hc.not_small_of_big hib (Nat.lt_add_one_iff.mp hj)

/-- Lemma 2 from the informal solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d349cfcdfff7f8054e50b2b68caf010e2677752e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
