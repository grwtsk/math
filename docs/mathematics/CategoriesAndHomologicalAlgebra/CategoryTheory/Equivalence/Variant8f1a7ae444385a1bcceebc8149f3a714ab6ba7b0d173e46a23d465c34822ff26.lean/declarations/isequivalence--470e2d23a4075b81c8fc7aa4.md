# IsEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0b0378c52f166c43efed1593af0cb9f404bf6032c97e13c56bcff530e869f80",
  "kind": "class",
  "lexical_name": "IsEquivalence",
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
  "slug": "isequivalence--470e2d23a4075b81c8fc7aa4",
  "source": {
    "blob": "e23128da1e56bec6bc18a60bcde57d813232f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 481,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:470e2d23a4075b81c8fc7aa484090c173b67f2a85b116aa176b352919809919b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0b0378c52f166c43efed1593af0cb9f404bf6032c97e13c56bcff530e869f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsEquivalence (F : C ⥤ D) where mk' ::
  /-- The inverse functor to `F` -/
  inverse : D ⥤ C
  /-- Composition `F ⋙ inverse` is isomorphic to the identity. -/
  unitIso : 𝟭 C ≅ F ⋙ inverse
  /-- Composition `inverse ⋙ F` is isomorphic to the identity. -/
  counitIso : inverse ⋙ F ≅ 𝟭 D
  /-- The natural isomorphisms are inverse. -/
  functor_unitIso_comp :
    ∀ X : C,
      F.map ((unitIso.hom : 𝟭 C ⟶ F ⋙ inverse).app X) ≫ counitIso.hom.app (F.obj X) =
        𝟙 (F.obj X) := by
    aesop_cat
#align category_theory.is_equivalence CategoryTheory.IsEquivalence
#align category_theory.is_equivalence.unit_iso CategoryTheory.IsEquivalence.unitIso
#align category_theory.is_equivalence.counit_iso CategoryTheory.IsEquivalence.counitIso
#align category_theory.is_equivalence.functor_unit_iso_comp CategoryTheory.IsEquivalence.functor_unitIso_comp

attribute [reassoc (attr := simp)] IsEquivalence.functor_unitIso_comp

namespace IsEquivalence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23128da1e56bec6bc18a60bcde57d813232f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
