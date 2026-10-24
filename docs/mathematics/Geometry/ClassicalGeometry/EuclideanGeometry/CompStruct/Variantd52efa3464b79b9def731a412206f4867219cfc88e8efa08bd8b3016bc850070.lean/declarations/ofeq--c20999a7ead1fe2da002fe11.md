# ofEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b00ec281aad08416fb2c723ac21fa6cdf3185f0ac43f2ae92ec6e9acce09c95f",
  "kind": "def",
  "lexical_name": "ofEq",
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
  "slug": "ofeq--c20999a7ead1fe2da002fe11",
  "source": {
    "blob": "30f26a46eee1235bda793be529a7c9b5e31e9c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 273,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c20999a7ead1fe2da002fe11ac14ab38f04d74919f4972f40b121171c9a761ea",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b00ec281aad08416fb2c723ac21fa6cdf3185f0ac43f2ae92ec6e9acce09c95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEq {y₀ y₁ y₂ : X _⦋0⦌}
    {e₀₁ : Edge x₀ x₁} {f₀₁ : Edge y₀ y₁}
    {e₁₂ : Edge x₁ x₂} {f₁₂ : Edge y₁ y₂}
    {e₀₂ : Edge x₀ x₂} {f₀₂ : Edge y₀ y₂}
    (c : CompStruct e₀₁ e₁₂ e₀₂)
    (h₀₁ : e₀₁.edge = f₀₁.edge)
    (h₁₂ : e₁₂.edge = f₁₂.edge)
    (h₀₂ : e₀₂.edge = f₀₂.edge) :
    CompStruct f₀₁ f₁₂ f₀₂ where
  simplex := c.simplex
  d₂ := c.d₂.trans h₀₁
  d₀ := c.d₀.trans h₁₂
  d₁ := c.d₁.trans h₀₂

/-- When the underlying simplex of a `CompStruct` belongs to a subcomplex,
this is the induced `CompStruct` for the corresponding edges of the subcomplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f26a46eee1235bda793be529a7c9b5e31e9c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
