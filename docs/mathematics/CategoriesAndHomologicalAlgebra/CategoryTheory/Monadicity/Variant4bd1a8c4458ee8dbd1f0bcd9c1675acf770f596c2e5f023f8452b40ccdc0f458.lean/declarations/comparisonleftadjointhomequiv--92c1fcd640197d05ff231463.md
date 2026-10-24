# comparisonLeftAdjointHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd81bc2f62ab8d357cb34c34e123c85b690a1bb0a5cfdfbb6069307c82b975e5",
  "kind": "def",
  "lexical_name": "comparisonLeftAdjointHomEquiv",
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
  "slug": "comparisonleftadjointhomequiv--92c1fcd640197d05ff231463",
  "source": {
    "blob": "d10ae4a40e74ca919a38e531eb54149c0556d11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92c1fcd640197d05ff231463194db948687ab89315d3d5e31702e9e751531af1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd81bc2f62ab8d357cb34c34e123c85b690a1bb0a5cfdfbb6069307c82b975e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparisonLeftAdjointHomEquiv (A : (adj).toMonad.Algebra) (B : D)
    [HasCoequalizer ((F).map A.a) ((adj).counit.app ((F).obj A.A))] :
    (comparisonLeftAdjointObj A ⟶ B) ≃ (A ⟶ (comparison adj).obj B) :=
  calc
    (comparisonLeftAdjointObj A ⟶ B) ≃ { f : (F).obj A.A ⟶ B // _ } :=
      Cofork.IsColimit.homIso (colimit.isColimit _) B
    _ ≃ { g : A.A ⟶ G.obj B // G.map ((F).map g) ≫ G.map ((adj).counit.app B) = A.a ≫ g } := by
      refine' ((adj).homEquiv _ _).subtypeEquiv _
      intro f
      rw [← ((adj).homEquiv _ _).injective.eq_iff, Adjunction.homEquiv_naturality_left,
        (adj).homEquiv_unit, (adj).homEquiv_unit, G.map_comp]
      dsimp
      rw [(adj).right_triangle_components_assoc, ← G.map_comp, (F).map_comp, Category.assoc,
        (adj).counit_naturality, (adj).left_triangle_components_assoc]
      apply eq_comm
    _ ≃ (A ⟶ (comparison adj).obj B) :=
      { toFun := fun g =>
          { f := _
            h := g.prop }
        invFun := fun f => ⟨f.f, f.h⟩
        left_inv := fun g => by ext; rfl
        right_inv := fun f => by ext; rfl }
#align category_theory.monad.monadicity_internal.comparison_left_adjoint_hom_equiv CategoryTheory.Monad.MonadicityInternal.comparisonLeftAdjointHomEquiv

/-- Construct the adjunction to the comparison functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10ae4a40e74ca919a38e531eb54149c0556d11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
