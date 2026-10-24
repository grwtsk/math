# tendsto_mul_coprod_nhds_zero_inf_of_disjoint_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d3a2f72e89d6df1d74beea5a30ac4ed2e079201",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:874b2ca8-2a47-8963-e6f8-f7d182c3a514",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9f4c1ee-00fa-e8db-0f2f-2b0b9c2fc931",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_coprod_nhds_zero_inf_of_disjoint_cocompact",
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
  "slug": "tendsto-mul-coprod-nhds-zero-inf-of-disjoint-cocompact--cec974c5e509e9e19366cd44",
  "source": {
    "blob": "6d3a2f72e89d6df1d74beea5a30ac4ed2e079201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cec974c5e509e9e19366cd449977f63db8a2f309b48948a6b616c936a710d0a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f4c1ee-00fa-e8db-0f2f-2b0b9c2fc931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_coprod_nhds_zero_inf_of_disjoint_cocompact {l : Filter (M × M)}
    (hl : Disjoint l (cocompact (M × M))) :
    Tendsto (fun x : M × M ↦ x.1 * x.2) ((𝓝 0).coprod (𝓝 0) ⊓ l) (𝓝 0) := by
  have := calc
    (𝓝 0).coprod (𝓝 0) ⊓ l
    _ ≤ (𝓝 0).coprod (𝓝 0) ⊓ map Prod.fst l ×ˢ map Prod.snd l :=
      inf_le_inf_left _ le_prod_map_fst_snd
    _ ≤ 𝓝 0 ×ˢ map Prod.snd l ⊔ map Prod.fst l ×ˢ 𝓝 0 :=
      coprod_inf_prod_le _ _ _ _
  apply (Tendsto.sup _ _).mono_left this
  · apply tendsto_mul_nhds_zero_prod_of_disjoint_cocompact
    exact disjoint_map_cocompact continuous_snd hl
  · apply tendsto_mul_prod_nhds_zero_of_disjoint_cocompact
    exact disjoint_map_cocompact continuous_fst hl

/-- Let `M` be a topological space with a continuous multiplication operation and a `0`.
Let `l` be a filter on `M × M` which is both disjoint from the cocompact filter and less than or
equal to `(𝓝 0).coprod (𝓝 0)`. Then the multiplication map `M × M → M` tends to zero on `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantb44d211a64598f89b5448d8bcb1d6dd24234a52cb6bcb5143d8a7c720a4475db.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3a2f72e89d6df1d74beea5a30ac4ed2e079201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
