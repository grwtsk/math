# compl_mul_closure_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab9ceb3691597dacbcac8a32c3188eb54abf2b51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be22a330-0138-19a9-346e-40d6f117bbc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5a9e672-4d73-ea60-9d91-b196a671bf2a",
  "kind": "lemma",
  "lexical_name": "compl_mul_closure_one_eq",
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
  "slug": "compl-mul-closure-one-eq--c62802c38a4745cae8066fdd",
  "source": {
    "blob": "ab9ceb3691597dacbcac8a32c3188eb54abf2b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c62802c38a4745cae8066fdde4a1775c3714971b5e5108e3ff18ba000370e8d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a9e672-4d73-ea60-9d91-b196a671bf2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compl_mul_closure_one_eq {t : Set G} (ht : t * (closure {1} : Set G) = t) :
    tᶜ * (closure {1} : Set G) = tᶜ := by
  refine Subset.antisymm ?_ (subset_mul_closure_one tᶜ)
  rintro - ⟨x, hx, g, hg, rfl⟩
  by_contra H
  have : x ∈ t * (closure {1} : Set G) := by
    rw [← Subgroup.coe_topologicalClosure_bot G] at hg ⊢
    simp only [mem_compl_iff, not_not] at H
    exact ⟨x * g, H, g⁻¹, Subgroup.inv_mem _ hg, by simp⟩
  rw [ht] at this
  exact hx this

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ceb3691597dacbcac8a32c3188eb54abf2b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
