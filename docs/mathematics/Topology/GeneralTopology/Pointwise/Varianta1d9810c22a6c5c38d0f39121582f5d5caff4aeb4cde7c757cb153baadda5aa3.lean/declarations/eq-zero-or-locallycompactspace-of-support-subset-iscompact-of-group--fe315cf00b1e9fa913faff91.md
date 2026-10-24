# eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50d45d5e-9fde-a13d-5dd4-3fda1ce2fe19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b73ee4a-9e8f-7555-2fbd-0250a4f0b3a8",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_group",
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
  "slug": "eq-zero-or-locallycompactspace-of-support-subset-iscompact-of-group--fe315cf00b1e9fa913faff91",
  "source": {
    "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe315cf00b1e9fa913faff91bffe26df7a6bfe2cbd6e27c59ae14813afee9377",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b73ee4a-9e8f-7555-2fbd-0250a4f0b3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_group
    [TopologicalSpace α] [Zero α] [T1Space α]
    {f : G → α} {k : Set G} (hk : IsCompact k) (hf : support f ⊆ k) (h'f : Continuous f) :
    f = 0 ∨ LocallyCompactSpace G := by
  refine or_iff_not_imp_left.mpr fun h => ?_
  simp_rw [funext_iff, Pi.zero_apply] at h
  push_neg at h
  obtain ⟨x, hx⟩ : ∃ x, f x ≠ 0 := h
  have : k ∈ 𝓝 x :=
    mem_of_superset (h'f.isOpen_support.mem_nhds hx) hf
  exact IsCompact.locallyCompactSpace_of_mem_nhds_of_group hk this

/-- If a function defined on a topological group has compact support, then either
the function is trivial or the group is locally compact. -/
@[to_additive
      "If a function defined on a topological additive group has compact support,
      then either the function is trivial or the group is locally compact."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eeaa173739cddea8b33777034878e3d3701aa00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
