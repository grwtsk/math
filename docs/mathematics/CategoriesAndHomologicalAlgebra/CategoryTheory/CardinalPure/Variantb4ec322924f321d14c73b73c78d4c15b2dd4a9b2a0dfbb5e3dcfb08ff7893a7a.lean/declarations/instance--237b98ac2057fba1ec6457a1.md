# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cd524dfba0ca69b4f2f3413d2e8f5c9bd16273d5578173f3db0d6a11c5ca26f",
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
  "slug": "instance--237b98ac2057fba1ec6457a1",
  "source": {
    "blob": "3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:237b98ac2057fba1ec6457a11be53b79520b0a75f3e4cf9923deefca0a482716",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cd524dfba0ca69b4f2f3413d2e8f5c9bd16273d5578173f3db0d6a11c5ca26f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsCardinalPure κ f] [IsCardinalPure κ g] :
    IsCardinalPure κ (f ≫ g) where
  exists_of_commSq {X' Y' t l r _ _} sq := by
    obtain ⟨ρ, hρ⟩ := IsCardinalPure.exists_of_commSq κ
      (show CommSq t (l ≫ f) r g from ⟨by simpa using sq.w⟩)
    exact IsCardinalPure.exists_of_commSq κ (CommSq.mk hρ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalPure/Variantb4ec322924f321d14c73b73c78d4c15b2dd4a9b2a0dfbb5e3dcfb08ff7893a7a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888b6569a56ee30e9a3a46f7dfa0d131bf93e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
