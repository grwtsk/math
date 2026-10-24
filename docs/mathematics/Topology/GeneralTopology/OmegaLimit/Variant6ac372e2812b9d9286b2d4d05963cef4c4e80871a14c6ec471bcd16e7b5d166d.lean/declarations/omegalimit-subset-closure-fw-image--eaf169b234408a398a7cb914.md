# omegaLimit_subset_closure_fw_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cab206f722db59a1d6fdee404ce3b4d80e6eec0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eda4040-1f1d-168a-1d5e-1e0c68fd4aab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d22be247-1f69-3ea1-ab32-9b445b312b5b",
  "kind": "theorem",
  "lexical_name": "omegaLimit_subset_closure_fw_image",
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
  "slug": "omegalimit-subset-closure-fw-image--eaf169b234408a398a7cb914",
  "source": {
    "blob": "cab206f722db59a1d6fdee404ce3b4d80e6eec0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf169b234408a398a7cb9143e570b767887d74a24069379d0d05903d9796c23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d22be247-1f69-3ea1-ab32-9b445b312b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omegaLimit_subset_closure_fw_image {u : Set τ} (hu : u ∈ f) :
    ω f ϕ s ⊆ closure (image2 ϕ u s) := by
  rw [omegaLimit_eq_iInter]
  intro _ hx
  rw [mem_iInter] at hx
  exact hx ⟨u, hu⟩
#align omega_limit_subset_closure_fw_image omegaLimit_subset_closure_fw_image

/-!
### ω-limits and compactness
-/


/-- A set is eventually carried into any open neighbourhood of its ω-limit:
if `c` is a compact set such that `closure {ϕ t x | t ∈ v, x ∈ s} ⊆ c` for some `v ∈ f`
and `n` is an open neighbourhood of `ω f ϕ s`, then for some `u ∈ f` we have
`closure {ϕ t x | t ∈ u, x ∈ s} ⊆ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab206f722db59a1d6fdee404ce3b4d80e6eec0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
