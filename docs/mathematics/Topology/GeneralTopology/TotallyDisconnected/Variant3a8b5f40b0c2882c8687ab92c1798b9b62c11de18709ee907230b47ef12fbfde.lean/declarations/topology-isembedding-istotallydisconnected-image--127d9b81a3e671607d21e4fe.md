# Topology.IsEmbedding.isTotallyDisconnected_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a207578-fe45-a570-5e6a-e7c19a0821ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f222d543-c065-818f-d57e-2943e34a08d0",
  "kind": "lemma",
  "lexical_name": "Topology.IsEmbedding.isTotallyDisconnected_image",
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
  "slug": "topology-isembedding-istotallydisconnected-image--127d9b81a3e671607d21e4fe",
  "source": {
    "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127d9b81a3e671607d21e4fe410ee98f6b71a4ab3b3b30ebce5fb177957253aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f222d543-c065-818f-d57e-2943e34a08d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsEmbedding.isTotallyDisconnected_image [TopologicalSpace β] {f : α → β} {s : Set α}
    (hf : IsEmbedding f) : IsTotallyDisconnected (f '' s) ↔ IsTotallyDisconnected s := by
  refine ⟨hf.isTotallyDisconnected, fun hs u hus hu ↦ ?_⟩
  obtain ⟨v, hvs, rfl⟩ : ∃ v, v ⊆ s ∧ f '' v = u :=
    ⟨f ⁻¹' u ∩ s, inter_subset_right, by rwa [image_preimage_inter, inter_eq_left]⟩
  rw [hf.isInducing.isPreconnected_image] at hu
  exact (hs v hvs hu).image _

@[deprecated (since := "2024-10-26")]
alias Embedding.isTotallyDisconnected_image := IsEmbedding.isTotallyDisconnected_image

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756ada11aa156d1ddcb36dd5ccaf9a28f9687895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
