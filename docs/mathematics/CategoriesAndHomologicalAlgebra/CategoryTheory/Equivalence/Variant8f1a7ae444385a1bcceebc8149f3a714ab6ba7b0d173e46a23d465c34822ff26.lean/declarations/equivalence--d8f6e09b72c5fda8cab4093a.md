# Equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:259403f7cb64dfaefeb3b8b76127ce8bef67233adade70d99535bb7a529647b5",
  "kind": "structure",
  "lexical_name": "Equivalence",
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
  "slug": "equivalence--d8f6e09b72c5fda8cab4093a",
  "source": {
    "blob": "e23128da1e56bec6bc18a60bcde57d813232f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8f6e09b72c5fda8cab4093a746e019a033e1e1ebe516306811d464a4f117534",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:259403f7cb64dfaefeb3b8b76127ce8bef67233adade70d99535bb7a529647b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Equivalence (C : Type u₁) (D : Type u₂) [Category.{v₁} C] [Category.{v₂} D] where mk' ::
  /-- A functor in one direction -/
  functor : C ⥤ D
  /-- A functor in the other direction -/
  inverse : D ⥤ C
  /-- The composition `functor ⋙ inverse` is isomorphic to the identity -/
  unitIso : 𝟭 C ≅ functor ⋙ inverse
  /-- The composition `inverse ⋙ functor` is also isomorphic to the identity -/
  counitIso : inverse ⋙ functor ≅ 𝟭 D
  /-- The natural isomorphisms compose to the identity. -/
  functor_unitIso_comp :
    ∀ X : C, functor.map (unitIso.hom.app X) ≫ counitIso.hom.app (functor.obj X) =
      𝟙 (functor.obj X) := by aesop_cat
#align category_theory.equivalence CategoryTheory.Equivalence
#align category_theory.equivalence.unit_iso CategoryTheory.Equivalence.unitIso
#align category_theory.equivalence.counit_iso CategoryTheory.Equivalence.counitIso
#align category_theory.equivalence.functor_unit_iso_comp CategoryTheory.Equivalence.functor_unitIso_comp

/-- We infix the usual notation for an equivalence -/
infixr:10 " ≌ " => Equivalence

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace Equivalence

/-- The unit of an equivalence of categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23128da1e56bec6bc18a60bcde57d813232f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
