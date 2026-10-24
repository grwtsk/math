# costructuredArrowYonedaEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f841fabb00e1c0deb4fdcff52a8525696238115282530197713f382e8e7275b",
  "kind": "def",
  "lexical_name": "costructuredArrowYonedaEquivalence",
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
  "slug": "costructuredarrowyonedaequivalence--df964a9745ba4f06c805310c",
  "source": {
    "blob": "8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df964a9745ba4f06c805310cefa5057905f1c2abacf17ea23381d432456b65b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f841fabb00e1c0deb4fdcff52a8525696238115282530197713f382e8e7275b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowYonedaEquivalence (F : Cᵒᵖ ⥤ Type v) :
    F.Elementsᵒᵖ ≌ CostructuredArrow yoneda F where
  functor := toCostructuredArrow F
  inverse := (fromCostructuredArrow F).rightOp
  unitIso :=
    NatIso.ofComponents
      (fun X ↦ Iso.op (CategoryOfElements.isoMk _ _ (Iso.refl _) (by simp))) (by
        rintro ⟨x⟩ ⟨y⟩ ⟨f : y ⟶ x⟩
        exact Quiver.Hom.unop_inj (by ext; simp))
  counitIso := NatIso.ofComponents (fun X ↦ CostructuredArrow.isoMk (Iso.refl _))

/-- The equivalence `(-.Elements)ᵒᵖ ≅ (yoneda, -)` of is actually a natural isomorphism of functors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variant89a56a398999d82bdfe700bb9ed3df27520cf8af2327906203d73d079c7f10f2.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bcaa8f2d9f758a95f0f7a37b33b5fcd021ba2c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
