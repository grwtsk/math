# Biproduct.columnNonzeroOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:740cbf46d69d7af872a6c497d70874dcf4b02b7178ee5a2fdfca7af056b1fcd4",
  "kind": "def",
  "lexical_name": "Biproduct.columnNonzeroOfIso",
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
  "slug": "biproduct-columnnonzeroofiso--f94054a00f2f9e6b6f9d1fbc",
  "source": {
    "blob": "8ef682df07d94bbafe66a33ce657e071f5563afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 861,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f94054a00f2f9e6b6f9d1fbc81b5f7aeb2722d96fca29c2878877da9f8795699",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:740cbf46d69d7af872a6c497d70874dcf4b02b7178ee5a2fdfca7af056b1fcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Biproduct.columnNonzeroOfIso {σ τ : Type} [Fintype τ] {S : σ → C} [HasBiproduct S] {T : τ → C}
    [HasBiproduct T] (s : σ) (nz : 𝟙 (S s) ≠ 0) (f : ⨁ S ⟶ ⨁ T) [IsIso f] :
    Trunc (Σ' t : τ, biproduct.ι S s ≫ f ≫ biproduct.π T t ≠ 0) := by
  classical
    apply truncSigmaOfExists
    have t := Biproduct.column_nonzero_of_iso'.{v} s f
    by_contra h
    simp only [not_exists_not] at h
    exact nz (t h)

section Preadditive

variable {D : Type u'} [Category.{v'} D] [Preadditive.{v'} D]
variable (F : C ⥤ D) [PreservesZeroMorphisms F]

namespace Limits

section Finite

variable {J : Type*} [Finite J]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- A functor between preadditive categories that preserves (zero morphisms and) finite biproducts
preserves finite products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant6f364f7630c68909661a7be3cc770352335598509daced9705cc2bfc84e297a4.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef682df07d94bbafe66a33ce657e071f5563afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
