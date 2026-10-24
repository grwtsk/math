# Sphere.secondInter_vsub_secondInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811f2b82-2521-d32e-943b-ab377610f717",
  "kind": "theorem",
  "lexical_name": "Sphere.secondInter_vsub_secondInter",
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
  "slug": "sphere-secondinter-vsub-secondinter--8554ef9fa503af00886e485a",
  "source": {
    "blob": "17357bc467861633668a58b9444d8d0914cb8004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8554ef9fa503af00886e485a4a0ee760c2423f0849d15610b92e670736ea07e8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811f2b82-2521-d32e-943b-ab377610f717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.secondInter_vsub_secondInter (s₁ s₂ : Sphere P) (p : P) (v : V) :
    s₁.secondInter p v -ᵥ s₂.secondInter p v = (2 * ⟪v, s₁.center -ᵥ s₂.center⟫ / ⟪v, v⟫) • v := by
  rw [Sphere.secondInter, Sphere.secondInter, vadd_vsub_vadd_cancel_right, ← sub_smul,
    ← vsub_sub_vsub_cancel_left s₁.center s₂.center p, inner_sub_right]
  grind

/-- The difference between the second intersections of two spheres along a common
unit direction `v` is `(2 * ⟪v, s₁.center -ᵥ s₂.center⟫) • v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17357bc467861633668a58b9444d8d0914cb8004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
