# completeDistinguishedTriangleMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a5a5dc52fccb258967b9ed13d0aa0267f50984a798595d50b0abfc36d893f05",
  "kind": "def",
  "lexical_name": "completeDistinguishedTriangleMorphism",
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
  "slug": "completedistinguishedtrianglemorphism--947d82e2d05ed4bbb1f31ca7",
  "source": {
    "blob": "553fd66efc6ca0c67586f9f15a965fe370477a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 537,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:947d82e2d05ed4bbb1f31ca7a871c15def3d9f908f535aa42d7c2a27c8e5bd00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a5a5dc52fccb258967b9ed13d0aa0267f50984a798595d50b0abfc36d893f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeDistinguishedTriangleMorphism (T₁ T₂ : Triangle C)
    (hT₁ : T₁ ∈ distTriang C) (hT₂ : T₂ ∈ distTriang C)
    (a : T₁.obj₁ ⟶ T₂.obj₁) (b : T₁.obj₂ ⟶ T₂.obj₂) (comm : T₁.mor₁ ≫ b = a ≫ T₂.mor₁) :
    T₁ ⟶ T₂ :=
    have h := complete_distinguished_triangle_morphism _ _ hT₁ hT₂ a b comm
    { hom₁ := a
      hom₂ := b
      hom₃ := h.choose
      comm₁ := comm
      comm₂ := h.choose_spec.1
      comm₃ := h.choose_spec.2 }

/-- A product of distinguished triangles is distinguished -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant2cc70a2c494a0ea352afacba1c91c9110bdfbf31f23301fabc8d0805cd0154a6.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553fd66efc6ca0c67586f9f15a965fe370477a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
