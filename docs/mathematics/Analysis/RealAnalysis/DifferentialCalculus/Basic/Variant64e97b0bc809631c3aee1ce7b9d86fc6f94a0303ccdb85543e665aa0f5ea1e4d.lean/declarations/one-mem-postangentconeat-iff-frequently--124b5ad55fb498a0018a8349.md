# one_mem_posTangentConeAt_iff_frequently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae865427-4266-3a9a-2802-7fff3b7ba5c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fc726aa-177e-1f60-2518-a3f0c9c24b8f",
  "kind": "lemma",
  "lexical_name": "one_mem_posTangentConeAt_iff_frequently",
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
  "slug": "one-mem-postangentconeat-iff-frequently--124b5ad55fb498a0018a8349",
  "source": {
    "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124b5ad55fb498a0018a834993971d02c1e1e9ae87bb31a20272dfece7a9290b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc726aa-177e-1f60-2518-a3f0c9c24b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_mem_posTangentConeAt_iff_frequently :
    1 ∈ posTangentConeAt s a ↔ ∃ᶠ x in 𝓝[>] a, x ∈ s := by
  rw [one_mem_posTangentConeAt_iff_mem_closure, mem_closure_iff_frequently,
    frequently_nhdsWithin_iff, inter_comm]
  simp_rw [mem_inter_iff]

/-- **Fermat's Theorem**: the derivative of a function at a local minimum equals zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba440227664f5658fece039b8f5b5edf866e6a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
