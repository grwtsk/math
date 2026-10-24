# extend_symm_preimage_inter_range_eventuallyEq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b880836f8624b93932b2b9106b544be39d16096a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 990,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349a6f5e-e5f1-8d7d-bf2e-a998254616d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bd0b0a2-751d-acc7-ee9c-9968b74dbf6d",
  "kind": "theorem",
  "lexical_name": "extend_symm_preimage_inter_range_eventuallyEq_aux",
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
  "slug": "extend-symm-preimage-inter-range-eventuallyeq-aux--1f0483bf4e202541ea0f06da",
  "source": {
    "blob": "b880836f8624b93932b2b9106b544be39d16096a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 990,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f0483bf4e202541ea0f06da85560337e69fbcfb2c0877b0ce10f74d42de9c25",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bd0b0a2-751d-acc7-ee9c-9968b74dbf6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 990–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_symm_preimage_inter_range_eventuallyEq_aux {s : Set M} {x : M} (hx : x ∈ f.source) :
    ((f.extend I).symm ⁻¹' s ∩ range I : Set _) =ᶠ[𝓝 (f.extend I x)]
      ((f.extend I).target ∩ (f.extend I).symm ⁻¹' s : Set _) := by
  rw [f.extend_target, inter_assoc, inter_comm (range I)]
  conv =>
    congr
    · skip
    rw [← univ_inter (_ ∩ range I)]
  refine' (eventuallyEq_univ.mpr _).symm.inter EventuallyEq.rfl
  refine' I.continuousAt_symm.preimage_mem_nhds (f.open_target.mem_nhds _)
  simp_rw [f.extend_coe, Function.comp_apply, I.left_inv, f.mapsTo hx]
#align local_homeomorph.extend_symm_preimage_inter_range_eventually_eq_aux LocalHomeomorph.extend_symm_preimage_inter_range_eventuallyEq_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant77654627ce2a286a9c26b46e696ff90388d9d80a25c4362651d3177cb98795b7.lean#L990).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b880836f8624b93932b2b9106b544be39d16096a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
