# triangleMorphism₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c343d5312bb0b31c3a75171cceeda8391b968c59bdd6b7cae518be73492991ad",
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
  "slug": "trianglemorphism--affb543d8d48faa1e5ba39ea",
  "source": {
    "blob": "de53d775b36856b42d61d009c87fdcc32618bacb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:affb543d8d48faa1e5ba39ea63acd868c26b7dbe5ca93a5d3d50a1e79db89060",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c343d5312bb0b31c3a75171cceeda8391b968c59bdd6b7cae518be73492991ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleMorphism₂ : Triangle.mk u₁₃ v₁₃ w₁₃ ⟶ Triangle.mk u₂₃ v₂₃ w₂₃
    where
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
#align category_theory.triangulated.octahedron.triangle_morphism₂ CategoryTheory.Triangulated.Octahedron.triangleMorphism₂

/- TODO (@joelriou): show that in order to verify the existence of an octahedron, one may
replace the composable maps `u₁₂` and `u₂₃` by any isomorphic composable maps
and the given "cones" of `u₁₂`, `u₂₃`, `u₁₃` by any choice of cones. -/
end Octahedron

end Triangulated

open Triangulated

/-- A triangulated category is a pretriangulated category which satisfies
the octahedron axiom (TR 4), see https://stacks.math.columbia.edu/tag/05QK -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0f8f87498c4c3a0b883e8feb288b2c216a389ca16e683b4d30ab8943ba411d39.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de53d775b36856b42d61d009c87fdcc32618bacb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
