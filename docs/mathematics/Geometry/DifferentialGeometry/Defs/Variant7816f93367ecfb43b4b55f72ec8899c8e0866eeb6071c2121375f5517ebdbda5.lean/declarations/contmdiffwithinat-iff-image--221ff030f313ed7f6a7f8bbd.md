# contMDiffWithinAt_iff_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d732ea8-c289-da37-e8fd-ad87d32ed1dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:167af40f-b1d7-be7a-af15-09e97b699cc7",
  "kind": "theorem",
  "lexical_name": "contMDiffWithinAt_iff_image",
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
  "slug": "contmdiffwithinat-iff-image--221ff030f313ed7f6a7f8bbd",
  "source": {
    "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 417,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221ff030f313ed7f6a7f8bbdca06ead33a19311128198d9c2747e8baa25f6eb3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:167af40f-b1d7-be7a-af15-09e97b699cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_iff_image
    (he : e ∈ maximalAtlas I n M) (he' : e' ∈ maximalAtlas I' n M')
    (hs : s ⊆ e.source) (hx : x ∈ e.source) (hy : f x ∈ e'.source) :
    ContMDiffWithinAt I I' n f s x ↔
      ContinuousWithinAt f s x ∧
        ContDiffWithinAt 𝕜 n (e'.extend I' ∘ f ∘ (e.extend I).symm) (e.extend I '' s)
          (e.extend I x) := by
  rw [contMDiffWithinAt_iff_of_mem_maximalAtlas he he' hx hy, and_congr_right_iff]
  refine fun _ => contDiffWithinAt_congr_set ?_
  simp_rw [e.extend_symm_preimage_inter_range_eventuallyEqSet hs hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79418ade9f2f078695d8ba3a08f730495bfffb41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
