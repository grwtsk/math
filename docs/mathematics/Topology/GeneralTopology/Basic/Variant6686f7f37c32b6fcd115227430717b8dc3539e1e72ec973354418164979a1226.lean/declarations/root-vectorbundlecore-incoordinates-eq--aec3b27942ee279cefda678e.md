# _root_.VectorBundleCore.inCoordinates_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 997,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03f0ef59-ae70-323a-e37f-30da03292c0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e291ef4-07f5-a64c-d239-e8396f6ce8a4",
  "kind": "theorem",
  "lexical_name": "_root_.VectorBundleCore.inCoordinates_eq",
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
  "slug": "root-vectorbundlecore-incoordinates-eq--aec3b27942ee279cefda678e",
  "source": {
    "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1008,
    "line": 997,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec3b27942ee279cefda678e2d4753e23b9746bdc764727470362e3ca4a807e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e291ef4-07f5-a64c-d239-e8396f6ce8a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 997–1008.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.VectorBundleCore.inCoordinates_eq {ι ι'} (Z : VectorBundleCore 𝕜₁ B F ι)
    (Z' : VectorBundleCore 𝕜₂ B' F' ι') {x₀ x : B} {y₀ y : B'} (ϕ : F →SL[σ] F')
    (hx : x ∈ Z.baseSet (Z.indexAt x₀)) (hy : y ∈ Z'.baseSet (Z'.indexAt y₀)) :
    inCoordinates F Z.Fiber F' Z'.Fiber x₀ x y₀ y ϕ =
      (Z'.coordChange (Z'.indexAt y) (Z'.indexAt y₀) y).comp
        (ϕ.comp <| Z.coordChange (Z.indexAt x₀) (Z.indexAt x) x) := by
  simp_rw [inCoordinates, Z'.trivializationAt_continuousLinearMapAt hy,
    Z.trivializationAt_symmL hx]

end ContinuousLinearMap

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean#L997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da578940fc9a46d454b8e5d1bd13861e293fa597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
