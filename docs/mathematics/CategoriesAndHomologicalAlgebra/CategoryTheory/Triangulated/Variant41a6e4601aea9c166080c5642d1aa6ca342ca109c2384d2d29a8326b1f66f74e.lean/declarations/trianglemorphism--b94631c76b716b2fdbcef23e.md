# triangleMorphism₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0207e57a8982b999dfab68d937cbbe99fc17e90633171d39413da9304e5ff06",
  "kind": "def",
  "lexical_name": "triangleMorphism₂",
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
  "slug": "trianglemorphism--b94631c76b716b2fdbcef23e",
  "source": {
    "blob": "280e67d6b6520d7a1f72f2fb0987807459a6fff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94631c76b716b2fdbcef23ec0598f05e584eeeb86fd5dbcf475285889d02185",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0207e57a8982b999dfab68d937cbbe99fc17e90633171d39413da9304e5ff06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleMorphism₂ : Triangle.mk u₁₃ v₁₃ w₁₃ ⟶ Triangle.mk u₂₃ v₂₃ w₂₃ where
  hom₁ := u₁₂
  hom₂ := 𝟙 X₃
  hom₃ := h.m₃
  comm₁ := by
    dsimp
    rw [comp_id, comm]
  comm₂ := by
    dsimp
    rw [id_comp, h.comm₃]
  comm₃ := h.comm₄


variable (u₁₂ u₁₃ u₂₃ comm h₁₂ h₁₃ h₂₃)

set_option backward.defeqAttrib.useBackward true in
/-- When two diagrams are isomorphic, an octahedron for one gives an octahedron for the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `280e67d6b6520d7a1f72f2fb0987807459a6fff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
