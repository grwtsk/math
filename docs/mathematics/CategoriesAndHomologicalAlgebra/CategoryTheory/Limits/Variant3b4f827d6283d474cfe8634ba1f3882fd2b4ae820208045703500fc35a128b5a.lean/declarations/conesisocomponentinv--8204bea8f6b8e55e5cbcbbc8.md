# conesIsoComponentInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4b74d729fb24bbf2846944c56e7cd10208f200959e21cf02c9f78040f9dc0f7",
  "kind": "def",
  "lexical_name": "conesIsoComponentInv",
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
  "slug": "conesisocomponentinv--8204bea8f6b8e55e5cbcbbc8",
  "source": {
    "blob": "d5a32f56cae9847081509805998b7a7e1bc13b5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8204bea8f6b8e55e5cbcbbc89b029caaa552afaa7d9685a8f077650ae8d44ced",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4b74d729fb24bbf2846944c56e7cd10208f200959e21cf02c9f78040f9dc0f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conesIsoComponentInv {J : Type u} [Category.{v} J] {K : J ⥤ D} (X : Cᵒᵖ)
    (t : ((cones J C).obj (K ⋙ G)).obj X) : (Functor.op F ⋙ (cones J D).obj K).obj X where
  app j := (adj.homEquiv (unop X) (K.obj j)).symm (t.app j)
  naturality j j' f := by
    erw [← adj.homEquiv_naturality_right_symm, ← t.naturality, Category.id_comp, Category.id_comp]

end ArbitraryUniverse

variable {C : Type u₁} [Category.{v₀} C] {D : Type u₂} [Category.{v₀} D] {F : C ⥤ D} {G : D ⥤ C}
  (adj : F ⊣ G)

attribute [local simp] homEquiv_unit homEquiv_counit

-- Note: this is natural in K, but we do not yet have the tools to formulate that.
/-- When `F ⊣ G`,
the functor associating to each `Y` the cocones over `K ⋙ F` with cone point `Y`
is naturally isomorphic to
the functor associating to each `Y` the cocones over `K` with cone point `G.obj Y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant3b4f827d6283d474cfe8634ba1f3882fd2b4ae820208045703500fc35a128b5a.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a32f56cae9847081509805998b7a7e1bc13b5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
