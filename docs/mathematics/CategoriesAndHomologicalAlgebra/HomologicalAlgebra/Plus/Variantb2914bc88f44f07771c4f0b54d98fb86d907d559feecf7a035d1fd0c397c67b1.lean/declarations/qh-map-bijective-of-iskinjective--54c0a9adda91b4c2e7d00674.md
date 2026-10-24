# Qh_map_bijective_of_isKInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0930a26-017d-e539-81c2-5ae1d7d6894d",
  "kind": "lemma",
  "lexical_name": "Qh_map_bijective_of_isKInjective",
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
  "slug": "qh-map-bijective-of-iskinjective--54c0a9adda91b4c2e7d00674",
  "source": {
    "blob": "0eb2739382f8a290f27a6d8df03a0c29ccb30f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c0a9adda91b4c2e7d00674a3338d7e187b78322fc2ecf17e457f8a702f1a7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0930a26-017d-e539-81c2-5ae1d7d6894d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Qh_map_bijective_of_isKInjective (K L : HomotopyCategory.Plus C)
    (_ : CochainComplex.IsKInjective L.1.as) : Function.Bijective (Qh.map : (K ⟶ L) → _) := by
  have := CochainComplex.IsKInjective.Qh_map_bijective K.1 L.1.as
  rw [← Function.Bijective.of_comp_iff _
    ((HomotopyCategory.Plus.fullyFaithfulι C).map_bijective _ _)] at this
  rwa [← Function.Bijective.of_comp_iff' (t.plus.fullyFaithfulι.map_bijective _ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb2739382f8a290f27a6d8df03a0c29ccb30f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
