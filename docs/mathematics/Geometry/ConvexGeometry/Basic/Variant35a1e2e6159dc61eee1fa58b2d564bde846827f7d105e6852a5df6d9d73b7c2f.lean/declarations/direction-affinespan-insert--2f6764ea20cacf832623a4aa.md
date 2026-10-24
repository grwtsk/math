# direction_affineSpan_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdf644f0-3559-6646-3e17-87d72992c1ec",
  "kind": "theorem",
  "lexical_name": "direction_affineSpan_insert",
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
  "slug": "direction-affinespan-insert--2f6764ea20cacf832623a4aa",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 491,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f6764ea20cacf832623a4aa196203cc566faec9409dc1b530d9c11aa9ec1625",
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

Occurrence: `result:bdf644f0-3559-6646-3e17-87d72992c1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_affineSpan_insert {s : AffineSubspace k P} {p₁ p₂ : P} (hp₁ : p₁ ∈ s) :
    (affineSpan k (insert p₂ (s : Set P))).direction =
    Submodule.span k {p₂ -ᵥ p₁} ⊔ s.direction := by
  rw [sup_comm, ← Set.union_singleton, ← AffineSubspace.coe_singleton (k := k) p₂]
  change (s ⊔ {p₂}).direction = _
  simp [direction_sup hp₁ (mem_singleton _)]

/-- Given a point `p₁` in an affine subspace `s`, and a point `p₂`, a point `p` is in the span of
`s` with `p₂` added if and only if it is a multiple of `p₂ -ᵥ p₁` added to a point in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
