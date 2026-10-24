# mem_cycleType_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0acd64e91590c7f372dd7b82dadec6d4853951f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd3c2e15-a6fd-6ed8-0097-7b1a46391064",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c03f20b3-100a-21a1-7ca7-cf6ce034196f",
  "kind": "theorem",
  "lexical_name": "mem_cycleType_iff",
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
  "slug": "mem-cycletype-iff--b1ca6b23a70a7335acaeb14a",
  "source": {
    "blob": "0acd64e91590c7f372dd7b82dadec6d4853951f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1ca6b23a70a7335acaeb14a3485f1b09465e06671c48c0f62f7007d1b418a6d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c03f20b3-100a-21a1-7ca7-cf6ce034196f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cycleType_iff {n : ℕ} {σ : Perm α} :
    n ∈ cycleType σ ↔ ∃ c τ, σ = c * τ ∧ Disjoint c τ ∧ IsCycle c ∧ c.support.card = n := by
  constructor
  · intro h
    obtain ⟨l, rfl, hlc, hld⟩ := truncCycleFactors σ
    rw [cycleType_eq _ rfl hlc hld, Multiset.mem_coe, List.mem_map] at h
    obtain ⟨c, cl, rfl⟩ := h
    rw [(List.perm_cons_erase cl).pairwise_iff @(Disjoint.symmetric)] at hld
    refine ⟨c, (l.erase c).prod, ?_, ?_, hlc _ cl, rfl⟩
    · rw [← List.prod_cons, (List.perm_cons_erase cl).symm.prod_eq' (hld.imp Disjoint.commute)]
    · exact disjoint_prod_right _ fun g => List.rel_of_pairwise_cons hld
  · rintro ⟨c, t, rfl, hd, hc, rfl⟩
    simp [hd.cycleType, hc.cycleType]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0acd64e91590c7f372dd7b82dadec6d4853951f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
