# MonotoneOn.tendsto_nhdsWithin_Ioo_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd2aaee8-433a-de36-287f-6a81794a8037",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8dff7ea-3937-b033-e557-b85503ba21ea",
  "kind": "lemma",
  "lexical_name": "MonotoneOn.tendsto_nhdsWithin_Ioo_right",
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
  "slug": "monotoneon-tendsto-nhdswithin-ioo-right--5d94b5c4d22a6a8a1b873734",
  "source": {
    "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d94b5c4d22a6a8a1b873734fde7c040abb69a0631957eb25fe540f628f5c549",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8dff7ea-3937-b033-e557-b85503ba21ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonotoneOn.tendsto_nhdsWithin_Ioo_right {α β : Type*} [LinearOrder α] [TopologicalSpace α]
    [OrderTopology α] [ConditionallyCompleteLinearOrder β] [TopologicalSpace β] [OrderTopology β]
    {f : α → β} {x y : α} (h_nonempty : (Ioo x y).Nonempty) (Mf : MonotoneOn f (Ioo x y))
    (h_bdd : BddBelow (f '' Ioo x y)) :
    Tendsto f (𝓝[>] x) (𝓝 (sInf (f '' Ioo x y))) := by
  refine tendsto_order.2 ⟨fun l hl => ?_, fun m hm => ?_⟩
  · rcases h_nonempty with ⟨p, hy, hx⟩
    filter_upwards [Ioo_mem_nhdsGT (hy.trans hx)] with w hw
    exact hl.trans_le <| csInf_le h_bdd (mem_image_of_mem _ hw)
  · obtain ⟨z, ⟨xz, zy⟩, zm⟩ : ∃ a : α, a ∈ Ioo x y ∧ f a < m := by
      simpa [mem_image, exists_prop, exists_exists_and_eq_and] using
        exists_lt_of_csInf_lt (h_nonempty.image _) hm
    filter_upwards [Ioo_mem_nhdsGT xz] with w hw
    exact (Mf ⟨hw.1, hw.2.trans zy⟩ ⟨xz, zy⟩ hw.2.le).trans_lt zm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
