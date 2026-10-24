# exists_isometric_embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63324262-fd9d-3876-552d-8b2c36a82deb",
  "kind": "theorem",
  "lexical_name": "exists_isometric_embedding",
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
  "slug": "exists-isometric-embedding--2dec69d5f627671d679d47df",
  "source": {
    "blob": "77f8e84459267b2ca0c9c8653a5f49cf3993022f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dec69d5f627671d679d47dfe2defde52a2eb76217d187440cc7c67048848b10",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63324262-fd9d-3876-552d-8b2c36a82deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isometric_embedding (α : Type u) [MetricSpace α] [SeparableSpace α] :
    ∃ f : α → ℓ^∞(ℕ), Isometry f := by
  rcases (univ : Set α).eq_empty_or_nonempty with h | h
  · use fun _ => 0; intro x; exact absurd h (Nonempty.ne_empty ⟨x, mem_univ x⟩)
  · -- We construct a map x : ℕ → α with dense image
    rcases h with ⟨basepoint⟩
    haveI : Inhabited α := ⟨basepoint⟩
    have : ∃ s : Set α, s.Countable ∧ Dense s := exists_countable_dense α
    rcases this with ⟨S, ⟨S_countable, S_dense⟩⟩
    rcases Set.countable_iff_exists_subset_range.1 S_countable with ⟨x, x_range⟩
    -- Use embeddingOfSubset to construct the desired isometry
    exact ⟨embeddingOfSubset x, embeddingOfSubset_isometry x (S_dense.mono x_range)⟩

end KuratowskiEmbedding

open TopologicalSpace KuratowskiEmbedding

/-- The Kuratowski embedding is an isometric embedding of a separable metric space in `ℓ^∞(ℕ, ℝ)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f8e84459267b2ca0c9c8653a5f49cf3993022f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
