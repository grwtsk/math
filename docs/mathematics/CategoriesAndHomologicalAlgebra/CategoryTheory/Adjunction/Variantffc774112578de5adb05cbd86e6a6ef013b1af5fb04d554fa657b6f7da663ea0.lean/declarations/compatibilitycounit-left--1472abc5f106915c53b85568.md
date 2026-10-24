# compatibilityCounit_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:366605c4-7982-f93d-8470-7273bafc1456",
  "kind": "lemma",
  "lexical_name": "compatibilityCounit_left",
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
  "slug": "compatibilitycounit-left--1472abc5f106915c53b85568",
  "source": {
    "blob": "6dc822ffe537245acf22e03b89b52f1b2f16b85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1472abc5f106915c53b8556822b51e861f74b6aece042182aae05ab24b20fcd2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:366605c4-7982-f93d-8470-7273bafc1456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityCounit_left (h : CompatibilityCounit adj e₁ e₂) (X : C) :
    e₁.hom.app X = F.map ((adj.unit.app X)⟦a⟧') ≫ F.map (e₂.inv.app _) ≫ adj.counit.app _ := by
  have := h (F.obj X)
  rw [← cancel_epi (F.map (e₂.inv.app _)), ← assoc, ← F.map_comp, Iso.inv_hom_id_app, F.map_id,
    id_comp] at this
  rw [this]
  erw [e₁.hom.naturality_assoc]
  rw [Functor.comp_map, ← Functor.map_comp, left_triangle_components]
  simp only [Functor.comp_obj, Functor.id_obj, Functor.map_id, comp_id]

/-- Given an adjunction `adj : F ⊣ G`, `a` in `A` and commutation isomorphisms
`e₁ : shiftFunctor C a ⋙ F ≅ F ⋙ shiftFunctor D a` and
`e₂ : shiftFunctor D a ⋙ G ≅ G ⋙ shiftFunctor C a`, if `e₁` and `e₂` are compatible with the
unit of the adjunction `adj`, then `e₁` uniquely determines `e₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantffc774112578de5adb05cbd86e6a6ef013b1af5fb04d554fa657b6f7da663ea0.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc822ffe537245acf22e03b89b52f1b2f16b85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
