# isComplete_iUnion_separated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a65fc02-d240-5014-5eb8-6f27134ee228",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0703f2c5-b67e-f06d-95dd-40ccb620278b",
  "kind": "theorem",
  "lexical_name": "isComplete_iUnion_separated",
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
  "slug": "iscomplete-iunion-separated--a3249d0952e02bf28c1e40ed",
  "source": {
    "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3249d0952e02bf28c1e40ed956826e976cb0a75885ebb1f7600c5d988e830c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0703f2c5-b67e-f06d-95dd-40ccb620278b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isComplete_iUnion_separated {ι : Sort*} {s : ι → Set α} (hs : ∀ i, IsComplete (s i))
    {U : SetRel α α} (hU : U ∈ 𝓤 α) (hd : ∀ (i j : ι), ∀ x ∈ s i, ∀ y ∈ s j, (x, y) ∈ U → i = j) :
    IsComplete (⋃ i, s i) := by
  set S := ⋃ i, s i
  intro l hl hls
  rw [le_principal_iff] at hls
  obtain ⟨hl_ne, hl'⟩ := cauchy_iff.1 hl
  obtain ⟨t, htS, htl, htU⟩ : ∃ t, t ⊆ S ∧ t ∈ l ∧ t ×ˢ t ⊆ U := by
    rcases hl' U hU with ⟨t, htl, htU⟩
    refine ⟨t ∩ S, inter_subset_right, inter_mem htl hls, Subset.trans ?_ htU⟩
    gcongr <;> apply inter_subset_left
  obtain ⟨i, hi⟩ : ∃ i, t ⊆ s i := by
    rcases Filter.nonempty_of_mem htl with ⟨x, hx⟩
    rcases mem_iUnion.1 (htS hx) with ⟨i, hi⟩
    refine ⟨i, fun y hy => ?_⟩
    rcases mem_iUnion.1 (htS hy) with ⟨j, hj⟩
    rwa [hd i j x hi y hj (htU <| mk_mem_prod hx hy)]
  rcases hs i l hl (le_principal_iff.2 <| mem_of_superset htl hi) with ⟨x, hxs, hlx⟩
  exact ⟨x, mem_iUnion.2 ⟨i, hxs⟩, hlx⟩

/-- A complete space is defined here using uniformities. A uniform space
  is complete if every Cauchy filter converges. -/
@[wikidata Q848569]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
