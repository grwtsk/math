# mapBicone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8263c67c6e2b1082516e9c3d3b862f9c2e4f1ce937bc4ac4b9c4e9f6923fcc4f",
  "kind": "def",
  "lexical_name": "mapBicone",
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
  "slug": "mapbicone--8745fb78b5c450bb5d9b0eea",
  "source": {
    "blob": "8e774df7bec6b9e5d9e079c2d71f6eb45d53e9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8745fb78b5c450bb5d9b0eea0712b10354ec79ed0701609c18aae9232f7c86e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8263c67c6e2b1082516e9c3d3b862f9c2e4f1ce937bc4ac4b9c4e9f6923fcc4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapBicone {f : J → C} (b : Bicone f) : Bicone (F.obj ∘ f) where
  pt := F.obj b.pt
  π j := F.map (b.π j)
  ι j := F.map (b.ι j)
  ι_π j j' := by
    rw [← F.map_comp]
    split_ifs with h
    · subst h
      simp only [bicone_ι_π_self, CategoryTheory.Functor.map_id, eqToHom_refl]; dsimp
    · rw [bicone_ι_π_ne _ h, F.map_zero]
#align category_theory.functor.map_bicone CategoryTheory.Functor.mapBicone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant92b0e8fd539607f8203c1ea3707a81b0ef553a67a0e7a1def03645ea1adcace1.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e774df7bec6b9e5d9e079c2d71f6eb45d53e9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
