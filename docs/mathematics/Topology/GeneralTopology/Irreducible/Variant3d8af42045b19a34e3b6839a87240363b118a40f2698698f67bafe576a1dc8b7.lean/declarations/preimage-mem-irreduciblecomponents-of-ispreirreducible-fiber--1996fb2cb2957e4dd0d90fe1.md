# preimage_mem_irreducibleComponents_of_isPreirreducible_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e165407-3cda-8c7a-c36a-03e3e17311c0",
  "kind": "lemma",
  "lexical_name": "preimage_mem_irreducibleComponents_of_isPreirreducible_fiber",
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
  "slug": "preimage-mem-irreduciblecomponents-of-ispreirreducible-fiber--1996fb2cb2957e4dd0d90fe1",
  "source": {
    "blob": "1f7c0c0526985238db903b4bce3346d9f268de23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1996fb2cb2957e4dd0d90fe1c2ed04efe011dce621f29262f8822825c555e019",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e165407-3cda-8c7a-c36a-03e3e17311c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_mem_irreducibleComponents_of_isPreirreducible_fiber
    {V : Set Y} (hV : V ∈ irreducibleComponents Y) :
    f ⁻¹' V ∈ irreducibleComponents X := by
  obtain ⟨Z, hZ, hWZ, H⟩ :=
    exists_preirreducible _ (hV.1.2.preimage_of_isPreirreducible_fiber f hf₂ hf₃)
  have hZ' : IsIrreducible Z := by
    obtain ⟨x, hx⟩ := hV.1.1
    obtain ⟨x, rfl⟩ := hf₄ x
    exact ⟨⟨_, hWZ hx⟩, hZ⟩
  have hWZ' : f ⁻¹' V = Z := by
    refine hWZ.antisymm (Set.image_subset_iff.mp ?_)
    exact hV.2 (IsIrreducible.image hZ' f hf₁.continuousOn)
      ((Set.image_preimage_eq V hf₄).symm.trans_le (Set.image_mono hWZ))
  rw [hWZ']
  exact ⟨hZ', fun s hs hs' ↦ (H s hs.2 hs').le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7c0c0526985238db903b4bce3346d9f268de23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
