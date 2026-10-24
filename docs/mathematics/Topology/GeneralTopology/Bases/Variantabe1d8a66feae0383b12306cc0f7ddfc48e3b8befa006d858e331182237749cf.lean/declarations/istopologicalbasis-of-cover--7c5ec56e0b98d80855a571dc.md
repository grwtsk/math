# isTopologicalBasis_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11c467ea-f2dd-b913-47cd-d2223993f22a",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis_of_cover",
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
  "slug": "istopologicalbasis-of-cover--7c5ec56e0b98d80855a571dc",
  "source": {
    "blob": "98d06395051f49536a70c1b3294eecd50089e4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5ec56e0b98d80855a571dca4a3d84a3620e0e394e206680e7cbe681390842d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11c467ea-f2dd-b913-47cd-d2223993f22a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalBasis_of_cover {ι} {U : ι → Set α} (Uo : ∀ i, IsOpen (U i))
    (Uc : ⋃ i, U i = univ) {b : ∀ i, Set (Set (U i))} (hb : ∀ i, IsTopologicalBasis (b i)) :
    IsTopologicalBasis (⋃ i : ι, image ((↑) : U i → α) '' b i) := by
  refine' isTopologicalBasis_of_open_of_nhds (fun u hu => _) _
  · simp only [mem_iUnion, mem_image] at hu
    rcases hu with ⟨i, s, sb, rfl⟩
    exact (Uo i).isOpenMap_subtype_val _ ((hb i).isOpen sb)
  · intro a u ha uo
    rcases iUnion_eq_univ_iff.1 Uc a with ⟨i, hi⟩
    lift a to ↥(U i) using hi
    rcases(hb i).exists_subset_of_mem_open ha (uo.preimage continuous_subtype_val) with
      ⟨v, hvb, hav, hvu⟩
    exact ⟨(↑) '' v, mem_iUnion.2 ⟨i, mem_image_of_mem _ hvb⟩, mem_image_of_mem _ hav,
      image_subset_iff.2 hvu⟩
#align topological_space.is_topological_basis_of_cover TopologicalSpace.isTopologicalBasis_of_cover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d06395051f49536a70c1b3294eecd50089e4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
