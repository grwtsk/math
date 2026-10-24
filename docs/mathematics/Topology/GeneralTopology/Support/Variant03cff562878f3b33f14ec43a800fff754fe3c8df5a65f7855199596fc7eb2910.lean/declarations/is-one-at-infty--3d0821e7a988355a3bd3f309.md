# is_one_at_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd807315-a62f-05ba-cb91-bd5b976cc56a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b42370c9-ecf6-9528-e66d-dd4d78caea9b",
  "kind": "theorem",
  "lexical_name": "is_one_at_infty",
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
  "slug": "is-one-at-infty--3d0821e7a988355a3bd3f309",
  "source": {
    "blob": "f48cf836ec24a68fecf934c50fbd911d75023df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d0821e7a988355a3bd3f3098d37e161534754be5bc63565592331929cd27566",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b42370c9-ecf6-9528-e66d-dd4d78caea9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_one_at_infty {f : α → γ} [TopologicalSpace γ]
    (h : HasCompactMulSupport f) : Tendsto f (cocompact α) (𝓝 1) := by
  intro N hN
  rw [mem_map, mem_cocompact']
  refine ⟨mulTSupport f, h.isCompact, ?_⟩
  rw [compl_subset_comm]
  intro v hv
  rw [mem_preimage, image_eq_one_of_notMem_mulTSupport hv]
  exact mem_of_mem_nhds hN

end HasCompactMulSupport

section Compact

variable [CompactSpace α]

/-- In a compact space `α`, any function has compact support. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant03cff562878f3b33f14ec43a800fff754fe3c8df5a65f7855199596fc7eb2910.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48cf836ec24a68fecf934c50fbd911d75023df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
