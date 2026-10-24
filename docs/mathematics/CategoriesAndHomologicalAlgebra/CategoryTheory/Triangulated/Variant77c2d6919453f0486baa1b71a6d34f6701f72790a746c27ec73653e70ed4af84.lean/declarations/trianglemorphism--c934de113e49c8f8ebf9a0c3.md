# triangleMorphism₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3cd7a71d653477a2fe995957c112b69f74e6b3b0beebaf2bcf2593b97696fd4",
  "kind": "def",
  "lexical_name": "triangleMorphism₁",
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
  "slug": "trianglemorphism--c934de113e49c8f8ebf9a0c3",
  "source": {
    "blob": "e3bbbbbb6bdbd2ed4b9974b9ad88dbe9c23307b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 268,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c934de113e49c8f8ebf9a0c3a43f6e3014adff2f52bd4c60a07a5ed10f34ed01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3cd7a71d653477a2fe995957c112b69f74e6b3b0beebaf2bcf2593b97696fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleMorphism₁ : Triangle.mk v₁₂ u₁₂ w₁₂ ⟶ Triangle.mk v₁₃ u₁₃ w₁₃ where
  hom₁ := h.m₁
  hom₂ := 𝟙 X₁
  hom₃ := u₂₃
  comm₁ := by
    dsimp
    rw [comp_id, h.comm₁]
  comm₂ := by
    dsimp
    rw [id_comp, comm]
  comm₃ := by
    dsimp
    rw [h.comm₂]

/-- The second morphism of triangles given by an `Octahedron'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bbbbbb6bdbd2ed4b9974b9ad88dbe9c23307b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
