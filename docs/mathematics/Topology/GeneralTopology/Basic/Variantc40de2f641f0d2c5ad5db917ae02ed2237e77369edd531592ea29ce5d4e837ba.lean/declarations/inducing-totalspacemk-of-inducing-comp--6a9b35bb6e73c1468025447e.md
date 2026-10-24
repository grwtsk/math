# inducing_totalSpaceMk_of_inducing_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62f52c858209bd7327725cd8de80aaa8f529d990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 856,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f43c601-fe28-f460-7197-d3e1fd62cb1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a4169bf-94d3-5b10-76bc-acd1b9b9b553",
  "kind": "theorem",
  "lexical_name": "inducing_totalSpaceMk_of_inducing_comp",
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
  "slug": "inducing-totalspacemk-of-inducing-comp--6a9b35bb6e73c1468025447e",
  "source": {
    "blob": "62f52c858209bd7327725cd8de80aaa8f529d990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 856,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a9b35bb6e73c1468025447eb16f22b2f5eadf07f3d7a56cc5a7219f4e414df9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4169bf-94d3-5b10-76bc-acd1b9b9b553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 856–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducing_totalSpaceMk_of_inducing_comp (b : B)
    (h : Inducing (a.pretrivializationAt b ∘ TotalSpace.mk b)) :
    @Inducing _ _ _ a.totalSpaceTopology (TotalSpace.mk b) := by
  letI := a.totalSpaceTopology
  rw [← restrict_comp_codRestrict (a.mem_pretrivializationAt_source b)] at h
  apply Inducing.of_codRestrict (a.mem_pretrivializationAt_source b)
  refine inducing_of_inducing_compose ?_ (continuousOn_iff_continuous_restrict.mp
    (a.trivializationOfMemPretrivializationAtlas
      (a.pretrivialization_mem_atlas b)).continuous_toFun) h
  exact (a.continuous_totalSpaceMk b).codRestrict (a.mem_pretrivializationAt_source b)
#align fiber_prebundle.inducing_total_space_mk_of_inducing_comp FiberPrebundle.inducing_totalSpaceMk_of_inducing_comp

/-- Make a `FiberBundle` from a `FiberPrebundle`.  Concretely this means
that, given a `FiberPrebundle` structure for a sigma-type `E` -- which consists of a
number of "pretrivializations" identifying parts of `E` with product spaces `U × F` -- one
establishes that for the topology constructed on the sigma-type using
`FiberPrebundle.totalSpaceTopology`, these "pretrivializations" are actually
"trivializations" (i.e., homeomorphisms with respect to the constructed topology). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean#L856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f52c858209bd7327725cd8de80aaa8f529d990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
