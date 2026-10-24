# Sigma.isConnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ffb4472-9eda-12a1-120d-6f54770221f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76bfce41-c346-3ff0-1128-53bfb6072d82",
  "kind": "theorem",
  "lexical_name": "Sigma.isConnected_iff",
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
  "slug": "sigma-isconnected-iff--35d62892f9dd0d4091b5bd93",
  "source": {
    "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d62892f9dd0d4091b5bd933ae526684b7198202a97a6917803725c675ae6a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76bfce41-c346-3ff0-1128-53bfb6072d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sigma.isConnected_iff [∀ i, TopologicalSpace (π i)] {s : Set (Σ i, π i)} :
    IsConnected s ↔ ∃ i t, IsConnected t ∧ s = Sigma.mk i '' t := by
  refine ⟨fun hs => ?_, ?_⟩
  · obtain ⟨⟨i, x⟩, hx⟩ := hs.nonempty
    have : s ⊆ range (Sigma.mk i) :=
      hs.isPreconnected.subset_isClopen isClopen_range_sigmaMk ⟨⟨i, x⟩, hx, x, rfl⟩
    exact ⟨i, Sigma.mk i ⁻¹' s, hs.preimage_of_isOpenMap sigma_mk_injective isOpenMap_sigmaMk this,
      (Set.image_preimage_eq_of_subset this).symm⟩
  · rintro ⟨i, t, ht, rfl⟩
    exact ht.image _ continuous_sigmaMk.continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6350b9ac3f3b7507094908a2180ddb7bc386a1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
