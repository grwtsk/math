# _root_.GRWTSK.Geometry.ConvexGeometry.VsubRightMemDirectionIffMem.Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.affineSpan_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ef1bbac-974a-5374-de7d-64d39c64d3a2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ConvexGeometry.VsubRightMemDirectionIffMem.Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.affineSpan_prod_eq",
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
  "slug": "root-grwtsk-geometry-convexgeometry-vsubrightmemdirectioniffmem-variantd--94bd5759f2c8cd7a3368dcc3",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 893,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94bd5759f2c8cd7a3368dcc3b56a67893d9b21f4241ef3d0f84b6dfe033d7da4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ef1bbac-974a-5374-de7d-64d39c64d3a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ConvexGeometry.VsubRightMemDirectionIffMem.Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.affineSpan_prod_eq (s : Set P) (t : Set Q) :
    affineSpan k (s ×ˢ t) = (affineSpan k s).prod (affineSpan k t) := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · simp
  rcases t.eq_empty_or_nonempty with rfl | ht
  · simp
  apply AffineSubspace.ext_of_direction_eq
  · simp [direction_prod_eq, Set.nonempty_iff_ne_empty.mp, hs, ht, direction_affineSpan,
      vectorSpan_prod_eq]
  · obtain ⟨x, hx⟩ := hs
    obtain ⟨y, hy⟩ := ht
    use ⟨x, y⟩
    simp [mem_affineSpan, hx, hy]

/-- Two affine subspaces are parallel if one is related to the other by adding the same vector
to all points. -/
@[wikidata Q53875]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
