# IsOpen.mul_closure

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
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9212ce8-539f-bb0f-8de2-01a8721d5d23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42974ce0-7da2-435a-b86a-2ef6a5b8d821",
  "kind": "theorem",
  "lexical_name": "IsOpen.mul_closure",
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
  "slug": "isopen-mul-closure--7c78d0c8d4d5bf2c99db4d95",
  "source": {
    "blob": "ab9ceb3691597dacbcac8a32c3188eb54abf2b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c78d0c8d4d5bf2c99db4d95e171c8740db11578634d0475cb78243f66405530",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42974ce0-7da2-435a-b86a-2ef6a5b8d821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.mul_closure (hs : IsOpen s) (t : Set G) : s * closure t = s * t := by
  refine (mul_subset_iff.2 fun a ha b hb => ?_).antisymm (mul_subset_mul_left subset_closure)
  rw [mem_closure_iff] at hb
  have hbU : b ∈ s⁻¹ * {a * b} := ⟨a⁻¹, Set.inv_mem_inv.2 ha, a * b, rfl, inv_mul_cancel_left _ _⟩
  obtain ⟨_, ⟨c, hc, d, rfl : d = _, rfl⟩, hcs⟩ := hb _ hs.inv.mul_right hbU
  exact ⟨c⁻¹, hc, _, hcs, inv_mul_cancel_left _ _⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ceb3691597dacbcac8a32c3188eb54abf2b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
