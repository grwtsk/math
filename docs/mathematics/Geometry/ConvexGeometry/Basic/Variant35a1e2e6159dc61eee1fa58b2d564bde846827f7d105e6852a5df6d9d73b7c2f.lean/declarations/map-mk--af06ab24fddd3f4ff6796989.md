# map_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d7bc6ea-14f7-7d65-845a-478ef4b6d980",
  "kind": "lemma",
  "lexical_name": "map_mk'",
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
  "slug": "map-mk--af06ab24fddd3f4ff6796989",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 619,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af06ab24fddd3f4ff6796989f8d52f626935b430b10630e23e63864da00fac33",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d7bc6ea-14f7-7d65-845a-478ef4b6d980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_mk' (p : P₁) (direction : Submodule k V₁) :
    (mk' p direction).map f = mk' (f p) (direction.map f.linear) := by
  ext q
  simp only [mem_map, mem_mk', Submodule.mem_map]
  constructor
  · rintro ⟨r, hr, rfl⟩
    exact ⟨r -ᵥ p, hr, by simp⟩
  · rintro ⟨r, hr, he⟩
    exact ⟨r +ᵥ p, by simp [hr], by simp [he]⟩

section inclusion
variable {S₁ S₂ : AffineSubspace k P₁} [Nonempty S₁]

/-- Affine map from a smaller to a larger subspace of the same space.

This is the affine version of `Submodule.inclusion`. -/
@[simps linear]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
