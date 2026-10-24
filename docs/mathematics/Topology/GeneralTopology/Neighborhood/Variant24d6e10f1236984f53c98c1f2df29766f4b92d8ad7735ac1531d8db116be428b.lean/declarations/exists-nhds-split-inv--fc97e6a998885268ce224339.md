# exists_nhds_split_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9338030-635e-7b1d-9db0-65ad8dde2051",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9ad7a73-d3f4-9482-cac0-1a2574c525b6",
  "kind": "theorem",
  "lexical_name": "exists_nhds_split_inv",
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
  "slug": "exists-nhds-split-inv--fc97e6a998885268ce224339",
  "source": {
    "blob": "9f001740a81132036b29324daefca70a9d5e64e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc97e6a998885268ce2243390448451d7e8516b94aaa76943bb2eaa3b24f63ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9ad7a73-d3f4-9482-cac0-1a2574c525b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nhds_split_inv {s : Set G} (hs : s ∈ 𝓝 (1 : G)) :
    ∃ V ∈ 𝓝 (1 : G), ∀ v ∈ V, ∀ w ∈ V, v / w ∈ s := by
  have : (fun p : G × G => p.1 * p.2⁻¹) ⁻¹' s ∈ 𝓝 ((1, 1) : G × G) :=
    continuousAt_fst.mul continuousAt_snd.inv (by simpa)
  simpa only [div_eq_mul_inv, nhds_prod_eq, mem_prod_self_iff, prod_subset_iff, mem_preimage] using
    this

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variant24d6e10f1236984f53c98c1f2df29766f4b92d8ad7735ac1531d8db116be428b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f001740a81132036b29324daefca70a9d5e64e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
