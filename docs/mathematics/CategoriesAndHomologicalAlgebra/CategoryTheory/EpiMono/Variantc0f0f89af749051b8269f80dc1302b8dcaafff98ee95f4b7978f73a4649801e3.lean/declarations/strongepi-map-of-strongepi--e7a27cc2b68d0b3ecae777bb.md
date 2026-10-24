# strongEpi_map_of_strongEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bc4a4a5-0147-c881-ed50-ac13b0598cc5",
  "kind": "theorem",
  "lexical_name": "strongEpi_map_of_strongEpi",
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
  "slug": "strongepi-map-of-strongepi--e7a27cc2b68d0b3ecae777bb",
  "source": {
    "blob": "8de162ee1b50a7f4ace513b33570ddd7060d8f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7a27cc2b68d0b3ecae777bb74dec55c45145b3e72c1f2c58c9f01cffe9a9ec4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc4a4a5-0147-c881-ed50-ac13b0598cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongEpi_map_of_strongEpi (adj : F ⊣ F') (f : A ⟶ B) [h₁ : F'.PreservesMonomorphisms]
    [h₂ : F.PreservesEpimorphisms] [StrongEpi f] : StrongEpi (F.map f) :=
  ⟨inferInstance, fun X Y Z => by
    intro
    rw [adj.hasLiftingProperty_iff]
    infer_instance⟩
#align category_theory.adjunction.strong_epi_map_of_strong_epi CategoryTheory.Adjunction.strongEpi_map_of_strongEpi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de162ee1b50a7f4ace513b33570ddd7060d8f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
