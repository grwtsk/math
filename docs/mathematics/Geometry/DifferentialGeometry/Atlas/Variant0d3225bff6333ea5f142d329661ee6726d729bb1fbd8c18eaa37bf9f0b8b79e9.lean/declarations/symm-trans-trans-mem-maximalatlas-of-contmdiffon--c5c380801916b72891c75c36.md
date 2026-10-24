# symm_trans_trans_mem_maximalAtlas_of_contMDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69d39c49485332b8258b44fea609205d8e143431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6184b668-5e60-56b2-abd7-6c8d08b19b1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8250b32-4570-781e-7cf5-874b05445c0e",
  "kind": "lemma",
  "lexical_name": "symm_trans_trans_mem_maximalAtlas_of_contMDiffOn",
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
  "slug": "symm-trans-trans-mem-maximalatlas-of-contmdiffon--c5c380801916b72891c75c36",
  "source": {
    "blob": "69d39c49485332b8258b44fea609205d8e143431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 181,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c380801916b72891c75c360aeb6152c2ad564f0c49852b00ef1f00fe680a82",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8250b32-4570-781e-7cf5-874b05445c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symm_trans_trans_mem_maximalAtlas_of_contMDiffOn
    {ϕ ϕ' : OpenPartialHomeomorph M H} (hϕ : ϕ ∈ maximalAtlas I n M) (hϕ' : ϕ' ∈ maximalAtlas I n M)
    {f : OpenPartialHomeomorph M M} (hf : ContMDiffOn I I n f f.source)
    (hf' : ContMDiffOn I I n f.symm f.target) :
    ϕ.symm.trans (f.trans ϕ') ∈ maximalAtlas I n H := by
  refine (ϕ.symm.trans (f.trans ϕ')).mem_maximalAtlas_of_contMDiffOn ?_ ?_
  · exact (contMDiffOn_of_mem_maximalAtlas hϕ').comp
      (hf.comp ((contMDiffOn_symm_of_mem_maximalAtlas hϕ).mono fun z hz ↦ hz.1) fun z hz ↦ hz.2.1)
      fun z hz ↦ hz.2.2
  · exact (contMDiffOn_of_mem_maximalAtlas hϕ).comp
      (hf'.comp ((contMDiffOn_symm_of_mem_maximalAtlas hϕ').mono fun z hz ↦ hz.1.1)
        fun z hz ↦ hz.1.2)
      fun z hz ↦ hz.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d39c49485332b8258b44fea609205d8e143431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
