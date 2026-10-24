# image_intrinsicFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:575b4a47-a052-1ad8-b783-98514a59d51a",
  "kind": "theorem",
  "lexical_name": "image_intrinsicFrontier",
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
  "slug": "image-intrinsicfrontier--bc9f8e98a78da87071694a6b",
  "source": {
    "blob": "5c2e8732d6db4461d667d61ee457dd5d45601116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9f8e98a78da87071694a6be358cfd090bca0c31de7b6c0c2f66b2f19707918",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:575b4a47-a052-1ad8-b783-98514a59d51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_intrinsicFrontier (φ : P →ᵃⁱ[𝕜] Q) (s : Set P) :
    intrinsicFrontier 𝕜 (φ '' s) = φ '' intrinsicFrontier 𝕜 s := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · simp
  haveI : Nonempty s := hs.to_subtype
  let f := ((affineSpan 𝕜 s).isometryEquivMap φ).toHomeomorph
  have : φ.toAffineMap ∘ (↑) ∘ f.symm = (↑) := funext isometryEquivMap.apply_symm_apply
  rw [intrinsicFrontier, intrinsicFrontier, ← φ.coe_toAffineMap, ← map_span φ.toAffineMap s, ← this,
    ← Function.comp_assoc, image_comp, image_comp, f.symm.image_frontier, f.image_symm,
    ← preimage_comp, Function.comp_assoc, f.symm_comp_self, AffineIsometry.coe_toAffineMap,
    Function.comp_id, preimage_comp, φ.injective.preimage_image]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2e8732d6db4461d667d61ee457dd5d45601116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
