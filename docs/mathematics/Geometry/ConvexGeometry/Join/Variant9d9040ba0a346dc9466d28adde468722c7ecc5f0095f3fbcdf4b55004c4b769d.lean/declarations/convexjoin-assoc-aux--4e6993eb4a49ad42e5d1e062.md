# convexJoin_assoc_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04f4ce28-91a1-bc54-f29d-d51e1e0098ab",
  "kind": "theorem",
  "lexical_name": "convexJoin_assoc_aux",
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
  "slug": "convexjoin-assoc-aux--4e6993eb4a49ad42e5d1e062",
  "source": {
    "blob": "974774fa923505766768d307791735359c146a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e6993eb4a49ad42e5d1e062b8424acf03cc778bd56062a525403d7e46f99b16",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f4ce28-91a1-bc54-f29d-d51e1e0098ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexJoin_assoc_aux (s t u : Set E) :
    convexJoin 𝕜 (convexJoin 𝕜 s t) u ⊆ convexJoin 𝕜 s (convexJoin 𝕜 t u) := by
  simp_rw [subset_def, mem_convexJoin]
  rintro _ ⟨z, ⟨x, hx, y, hy, a₁, b₁, ha₁, hb₁, hab₁, rfl⟩, z, hz, a₂, b₂, ha₂, hb₂, hab₂, rfl⟩
  obtain rfl | hb₂ := hb₂.eq_or_lt
  · refine ⟨x, hx, y, ⟨y, hy, z, hz, left_mem_segment 𝕜 _ _⟩, a₁, b₁, ha₁, hb₁, hab₁, ?_⟩
    linear_combination (norm := module) -hab₂ • (a₁ • x + b₁ • y)
  refine
    ⟨x, hx, (a₂ * b₁ / (a₂ * b₁ + b₂)) • y + (b₂ / (a₂ * b₁ + b₂)) • z,
      ⟨y, hy, z, hz, _, _, by positivity, by positivity, by field_simp, rfl⟩,
      a₂ * a₁, a₂ * b₁ + b₂, by positivity, by positivity, ?_, ?_⟩
  · linear_combination a₂ * hab₁ + hab₂
  · match_scalars <;> field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `974774fa923505766768d307791735359c146a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
