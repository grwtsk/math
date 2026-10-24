# nhdsSet_diagonal_eq_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a3f0bf5d5798ac6c8ebebffda2b793f2c004aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4294e847-892d-929b-ba46-c5c2470ebf43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31d86769-c8b6-8b37-59fd-a1d4ab91df9e",
  "kind": "theorem",
  "lexical_name": "nhdsSet_diagonal_eq_uniformity",
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
  "slug": "nhdsset-diagonal-eq-uniformity--41ed92cc785bd87758c22277",
  "source": {
    "blob": "41a3f0bf5d5798ac6c8ebebffda2b793f2c004aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ed92cc785bd87758c222778879c2182de9a1a78129628021f7ae4f6a7008e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31d86769-c8b6-8b37-59fd-a1d4ab91df9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsSet_diagonal_eq_uniformity [CompactSpace α] : 𝓝ˢ (diagonal α) = 𝓤 α := by
  refine' nhdsSet_diagonal_le_uniformity.antisymm _
  have :
    (𝓤 (α × α)).HasBasis (fun U => U ∈ 𝓤 α) fun U =>
      (fun p : (α × α) × α × α => ((p.1.1, p.2.1), p.1.2, p.2.2)) ⁻¹' U ×ˢ U := by
    rw [uniformity_prod_eq_comap_prod]
    exact (𝓤 α).basis_sets.prod_self.comap _
  refine' (isCompact_diagonal.nhdsSet_basis_uniformity this).ge_iff.2 fun U hU => _
  exact mem_of_superset hU fun ⟨x, y⟩ hxy => mem_iUnion₂.2
    ⟨(x, x), rfl, refl_mem_uniformity hU, hxy⟩
#align nhds_set_diagonal_eq_uniformity nhdsSet_diagonal_eq_uniformity

/-- On a compact uniform space, the topology determines the uniform structure, entourages are
exactly the neighborhoods of the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a3f0bf5d5798ac6c8ebebffda2b793f2c004aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
