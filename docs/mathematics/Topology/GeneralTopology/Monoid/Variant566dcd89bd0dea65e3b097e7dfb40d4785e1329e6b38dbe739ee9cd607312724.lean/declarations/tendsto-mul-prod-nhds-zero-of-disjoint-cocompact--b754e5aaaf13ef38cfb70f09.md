# tendsto_mul_prod_nhds_zero_of_disjoint_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aec0e747f56d1284079b639fd4ab1441ee848698",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fca3171-5986-23e1-f585-40a7a3ec878b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5ae4c96-21ef-eadf-56f9-aa2a56b4308e",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_prod_nhds_zero_of_disjoint_cocompact",
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
  "slug": "tendsto-mul-prod-nhds-zero-of-disjoint-cocompact--b754e5aaaf13ef38cfb70f09",
  "source": {
    "blob": "aec0e747f56d1284079b639fd4ab1441ee848698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 469,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b754e5aaaf13ef38cfb70f09843ac747aea735cdc06cea6587ebffffae6e6e85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ae4c96-21ef-eadf-56f9-aa2a56b4308e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_prod_nhds_zero_of_disjoint_cocompact {l : Filter M}
    (hl : Disjoint l (cocompact M)) :
    Tendsto (fun x : M × M ↦ x.1 * x.2) (l ×ˢ 𝓝 0) (𝓝 0) := calc
  map (fun x : M × M ↦ x.1 * x.2) (l ×ˢ 𝓝 0)
  _ ≤ map (fun x : M × M ↦ x.1 * x.2) (𝓝ˢ (Set.univ ×ˢ {0})) :=
    map_mono <| prod_nhds_le_of_disjoint_cocompact 0 hl
  _ ≤ 𝓝 0 := continuous_mul.tendsto_nhdsSet_nhds fun _ ⟨_, hx⟩ ↦ mul_eq_zero_of_right _ hx

/-- Let `M` be a topological space with a continuous multiplication operation and a `0`.
Let `l` be a filter on `M × M` which is disjoint from the cocompact filter. Then, the multiplication
map `M × M → M` tends to zero on `(𝓝 0).coprod (𝓝 0) ⊓ l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec0e747f56d1284079b639fd4ab1441ee848698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
