# Nnreal.upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27d2fbe28b79cb92d1c25e2ae69b7b16163015e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f5c97cb-a6ef-83b1-b226-a752457e6f9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3aae6ba-1536-cc4e-08bc-df89ce76492e",
  "kind": "theorem",
  "lexical_name": "Nnreal.upper_bound",
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
  "slug": "nnreal-upper-bound--aec791a85c963c14275a5e9b",
  "source": {
    "blob": "27d2fbe28b79cb92d1c25e2ae69b7b16163015e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1457,
    "line": 1426,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec791a85c963c14275a5e9b80fe274465d90155b05bfec75b9094a9611ecd8b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3aae6ba-1536-cc4e-08bc-df89ce76492e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1426–1457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nnreal.upper_bound {α : Type*} [TopologicalSpace α] (f : α →ᵇ ℝ≥0) (x : α) :
    f x ≤ nndist f 0 := by
  have key : nndist (f x) ((0 : α →ᵇ ℝ≥0) x) ≤ nndist f 0 := @dist_coe_le_dist α ℝ≥0 _ _ f 0 x
  simp only [coe_zero, Pi.zero_apply] at key
  rwa [NNReal.nndist_zero_eq_val' (f x)] at key
#align bounded_continuous_function.nnreal.upper_bound BoundedContinuousFunction.Nnreal.upper_bound

/-!
### Star structures

In this section, if `β` is a normed ⋆-group, then so is the space of bounded
continuous functions from `α` to `β`, by using the star operation pointwise.

If `𝕜` is normed field and a ⋆-ring over which `β` is a normed algebra and a
star module, then the space of bounded continuous functions from `α` to `β`
is a star module.

If `β` is a ⋆-ring in addition to being a normed ⋆-group, then `α →ᵇ β`
inherits a ⋆-ring structure.

In summary, if `β` is a C⋆-algebra over `𝕜`, then so is `α →ᵇ β`; note that
completeness is guaranteed when `β` is complete (see
`BoundedContinuousFunction.complete`). -/


section NormedAddCommGroup

variable {𝕜 : Type*} [NormedField 𝕜] [StarRing 𝕜] [TopologicalSpace α] [SeminormedAddCommGroup β]
  [StarAddMonoid β] [NormedStarGroup β]

variable [NormedSpace 𝕜 β] [StarModule 𝕜 β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean#L1426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d2fbe28b79cb92d1c25e2ae69b7b16163015e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
