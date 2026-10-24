# Faithful.div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cfb0ae394275d1c35f82a1dfce232841660a281c02307b422637abfab1d567f",
  "kind": "def",
  "lexical_name": "Faithful.div",
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
  "slug": "faithful-div--da340e9389c0a809757b7b52",
  "source": {
    "blob": "1eda5303287b88592e7b3f85f31bc8bdbd861565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 297,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da340e9389c0a809757b7b52952047cb83cc1b82111760d53d8f97815e0b593b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cfb0ae394275d1c35f82a1dfce232841660a281c02307b422637abfab1d567f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Faithful.div (F : C ⥤ E) (G : D ⥤ E) [G.Faithful] (obj : C → D)
    (h_obj : ∀ X, G.obj (obj X) = F.obj X) (map : ∀ {X Y}, (X ⟶ Y) → (obj X ⟶ obj Y))
    (h_map : ∀ {X Y} {f : X ⟶ Y}, HEq (G.map (map f)) (F.map f)) : C ⥤ D :=
  { obj, map := @map,
    map_id := by
      intros X
      apply G.map_injective
      apply eq_of_heq
      trans F.map (𝟙 X)
      · exact h_map
      · rw [F.map_id, G.map_id, h_obj X]
    map_comp := by
      intros X Y Z f g
      refine G.map_injective <| eq_of_heq <| h_map.trans ?_
      simp only [Functor.map_comp]
      convert HEq.refl (F.map f ≫ F.map g)
      all_goals { first | apply h_obj | apply h_map } }

-- This follows immediately from `Functor.hext` (`Functor.hext h_obj @h_map`),
-- but importing `CategoryTheory.EqToHom` causes an import loop:
-- CategoryTheory.EqToHom → CategoryTheory.Opposites →
-- CategoryTheory.Equivalence → CategoryTheory.FullyFaithful
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eda5303287b88592e7b3f85f31bc8bdbd861565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
