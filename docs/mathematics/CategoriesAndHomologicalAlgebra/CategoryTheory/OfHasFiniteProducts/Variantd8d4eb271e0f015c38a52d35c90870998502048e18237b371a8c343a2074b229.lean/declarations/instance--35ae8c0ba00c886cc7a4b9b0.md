# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1e0a31317f6d4e2fd55a66794687a881cbce63a2221f21941080fae42b97d07",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--35ae8c0ba00c886cc7a4b9b0",
  "source": {
    "blob": "46b71b221fa816d2af4882d05695669c96b56305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35ae8c0ba00c886cc7a4b9b02cb6d5b742bed724a8f25f309fdc71090f9e1ecf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1e0a31317f6d4e2fd55a66794687a881cbce63a2221f21941080fae42b97d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : F.OplaxMonoidal where
  η' := terminalComparison F
  δ' X Y := prodComparison F X Y
  δ'_natural_left _ _ := by simp [prodComparison_natural]
  δ'_natural_right _ _ := by simp [prodComparison_natural]
  oplax_associativity' _ _ _ := by
    dsimp
    ext
    · dsimp
      simp only [Category.assoc, prod.map_fst, Category.comp_id, prodComparison_fst, ←
        Functor.map_comp]
      erw [associator_hom_fst, associator_hom_fst]
      simp
    · dsimp
      simp only [Category.assoc, prod.map_snd, prodComparison_snd_assoc, prodComparison_fst,
        ← Functor.map_comp]
      erw [associator_hom_snd_fst, associator_hom_snd_fst]
      simp
    · dsimp
      simp only [Category.assoc, prod.map_snd, prodComparison_snd_assoc, prodComparison_snd, ←
        Functor.map_comp]
      erw [associator_hom_snd_snd, associator_hom_snd_snd]
      simp
  oplax_left_unitality' _ := by ext; simp [← Functor.map_comp]
  oplax_right_unitality' _ := by ext; simp [← Functor.map_comp]

open Functor.OplaxMonoidal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variantd8d4eb271e0f015c38a52d35c90870998502048e18237b371a8c343a2074b229.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b71b221fa816d2af4882d05695669c96b56305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
