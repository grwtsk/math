# iUnion_nat_of_monotone_of_tsum_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a17491df6ec4d815c0d84a1ecf0df8b52902b03b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6c131a1-827f-fc6d-9dea-cc61825cfe8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c8e1ae1-f936-acb4-fdd9-e0c8c67c3524",
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
  "slug": "iunion-nat-of-monotone-of-tsum-ne-top--706ee47119009e43dcae74fa",
  "source": {
    "blob": "a17491df6ec4d815c0d84a1ecf0df8b52902b03b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706ee47119009e43dcae74fadcc7f7deef4da1249ad49e30edcaadd257f80bb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c8e1ae1-f936-acb4-fdd9-e0c8c67c3524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_nat_of_monotone_of_tsum_ne_top (m : OuterMeasure α) {s : ℕ → Set α}
    (h_mono : ∀ n, s n ⊆ s (n + 1)) (h0 : (∑' k, m (s (k + 1) \ s k)) ≠ ∞) :
    m (⋃ n, s n) = ⨆ n, m (s n) := by
  classical
  refine measure_iUnion_of_tendsto_zero m atTop ?_
  refine tendsto_nhds_bot_mono' (ENNReal.tendsto_sum_nat_add _ h0) fun n => ?_
  refine (m.mono ?_).trans (measure_iUnion_le _)
  -- Current goal: `(⋃ k, s k) \ s n ⊆ ⋃ k, s (k + n + 1) \ s (k + n)`
  have h' : Monotone s := @monotone_nat_of_le_succ (Set α) _ _ h_mono
  simp only [diff_subset_iff, iUnion_subset_iff]
  intro i x hx
  have : ∃i, x ∈ s i := by exists i
  rcases Nat.findX this with ⟨j, hj, hlt⟩
  clear hx i
  rcases le_or_lt j n with hjn | hnj
  · exact Or.inl (h' hjn hj)
  have : j - (n + 1) + n + 1 = j := by omega
  refine Or.inr (mem_iUnion.2 ⟨j - (n + 1), ?_, hlt _ ?_⟩)
  · rwa [this]
  · rw [← Nat.succ_le_iff, Nat.succ_eq_add_one, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17491df6ec4d815c0d84a1ecf0df8b52902b03b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
