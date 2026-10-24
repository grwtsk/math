# Comon_Class

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e99f52278b59e18e5b3bf10d3c1ec6a760ffae68f93937e2ca87166698b0c54a",
  "kind": "class",
  "lexical_name": "Comon_Class",
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
  "slug": "comon-class--0a5ca59f62f244b1bacb4719",
  "source": {
    "blob": "5c89a845f6b09a60f095d0357799ada9500c37b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a5ca59f62f244b1bacb4719e4c0e8cbab8178a2a2d31f187027af1668e64651",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e99f52278b59e18e5b3bf10d3c1ec6a760ffae68f93937e2ca87166698b0c54a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Comon_Class (X : C) where
  /-- The counit morphism of a comonoid object. -/
  counit : X ⟶ 𝟙_ C
  /-- The comultiplication morphism of a comonoid object. -/
  comul : X ⟶ X ⊗ X
  /- For the names of the conditions below, the unprimed names are reserved for the version where
  the argument `X` is explicit. -/
  counit_comul' : comul ≫ counit ▷ X = (λ_ X).inv := by aesop_cat
  comul_counit' : comul ≫ X ◁ counit = (ρ_ X).inv := by aesop_cat
  comul_assoc' : comul ≫ X ◁ comul = comul ≫ (comul ▷ X) ≫ (α_ X X X).hom := by aesop_cat

namespace Comon_Class

@[inherit_doc] scoped notation "Δ" => Comon_Class.comul
@[inherit_doc] scoped notation "Δ["M"]" => Comon_Class.comul (X := M)
@[inherit_doc] scoped notation "ε" => Comon_Class.counit
@[inherit_doc] scoped notation "ε["M"]" => Comon_Class.counit (X := M)

/- The simp attribute is reserved for the unprimed versions. -/
attribute [reassoc] counit_comul' comul_counit' comul_assoc'

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c89a845f6b09a60f095d0357799ada9500c37b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
