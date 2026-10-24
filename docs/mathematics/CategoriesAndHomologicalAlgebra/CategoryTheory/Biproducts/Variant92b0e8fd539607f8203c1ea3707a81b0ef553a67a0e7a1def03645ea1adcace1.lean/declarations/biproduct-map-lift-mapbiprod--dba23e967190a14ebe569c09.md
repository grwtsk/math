# biproduct.map_lift_mapBiprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:896015ba-cb94-88d4-5dbc-a3cc8361e257",
  "kind": "theorem",
  "lexical_name": "biproduct.map_lift_mapBiprod",
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
  "slug": "biproduct-map-lift-mapbiprod--dba23e967190a14ebe569c09",
  "source": {
    "blob": "8e774df7bec6b9e5d9e079c2d71f6eb45d53e9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 425,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba23e967190a14ebe569c098cf2b8aaaadf2d1a416a85102973268559c52f47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:896015ba-cb94-88d4-5dbc-a3cc8361e257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biproduct.map_lift_mapBiprod (g : ∀ j, W ⟶ f j) :
    -- Porting note: twice we need haveI to tell Lean about hasBiproduct_of_preserves F f
    haveI : HasBiproduct fun j => F.obj (f j) := hasBiproduct_of_preserves F f
    F.map (biproduct.lift g) ≫ (F.mapBiproduct f).hom = biproduct.lift fun j => F.map (g j) := by
  ext j
  dsimp only [Function.comp]
  haveI : HasBiproduct fun j => F.obj (f j) := hasBiproduct_of_preserves F f
  simp only [mapBiproduct_hom, Category.assoc, biproduct.lift_π, ← F.map_comp]
#align category_theory.limits.biproduct.map_lift_map_biprod CategoryTheory.Limits.biproduct.map_lift_mapBiprod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e774df7bec6b9e5d9e079c2d71f6eb45d53e9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
