# Filter.HasBasis.uniformInducing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5173ca961be529ab41ac00a752f31b33d76b27eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b01720c8-58f1-b042-cd4e-dd50aeefb3a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14928321-13a4-1e88-4d47-7402ba2c4e3e",
  "kind": "lemma",
  "lexical_name": "Filter.HasBasis.uniformInducing_iff",
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
  "slug": "filter-hasbasis-uniforminducing-iff--e7639f9e933db0965b338ac5",
  "source": {
    "blob": "5173ca961be529ab41ac00a752f31b33d76b27eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7639f9e933db0965b338ac51f2ab5bba2ed6fe1574f426ddde157bc3d5a193f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14928321-13a4-1e88-4d47-7402ba2c4e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Filter.HasBasis.uniformInducing_iff {ι ι'} {p : ι → Prop} {p' : ι' → Prop} {s s'}
    (h : (𝓤 α).HasBasis p s) (h' : (𝓤 β).HasBasis p' s') {f : α → β} :
    UniformInducing f ↔
      (∀ i, p' i → ∃ j, p j ∧ ∀ x y, (x, y) ∈ s j → (f x, f y) ∈ s' i) ∧
        (∀ j, p j → ∃ i, p' i ∧ ∀ x y, (f x, f y) ∈ s' i → (x, y) ∈ s j) := by
  simp [uniformInducing_iff', h.uniformContinuous_iff h', (h'.comap _).le_basis_iff h, subset_def]
#align filter.has_basis.uniform_inducing_iff Filter.HasBasis.uniformInducing_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5173ca961be529ab41ac00a752f31b33d76b27eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
