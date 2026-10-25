# comap_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d328f54082c2945f16289c72b4663c31f74e3717",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1078,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a677a2ac7f4516cb9966805e8e5ae5242bfcf6643b92eafc6556b453ebfea8a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41037707-9f1c-70e9-c66d-abb48345cb20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f680eda3-38f3-4b0a-bd20-0a9ae7723428",
  "kind": "theorem",
  "lexical_name": "comap_map_eq",
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
  "slug": "comap-map-eq--a8b7fee39c8f64b6fb84783b",
  "source": {
    "blob": "d328f54082c2945f16289c72b4663c31f74e3717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1091,
    "line": 1078,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta677a2ac7f4516cb9966805e8e5ae5242bfcf6643b92eafc6556b453ebfea8a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b7fee39c8f64b6fb84783bd7e7d96c465b40320da8c6e57a9420a1fde67a0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta677a2ac7f4516cb9966805e8e5ae5242bfcf6643b92eafc6556b453ebfea8a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f680eda3-38f3-4b0a-bd20-0a9ae7723428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1078–1091.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_map_eq (f : R →+* S) (s : Subring R) :
    (s.map f).comap f = s ⊔ closure (f ⁻¹' {0}) := by
  apply le_antisymm
  · intro x hx
    rw [mem_comap, mem_map] at hx
    obtain ⟨y, hy, hxy⟩ := hx
    replace hxy : x - y ∈ f ⁻¹' {0} := by simp [hxy]
    rw [← closure_eq s, ← closure_union, ← add_sub_cancel y x]
    exact Subring.add_mem _ (subset_closure <| Or.inl hy) (subset_closure <| Or.inr hxy)
  · rw [← map_le_iff_le_comap, map_sup, f.map_closure]
    apply le_of_eq
    rw [sup_eq_left, closure_le]
    exact (Set.image_preimage_subset f {0}).trans (Set.singleton_subset_iff.2 (s.map f).zero_mem)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta677a2ac7f4516cb9966805e8e5ae5242bfcf6643b92eafc6556b453ebfea8a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta677a2ac7f4516cb9966805e8e5ae5242bfcf6643b92eafc6556b453ebfea8a3.lean#L1078).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d328f54082c2945f16289c72b4663c31f74e3717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
