# NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef65b7291e25696524a52bbf78901a8cba675e46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b935db93-fd7f-50a0-87ef-b46f42b39b34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6c2bc48-3f50-87db-33ea-3b7edb5147f5",
  "kind": "theorem",
  "lexical_name": "NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent",
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
  "slug": "noetherianspace-exists-isopen-nonempty-subset-irreduciblecomponent--27333ecb95f00bb0ab36b0f0",
  "source": {
    "blob": "ef65b7291e25696524a52bbf78901a8cba675e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27333ecb95f00bb0ab36b0f0acd86c095ceccbff4aadb4aa9df29a66d0a1403f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c2bc48-3f50-87db-33ea-3b7edb5147f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent [NoetherianSpace α]
    (Z : Set α) (H : Z ∈ irreducibleComponents α) :
    ∃ o : Set α, IsOpen o ∧ o.Nonempty ∧ o ⊆ Z := by
  have hα : (irreducibleComponents α).Finite := finite_irreducibleComponents
  have hZ := closure_sUnion_irreducibleComponents_sdiff_singleton hα Z H
  refine ⟨(⋃₀ (irreducibleComponents α \ {Z}))ᶜ, ?_, ?_, subset_closure.trans hZ.le⟩
  · rw [Set.sUnion_eq_biUnion, isOpen_compl_iff]
    exact hα.sdiff.isClosed_biUnion fun W hW ↦ isClosed_of_mem_irreducibleComponents W hW.1
  · contrapose! hZ
    rw [hZ, closure_empty, ← Set.nonempty_iff_empty_ne]
    exact H.1.nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef65b7291e25696524a52bbf78901a8cba675e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
