# extend_Z_bilin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a872101e79d8fbb752f2279b62d0b99d65d1e3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38447658-39ec-b1ca-9088-f67ab0b2a6f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f45b3b9-1a8b-65f6-7164-37740342bb69",
  "kind": "theorem",
  "lexical_name": "extend_Z_bilin",
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
  "slug": "extend-z-bilin--cba717c469e2084c6689a97e",
  "source": {
    "blob": "8a872101e79d8fbb752f2279b62d0b99d65d1e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba717c469e2084c6689a97eb9ba0934c4fd4a8a9274def817ea3be61c64db80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f45b3b9-1a8b-65f6-7164-37740342bb69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_Z_bilin : Continuous (extend (de.prodMap df) (fun p : β × δ => φ p.1 p.2)) := by
  refine continuous_extend_of_cauchy _ ?_
  rintro ⟨x₀, y₀⟩
  constructor
  · apply NeBot.map
    apply comap_neBot
    intro U h
    rcases mem_closure_iff_nhds.1 ((de.prodMap df).dense (x₀, y₀)) U h with ⟨x, x_in, ⟨z, z_x⟩⟩
    exists z
    aesop
  · suffices map (fun p : (β × δ) × β × δ => (fun p : β × δ => φ p.1 p.2) p.2 -
      (fun p : β × δ => φ p.1 p.2) p.1)
        (comap (fun p : (β × δ) × β × δ => ((e p.1.1, f p.1.2), (e p.2.1, f p.2.2)))
        (𝓝 (x₀, y₀) ×ˢ 𝓝 (x₀, y₀))) ≤ 𝓝 0 by
      rwa [uniformity_eq_comap_nhds_zero G, prod_map_map_eq, ← map_le_iff_le_comap, Filter.map_map,
        prod_comap_comap_eq]
    intro W' W'_nhds
    have key := extend_Z_bilin_key de df hφ W'_nhds x₀ y₀
    rcases key with ⟨U, U_nhds, V, V_nhds, h⟩
    rw [mem_comap] at U_nhds
    rcases U_nhds with ⟨U', U'_nhds, U'_sub⟩
    rw [mem_comap] at V_nhds
    rcases V_nhds with ⟨V', V'_nhds, V'_sub⟩
    rw [mem_map, mem_comap, nhds_prod_eq]
    exists (U' ×ˢ V') ×ˢ U' ×ˢ V'
    rw [mem_prod_same_iff]
    simp only [exists_prop]
    constructor
    · have := prod_mem_prod U'_nhds V'_nhds
      tauto
    · intro p h'
      simp only [Set.mem_preimage, Set.prodMk_mem_set_prod_eq] at h'
      rcases p with ⟨⟨x, y⟩, ⟨x', y'⟩⟩
      apply h <;> tauto

end IsDenseInducing

section CompleteQuotient

universe u

open TopologicalSpace

open Classical in
/-- The quotient `G ⧸ N` of a complete first countable topological group `G` by a normal subgroup
is itself complete. [N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Because a topological group is not equipped with a `UniformSpace` instance by default, we must
explicitly provide it in order to consider completeness. See `QuotientGroup.completeSpace` for a
version in which `G` is already equipped with a uniform structure. -/
@[to_additive "The quotient `G ⧸ N` of a complete first countable topological additive group
`G` by a normal additive subgroup is itself complete. Consequently, quotients of Banach spaces by
subspaces are complete. [N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Because an additive topological group is not equipped with a `UniformSpace` instance by default,
we must explicitly provide it in order to consider completeness. See
`QuotientAddGroup.completeSpace` for a version in which `G` is already equipped with a uniform
structure."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a872101e79d8fbb752f2279b62d0b99d65d1e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
