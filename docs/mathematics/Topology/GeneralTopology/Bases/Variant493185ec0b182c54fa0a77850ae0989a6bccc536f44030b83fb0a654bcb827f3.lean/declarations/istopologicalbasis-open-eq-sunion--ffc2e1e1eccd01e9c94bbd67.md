# IsTopologicalBasis.open_eq_sUnion'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaeb3e2a-4a32-2428-dc6d-a81158a2a4e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4531582e-14a1-1381-ba6f-78696107a27b",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.open_eq_sUnion'",
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
  "slug": "istopologicalbasis-open-eq-sunion--ffc2e1e1eccd01e9c94bbd67",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc2e1e1eccd01e9c94bbd6769385c650bd87389dcd5db3398b9bd458b62f0fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4531582e-14a1-1381-ba6f-78696107a27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalBasis.open_eq_sUnion' {B : Set (Set α)} (hB : IsTopologicalBasis B) {u : Set α}
    (ou : IsOpen u) : u = ⋃₀ { s ∈ B | s ⊆ u } :=
  ext fun _a =>
    ⟨fun ha =>
      let ⟨b, hb, ab, bu⟩ := hB.exists_subset_of_mem_open ha ou
      ⟨b, ⟨hb, bu⟩, ab⟩,
      fun ⟨_b, ⟨_, bu⟩, ab⟩ => bu ab⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
