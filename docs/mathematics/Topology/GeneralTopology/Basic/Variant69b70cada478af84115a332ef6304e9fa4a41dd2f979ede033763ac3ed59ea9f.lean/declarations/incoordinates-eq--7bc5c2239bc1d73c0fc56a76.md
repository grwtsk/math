# inCoordinates_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1036,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17b99ab3-dace-bf6c-4894-91a77ea6cab6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5830049a-15c6-68be-f759-7deeb02783e3",
  "kind": "theorem",
  "lexical_name": "inCoordinates_eq",
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
  "slug": "incoordinates-eq--7bc5c2239bc1d73c0fc56a76",
  "source": {
    "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1047,
    "line": 1036,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc5c2239bc1d73c0fc56a7636f407a17031eed74fa771473e4ea5103853dda4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5830049a-15c6-68be-f759-7deeb02783e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1047.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inCoordinates_eq (x₀ x : B) (y₀ y : B') (ϕ : E x →SL[σ] E' y)
    (hx : x ∈ (trivializationAt F E x₀).baseSet) (hy : y ∈ (trivializationAt F' E' y₀).baseSet) :
    inCoordinates F E F' E' x₀ x y₀ y ϕ =
      ((trivializationAt F' E' y₀).continuousLinearEquivAt 𝕜₂ y hy : E' y →L[𝕜₂] F').comp
        (ϕ.comp <|
          (((trivializationAt F E x₀).continuousLinearEquivAt 𝕜₁ x hx).symm : F →L[𝕜₁] E x)) := by
  ext
  simp_rw [inCoordinates, ContinuousLinearMap.coe_comp', ContinuousLinearEquiv.coe_coe,
    Trivialization.coe_continuousLinearEquivAt_eq, Trivialization.symm_continuousLinearEquivAt_eq]
#align continuous_linear_map.in_coordinates_eq ContinuousLinearMap.inCoordinates_eq

/-- Rewrite `ContinuousLinearMap.inCoordinates` in a `VectorBundleCore`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dccfa7168a9adea851592463256a7e13d96a346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
