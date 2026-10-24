# intrinsicFrontier_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b1ad7b-1b20-155c-86c8-f8f086ee2523",
  "kind": "theorem",
  "lexical_name": "intrinsicFrontier_image",
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
  "slug": "intrinsicfrontier-image--552e5e2c81d07a81c89f662c",
  "source": {
    "blob": "9519ee7b09371c224ef80ca67112e602428c59b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 347,
    "path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552e5e2c81d07a81c89f662c6b79f5ee1637ae40195cf9014966c3f299ff0260",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b1ad7b-1b20-155c-86c8-f8f086ee2523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicFrontier_image (φ : P →ᵃⁱ[𝕜] Q) (s : Set P) :
    intrinsicFrontier 𝕜 (φ '' s) = φ '' intrinsicFrontier 𝕜 s :=
  let e : [Nonempty s] → (affineSpan 𝕜 s) ≃ᴬ[𝕜] (affineSpan 𝕜 (φ '' s)) := fun [_] =>
    ((affineSpan 𝕜 s).isometryEquivMap φ).toContinuousAffineEquiv.trans <| ofEq <|
      (map_span φ.toAffineMap s).trans <| congrArg _ <| congrArg (· '' s) φ.coe_toAffineMap
  intrinsicFrontier_image_of_homeomorph_affineSpan
    (fun [_] => e.toHomeomorph) (fun [_] => e.toHomeomorph.isHomeomorph) (fun [_] _ => rfl)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9519ee7b09371c224ef80ca67112e602428c59b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
